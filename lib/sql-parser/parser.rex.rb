module SQLParser

  class Parser < Racc::Parser
  
    class ScanError < StandardError ; end

    attr_reader :lineno
    attr_reader :filename

    def scan_setup ; end

    def action &block
      yield
    end

    def scan_str( str )
      scan_evaluate  str
      do_parse
    end

    def load_file( filename )
      @filename = filename
      open(filename, "r") do |f|
        scan_evaluate  f.read
      end
    end

    def scan_file( filename )
      load_file  filename
      do_parse
    end

    def next_token
      @rex_tokens.shift
    end

    def scan_evaluate( str )
      scan_setup
      @rex_tokens = []
      @lineno  =  1
      ss = StringScanner.new(str)
      state = nil
      until ss.eos?
        text = ss.peek(1)
        @lineno  +=  1  if text == "\n"
        case state
        when nil
          case
          when (text = ss.scan(/\"[0-9]+-[0-9]+-[0-9]+\"/i))
             @rex_tokens.push action { [:date_string, Date.parse(text)] }

          when (text = ss.scan(/\'[0-9]+-[0-9]+-[0-9]+\'/i))
             @rex_tokens.push action { [:date_string, Date.parse(text)] }

          when (text = ss.scan(/\'/i))
             @rex_tokens.push action { state = :STRS;  [:quote, text] }

          when (text = ss.scan(/\"/i))
             @rex_tokens.push action { state = :STRD;  [:quote, text] }

          when (text = ss.scan(/[0-9]+/i))
             @rex_tokens.push action { [:unsigned_integer, text.to_i] }

          when (text = ss.scan(/\s+/i))
            ;

          when (text = ss.scan(/SELECT/i))
             @rex_tokens.push action { [:SELECT, text] }

          when (text = ss.scan(/DATE/i))
             @rex_tokens.push action { [:DATE, text] }

          when (text = ss.scan(/ASC/i))
             @rex_tokens.push action { [:ASC, text] }

          when (text = ss.scan(/AS/i))
             @rex_tokens.push action { [:AS, text] }

          when (text = ss.scan(/FROM/i))
             @rex_tokens.push action { [:FROM, text] }

          when (text = ss.scan(/WHERE/i))
             @rex_tokens.push action { [:WHERE, text] }

          when (text = ss.scan(/BETWEEN/i))
             @rex_tokens.push action { [:BETWEEN, text] }

          when (text = ss.scan(/AND/i))
             @rex_tokens.push action { [:AND, text] }

          when (text = ss.scan(/NOT/i))
             @rex_tokens.push action { [:NOT, text] }

          when (text = ss.scan(/INNER/i))
             @rex_tokens.push action { [:INNER, text] }

          when (text = ss.scan(/IN/i))
             @rex_tokens.push action { [:IN, text] }

          when (text = ss.scan(/ORDER/i))
             @rex_tokens.push action { [:ORDER, text] }

          when (text = ss.scan(/OR/i))
             @rex_tokens.push action { [:OR, text] }

          when (text = ss.scan(/LIKE/i))
             @rex_tokens.push action { [:LIKE, text] }

          when (text = ss.scan(/IS/i))
             @rex_tokens.push action { [:IS, text] }

          when (text = ss.scan(/NULL/i))
             @rex_tokens.push action { [:NULL, text] }

          when (text = ss.scan(/COUNT/i))
             @rex_tokens.push action { [:COUNT, text] }

          when (text = ss.scan(/AVG/i))
             @rex_tokens.push action { [:AVG, text] }

          when (text = ss.scan(/MAX/i))
             @rex_tokens.push action { [:MAX, text] }

          when (text = ss.scan(/MIN/i))
             @rex_tokens.push action { [:MIN, text] }

          when (text = ss.scan(/SUM/i))
             @rex_tokens.push action { [:SUM, text] }

          when (text = ss.scan(/GROUP/i))
             @rex_tokens.push action { [:GROUP, text] }

          when (text = ss.scan(/BY/i))
             @rex_tokens.push action { [:BY, text] }

          when (text = ss.scan(/HAVING/i))
             @rex_tokens.push action { [:HAVING, text] }

          when (text = ss.scan(/CROSS/i))
             @rex_tokens.push action { [:CROSS, text] }

          when (text = ss.scan(/JOIN/i))
             @rex_tokens.push action { [:JOIN, text] }

          when (text = ss.scan(/ON/i))
             @rex_tokens.push action { [:ON, text] }

          when (text = ss.scan(/LEFT/i))
             @rex_tokens.push action { [:LEFT, text] }

          when (text = ss.scan(/OUTER/i))
             @rex_tokens.push action { [:OUTER, text] }

          when (text = ss.scan(/RIGHT/i))
             @rex_tokens.push action { [:RIGHT, text] }

          when (text = ss.scan(/FULL/i))
             @rex_tokens.push action { [:FULL, text] }

          when (text = ss.scan(/USING/i))
             @rex_tokens.push action { [:USING, text] }

          when (text = ss.scan(/EXISTS/i))
             @rex_tokens.push action { [:EXISTS, text] }

          when (text = ss.scan(/DESC/i))
             @rex_tokens.push action { [:DESC, text] }

          when (text = ss.scan(/CURRENT_USER/i))
             @rex_tokens.push action { [:CURRENT_USER, text] }

          when (text = ss.scan(/E/i))
             @rex_tokens.push action { [:E, text] }

          when (text = ss.scan(/<>/i))
             @rex_tokens.push action { [:not_equals_operator, text] }

          when (text = ss.scan(/!=/i))
             @rex_tokens.push action { [:not_equals_operator, text] }

          when (text = ss.scan(/=/i))
             @rex_tokens.push action { [:equals_operator, text] }

          when (text = ss.scan(/<=/i))
             @rex_tokens.push action { [:less_than_or_equals_operator, text] }

          when (text = ss.scan(/</i))
             @rex_tokens.push action { [:less_than_operator, text] }

          when (text = ss.scan(/>=/i))
             @rex_tokens.push action { [:greater_than_or_equals_operator, text] }

          when (text = ss.scan(/>/i))
             @rex_tokens.push action { [:greater_than_operator, text] }

          when (text = ss.scan(/\(/i))
             @rex_tokens.push action { [:left_paren, text] }

          when (text = ss.scan(/\)/i))
             @rex_tokens.push action { [:right_paren, text] }

          when (text = ss.scan(/\*/i))
             @rex_tokens.push action { [:asterisk, text] }

          when (text = ss.scan(/\//i))
             @rex_tokens.push action { [:solidus, text] }

          when (text = ss.scan(/\+/i))
             @rex_tokens.push action { [:plus_sign, text] }

          when (text = ss.scan(/\-/i))
             @rex_tokens.push action { [:minus_sign, text] }

          when (text = ss.scan(/\./i))
             @rex_tokens.push action { [:period, text] }

          when (text = ss.scan(/,/i))
             @rex_tokens.push action { [:comma, text] }

          when (text = ss.scan(/`\w+`/i))
             @rex_tokens.push action { [:identifier, text[1..-2]] }

          when (text = ss.scan(/\w+/i))
             @rex_tokens.push action { [:identifier, text] }

          when (text = ss.scan(/----/i))
            ;

          when (text = ss.scan(/require/i))
            ;

          else
            text = ss.string[ss.pos .. -1]
            raise  ScanError, "can not match: '" + text + "'"
          end  # if

        when :STRS
          case
          when (text = ss.scan(/\'/i))
             @rex_tokens.push action { state = nil;    [:quote, text] }

          when (text = ss.scan(/.*(?=\')/i))
             @rex_tokens.push action {                 [:character_string_literal, text.gsub("''", "'")] }

          else
            text = ss.string[ss.pos .. -1]
            raise  ScanError, "can not match: '" + text + "'"
          end  # if

        when :STRD
          case
          when (text = ss.scan(/\"/i))
             @rex_tokens.push action { state = nil;    [:quote, text] }

          when (text = ss.scan(/.*(?=\")/i))
             @rex_tokens.push action {                 [:character_string_literal, text.gsub('""', '"')] }

          else
            text = ss.string[ss.pos .. -1]
            raise  ScanError, "can not match: '" + text + "'"
          end  # if

        else
          raise  ScanError, "undefined state: '" + state.to_s + "'"
        end
           
      end  
           
    end
       
  end
     
end   