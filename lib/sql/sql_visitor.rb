module SQL
  class SQLVisitor
    def initialize
      @negated = false
    end

    def visit(node)
      node.accept(self)
    end

    def visit_Select(o)
      "SELECT #{visit_all([o.list, o.table_expression].compact).join(' ')}"
    end

    def visit_SelectList(o)
      arrayize(o.columns)
    end

    def visit_Distinct(o)
      "DISTINCT(#{visit(o.column)})"
    end

    def visit_All(o)
      '*'
    end

    def visit_TableExpression(o)
      [
        o.from_clause,
        o.where_clause,
        o.group_by_clause,
        o.having_clause
      ].compact.collect { |e| visit(e) }.join(' ')
    end

    def visit_FromClause(o)
      "FROM #{arrayize(o.tables)}"
    end

    def visit_OrderClause(o)
      "ORDER BY #{arrayize(o.columns)}"
    end

    def visit_Ascending(o)
      "#{visit(o.column)} ASC"
    end

    def visit_Descending(o)
      "#{visit(o.column)} DESC"
    end

    def visit_HavingClause(o)
      "HAVING #{visit(o.search_condition)}"
    end

    def visit_GroupByClause(o)
      "GROUP BY #{arrayize(o.columns)}"
    end

    def visit_WhereClause(o)
      "WHERE #{visit(o.search_condition)}"
    end

    def visit_Or(o)
      search_condition('OR', o)
    end

    def visit_And(o)
      search_condition('AND', o)
    end

    def visit_Is(o)
      if @negated
        "#{visit(o.left)} IS NOT #{visit(o.right)}"
      else
        "#{visit(o.left)} IS #{visit(o.right)}"
      end
    end

    def visit_Like(o)
      if @negated
        comparison('NOT LIKE', o)
      else
        comparison('LIKE', o)
      end
    end

    def visit_In(o)
      if @negated
        "#{visit(o.left)} NOT IN (#{arrayize(o.right)})"
      else
        "#{visit(o.left)} IN (#{arrayize(o.right)})"
      end
    end

    def visit_Between(o)
      if @negated
        "#{visit(o.left)} NOT BETWEEN #{visit(o.min)} AND #{visit(o.max)}"
      else
        "#{visit(o.left)} BETWEEN #{visit(o.min)} AND #{visit(o.max)}"
      end
    end

    def visit_GreaterOrEquals(o)
      comparison('>=', o)
    end

    def visit_LessOrEquals(o)
      comparison('<=', o)
    end

    def visit_Greater(o)
      comparison('>', o)
    end

    def visit_Less(o)
      comparison('<', o)
    end

    def visit_Equals(o)
      if @negated
        comparison('<>', o)
      else
        comparison('=', o)
      end
    end

    def visit_Sum(o)
      aggregate('SUM', o)
    end

    def visit_Minimum(o)
      aggregate('MIN', o)
    end

    def visit_Maximum(o)
      aggregate('MAX', o)
    end

    def visit_Average(o)
      aggregate('AVG', o)
    end

    def visit_Count(o)
      aggregate('COUNT', o)
    end

    def visit_CrossJoin(o)
      "#{visit(o.left)} CROSS JOIN #{visit(o.right)}"
    end

    def visit_InnerJoin(o)
      qualified_join('INNER', o)
    end

    def visit_LeftJoin(o)
      qualified_join('LEFT', o)
    end

    def visit_LeftOuterJoin(o)
      qualified_join('LEFT OUTER', o)
    end

    def visit_Table(o)
      o.name
    end

    def visit_QualifiedColumn(o)
      "#{o.table}.#{o.name}"
    end

    def visit_Column(o)
      o.name
    end

    def visit_As(o)
      "#{visit(o.value)} AS #{o.name}"
    end

    def visit_Multiply(o)
      arithmetic('*', o)
    end

    def visit_Divide(o)
      arithmetic('/', o)
    end

    def visit_Add(o)
      arithmetic('+', o)
    end

    def visit_Subtract(o)
      arithmetic('-', o)
    end

    def visit_Not(o)
      negate { visit(o.value) }
    end

    def visit_UnaryPlus(o)
      "+#{visit(o.value)}"
    end

    def visit_UnaryMinus(o)
      "-#{visit(o.value)}"
    end

    def visit_True(o)
      'TRUE'
    end

    def visit_False(o)
      'FALSE'
    end

    def visit_Null(o)
      'NULL'
    end

    def visit_DateTime(o)
      "'%s'" % quote(o.value.strftime('%Y-%m-%d %H:%M:%S'))
    end

    def visit_Date(o)
      "DATE '%s'" % quote(o.value.strftime('%Y-%m-%d'))
    end

    def visit_String(o)
      "'%s'" % quote(o.value)
    end

    def visit_Float(o)
      o.value.to_s
    end

    def visit_Integer(o)
      o.value.to_s
    end

    private

    def negate
      @negated = true
      yield
    ensure
      @negated = false
    end

    def quote(str)
      str

      # # FIXME
      # str.gsub("'", "\\\'")
    end

    def arithmetic(operator, o)
      search_condition(operator, o)
    end

    def comparison(operator, o)
      [visit(o.left), operator, visit(o.right)].join(' ')
    end

    def search_condition(operator, o)
      "(#{visit(o.left)} #{operator} #{visit(o.right)})"
    end

    def visit_all(nodes)
      nodes.collect { |e| visit(e) }
    end

    def arrayize(arr)
      visit_all(arr).join(', ')
    end

    def aggregate(function_name, o)
      "#{function_name}(#{visit(o.column)})"
    end

    def qualified_join(join_type, o)
      "#{visit(o.left)} #{join_type} JOIN #{visit(o.right)} ON #{visit(o.search_condition)}"
    end
  end
end
