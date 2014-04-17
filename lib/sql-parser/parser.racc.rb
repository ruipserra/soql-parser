require_relative 'parser.rex.rb'

module SQLParser

  class Parser < Racc::Parser

module_eval <<'..end lib/sql/parser.racc modeval..id637f2c9ecb', 'lib/sql/parser.racc', 312

def self.parse(sql)
  new.scan_str(sql)
end
..end lib/sql/parser.racc modeval..id637f2c9ecb

##### racc 1.4.5 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 1, 58, :_reduce_none,
 1, 59, :_reduce_none,
 2, 60, :_reduce_3,
 0, 62, :_reduce_none,
 3, 62, :_reduce_5,
 3, 63, :_reduce_6,
 1, 63, :_reduce_none,
 2, 64, :_reduce_8,
 1, 65, :_reduce_none,
 1, 65, :_reduce_10,
 0, 66, :_reduce_11,
 1, 66, :_reduce_12,
 1, 66, :_reduce_13,
 3, 68, :_reduce_14,
 1, 61, :_reduce_none,
 3, 69, :_reduce_16,
 2, 69, :_reduce_17,
 1, 70, :_reduce_18,
 1, 70, :_reduce_19,
 3, 72, :_reduce_20,
 1, 72, :_reduce_none,
 3, 73, :_reduce_22,
 2, 73, :_reduce_23,
 1, 73, :_reduce_none,
 4, 71, :_reduce_25,
 2, 75, :_reduce_26,
 3, 79, :_reduce_27,
 2, 79, :_reduce_28,
 1, 79, :_reduce_none,
 1, 79, :_reduce_none,
 1, 82, :_reduce_none,
 1, 81, :_reduce_none,
 1, 81, :_reduce_none,
 3, 83, :_reduce_34,
 4, 83, :_reduce_35,
 5, 84, :_reduce_36,
 1, 85, :_reduce_37,
 2, 85, :_reduce_38,
 1, 85, :_reduce_39,
 2, 85, :_reduce_40,
 1, 85, :_reduce_41,
 1, 85, :_reduce_42,
 2, 85, :_reduce_43,
 1, 86, :_reduce_none,
 1, 86, :_reduce_none,
 2, 87, :_reduce_46,
 4, 88, :_reduce_47,
 1, 90, :_reduce_none,
 0, 76, :_reduce_none,
 2, 76, :_reduce_50,
 0, 77, :_reduce_none,
 3, 77, :_reduce_52,
 3, 92, :_reduce_53,
 1, 92, :_reduce_none,
 1, 93, :_reduce_none,
 0, 78, :_reduce_none,
 2, 78, :_reduce_57,
 1, 95, :_reduce_none,
 6, 96, :_reduce_59,
 5, 96, :_reduce_60,
 4, 98, :_reduce_61,
 3, 98, :_reduce_62,
 1, 99, :_reduce_none,
 3, 99, :_reduce_64,
 3, 100, :_reduce_65,
 1, 100, :_reduce_none,
 4, 101, :_reduce_67,
 3, 101, :_reduce_68,
 4, 102, :_reduce_69,
 3, 102, :_reduce_70,
 2, 103, :_reduce_71,
 1, 80, :_reduce_72,
 3, 91, :_reduce_73,
 1, 91, :_reduce_none,
 1, 89, :_reduce_none,
 3, 89, :_reduce_76,
 1, 104, :_reduce_none,
 3, 104, :_reduce_78,
 2, 105, :_reduce_79,
 1, 105, :_reduce_none,
 1, 106, :_reduce_none,
 1, 107, :_reduce_none,
 3, 107, :_reduce_83,
 1, 108, :_reduce_none,
 1, 108, :_reduce_none,
 1, 108, :_reduce_none,
 1, 108, :_reduce_none,
 1, 108, :_reduce_none,
 1, 108, :_reduce_none,
 3, 109, :_reduce_90,
 3, 109, :_reduce_91,
 3, 109, :_reduce_92,
 3, 109, :_reduce_93,
 3, 109, :_reduce_94,
 3, 109, :_reduce_95,
 1, 97, :_reduce_none,
 1, 97, :_reduce_none,
 1, 110, :_reduce_none,
 1, 74, :_reduce_none,
 3, 111, :_reduce_100,
 3, 111, :_reduce_101,
 1, 111, :_reduce_none,
 3, 112, :_reduce_103,
 3, 112, :_reduce_104,
 1, 112, :_reduce_none,
 2, 113, :_reduce_106,
 1, 113, :_reduce_none,
 1, 115, :_reduce_none,
 1, 115, :_reduce_none,
 1, 115, :_reduce_none,
 3, 115, :_reduce_111,
 1, 116, :_reduce_none,
 1, 116, :_reduce_none,
 1, 118, :_reduce_none,
 1, 118, :_reduce_none,
 1, 119, :_reduce_116,
 3, 94, :_reduce_117,
 1, 94, :_reduce_none,
 1, 122, :_reduce_none,
 4, 117, :_reduce_120,
 1, 117, :_reduce_none,
 4, 123, :_reduce_122,
 4, 123, :_reduce_123,
 4, 123, :_reduce_124,
 4, 123, :_reduce_125,
 4, 123, :_reduce_126,
 1, 120, :_reduce_none,
 1, 120, :_reduce_none,
 3, 124, :_reduce_129,
 2, 124, :_reduce_130,
 2, 124, :_reduce_131,
 1, 124, :_reduce_132,
 3, 125, :_reduce_133,
 1, 126, :_reduce_none,
 1, 127, :_reduce_none,
 2, 128, :_reduce_136,
 1, 128, :_reduce_137,
 1, 114, :_reduce_138,
 1, 114, :_reduce_139,
 1, 67, :_reduce_140,
 3, 121, :_reduce_141,
 2, 121, :_reduce_142,
 1, 121, :_reduce_none,
 1, 129, :_reduce_none,
 2, 130, :_reduce_145 ]

racc_reduce_n = 146

racc_shift_n = 238

racc_action_table = [
    30,    59,    78,    42,    78,    74,    85,   118,   125,   187,
   204,    55,    56,     6,    99,   115,   205,   117,    30,   119,
   120,    42,   121,   123,   213,   210,   114,    72,   147,    17,
    72,    72,   148,    72,    58,   163,    30,    46,    48,   189,
    15,    18,    22,    26,    31,    33,    37,    17,    45,   149,
    10,    46,    48,   112,   113,    46,    48,   150,    15,    18,
    22,    26,    31,    33,    37,    17,    45,   151,    10,    30,
    75,    76,    42,    46,    48,    12,    15,    18,    22,    26,
    31,    33,    37,   110,    45,   153,    10,    30,    90,   118,
   189,   192,   155,   193,   194,   156,   157,   158,    17,   117,
    72,   119,   120,   162,   121,   123,    46,    48,   163,    15,
    18,    22,    26,    31,    33,    37,    17,    45,    30,    10,
   109,   141,   165,    72,    46,    48,   107,    15,    18,    22,
    26,    31,    33,    37,   181,    45,   182,    10,    30,   133,
    90,    42,    90,     6,     6,   102,   127,    17,    96,    90,
   188,   107,   116,    72,    70,    46,    48,    69,    15,    18,
    22,    26,    31,    33,    37,    68,    45,    17,    10,    30,
    67,    66,   189,   201,    65,    46,    48,    62,    15,    18,
    22,    26,    31,    33,    37,    60,    45,    30,    10,    57,
   189,    17,  -134,   165,    54,   -72,   201,    53,    17,   218,
    52,   221,   163,   222,   223,    51,    46,    48,   225,    15,
    18,    22,    26,    31,    33,    37,    17,    45,    30,    10,
    50,    42,   227,     6,    46,    48,   228,    15,    18,    22,
    26,    31,    33,    37,    17,    45,    72,    10,   163,     8,
     7,    30,   235,   236,   141,    72,   nil,    17,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    46,    48,   nil,    15,    18,
    22,    26,    31,    33,    37,   nil,    45,   nil,    10,   127,
    17,    30,   nil,   nil,    42,   nil,   nil,   nil,    46,    48,
   nil,    15,    18,    22,    26,    31,    33,    37,   nil,    45,
   nil,    10,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    30,
    17,   nil,   141,   nil,   nil,   nil,   nil,   nil,    46,    48,
   nil,    15,    18,    22,    26,    31,    33,    37,   nil,    45,
   133,    10,    30,   nil,   nil,    42,   nil,   127,    17,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,   nil,    15,
    18,    22,    26,    31,    33,    37,   nil,    45,   nil,    10,
    30,    17,   nil,   141,   nil,   nil,   nil,   nil,   nil,    46,
    48,   nil,    15,    18,    22,    26,    31,    33,    37,   nil,
    45,   133,    10,    30,   nil,   nil,    42,   nil,   127,    17,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,   nil,
    15,    18,    22,    26,    31,    33,    37,   nil,    45,   nil,
    10,    30,    17,   nil,   189,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    15,    18,    22,    26,    31,    33,    37,
   nil,    45,   nil,    10,    30,   nil,   nil,   189,   nil,   nil,
    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,
   nil,    15,    18,    22,    26,    31,    33,    37,   nil,    45,
   nil,    10,    30,    17,   nil,   189,   nil,   nil,   nil,   nil,
   nil,    46,    48,   nil,    15,    18,    22,    26,    31,    33,
    37,   nil,    45,   nil,    10,    30,   nil,   nil,   189,   nil,
   nil,    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,
    48,   nil,    15,    18,    22,    26,    31,    33,    37,   nil,
    45,   nil,    10,    30,    17,   nil,   189,   nil,   nil,   nil,
   nil,   nil,    46,    48,   nil,    15,    18,    22,    26,    31,
    33,    37,   nil,    45,   nil,    10,   nil,   nil,   nil,   nil,
   nil,    30,    17,   nil,   141,   nil,   nil,   nil,   nil,   nil,
    46,    48,   nil,    15,    18,    22,    26,    31,    33,    37,
   nil,    45,   133,    10,    30,   nil,   nil,    42,   nil,   127,
    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,
   nil,    15,    18,    22,    26,    31,    33,    37,   nil,    45,
   nil,    10,    30,    17,   nil,    42,   nil,   nil,   nil,   nil,
   nil,    46,    48,   nil,    15,    18,    22,    26,    31,    33,
    37,   nil,    45,   nil,    10,    30,   nil,   nil,    42,   nil,
   nil,    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,
    48,   nil,    15,    18,    22,    26,    31,    33,    37,   nil,
    45,   nil,    10,    30,    17,   nil,   141,   nil,     6,   nil,
   nil,   nil,    46,    48,   nil,    15,    18,    22,    26,    31,
    33,    37,   nil,    45,   133,    10,   nil,   nil,   nil,   nil,
   nil,   127,    17,    30,   nil,   nil,   141,   nil,   nil,   nil,
    46,    48,   nil,    15,    18,    22,    26,    31,    33,    37,
   nil,    45,   nil,    10,   133,    30,   nil,   nil,   189,   nil,
   nil,   127,    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    46,    48,   nil,    15,    18,    22,    26,    31,    33,    37,
   nil,    45,    30,    10,    17,    42,   nil,   nil,   nil,   nil,
   nil,   nil,    46,    48,   nil,    15,    18,    22,    26,    31,
    33,    37,   nil,    45,    30,    10,   nil,    42,   nil,   nil,
   nil,    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,
    48,   nil,    15,    18,    22,    26,    31,    33,    37,   nil,
    45,    30,    10,    17,   189,   nil,   nil,   nil,   nil,   nil,
   nil,    46,    48,   nil,    15,    18,    22,    26,    31,    33,
    37,   nil,    45,    30,    10,   nil,    42,   nil,   nil,   nil,
    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,
   nil,    15,    18,    22,    26,    31,    33,    37,   nil,    45,
    30,    10,    17,    42,   nil,   nil,   nil,   nil,   nil,   nil,
    46,    48,   nil,    15,    18,    22,    26,    31,    33,    37,
   nil,    45,    30,    10,   nil,    42,   nil,   nil,   nil,    17,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,   nil,
    15,    18,    22,    26,    31,    33,    37,   nil,    45,    30,
    10,    17,   189,   nil,   nil,   nil,   nil,   nil,   nil,    46,
    48,   nil,    15,    18,    22,    26,    31,    33,    37,   nil,
    45,   nil,    10,   nil,   nil,   nil,   nil,   nil,    17,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    46,    48,   nil,    15,
    18,    22,    26,    31,    33,    37,   nil,    45,   nil,    10,
   171,   173,   nil,   176,   178,   179,   nil,   nil,   nil,   nil,
   169,   170,   172,   174,   175,   177 ]

racc_action_check = [
    57,    24,    51,    57,   110,    43,    57,   184,    92,   166,
   179,    20,    20,     0,    65,    86,   179,   184,   228,   184,
   184,   228,   184,   184,   184,   184,    85,    43,    97,    57,
    92,    51,    98,   110,    24,   166,   225,    57,    57,   225,
    57,    57,    57,    57,    57,    57,    57,   228,    57,   103,
    57,    65,    65,    81,    81,   228,   228,   104,   228,   228,
   228,   228,   228,   228,   228,   225,   228,   105,   228,     6,
    45,    45,     6,   225,   225,     6,   225,   225,   225,   225,
   225,   225,   225,    79,   225,   117,   225,   218,   118,    91,
   218,   171,   120,   171,   171,   121,   122,   123,     6,    91,
   125,    91,    91,   127,    91,    91,     6,     6,   128,     6,
     6,     6,     6,     6,     6,     6,   218,     6,   213,     6,
    76,   213,   134,    74,   218,   218,    71,   218,   218,   218,
   218,   218,   218,   218,   146,   218,   147,   218,   201,   213,
   153,   201,   157,   201,   162,    66,   213,   213,    64,    62,
   167,   168,    89,    53,    39,   213,   213,    37,   213,   213,
   213,   213,   213,   213,   213,    33,   213,   201,   213,   194,
    31,    30,   194,   176,    29,   201,   201,    28,   201,   201,
   201,   201,   201,   201,   201,    26,   201,   192,   201,    22,
   192,   182,    21,   185,    18,    17,   193,    14,   194,   196,
    10,   204,   206,   207,   210,     8,   194,   194,   215,   194,
   194,   194,   194,   194,   194,   194,   192,   194,   189,   194,
     7,   189,   219,   189,   192,   192,   220,   192,   192,   192,
   192,   192,   192,   192,   222,   192,   223,   192,   224,     5,
     2,   133,   231,   232,   133,   236,   nil,   189,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   189,   189,   nil,   189,   189,
   189,   189,   189,   189,   189,   nil,   189,   nil,   189,   133,
   133,    70,   nil,   nil,    70,   nil,   nil,   nil,   133,   133,
   nil,   133,   133,   133,   133,   133,   133,   133,   nil,   133,
   nil,   133,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   181,
    70,   nil,   181,   nil,   nil,   nil,   nil,   nil,    70,    70,
   nil,    70,    70,    70,    70,    70,    70,    70,   nil,    70,
   181,    70,    69,   nil,   nil,    69,   nil,   181,   181,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   181,   181,   nil,   181,
   181,   181,   181,   181,   181,   181,   nil,   181,   nil,   181,
    96,    69,   nil,    96,   nil,   nil,   nil,   nil,   nil,    69,
    69,   nil,    69,    69,    69,    69,    69,    69,    69,   nil,
    69,    96,    69,    27,   nil,   nil,    27,   nil,    96,    96,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    96,    96,   nil,
    96,    96,    96,    96,    96,    96,    96,   nil,    96,   nil,
    96,   178,    27,   nil,   178,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    27,    27,    27,    27,    27,    27,    27,
   nil,    27,   nil,    27,   177,   nil,   nil,   177,   nil,   nil,
   178,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   178,   178,
   nil,   178,   178,   178,   178,   178,   178,   178,   nil,   178,
   nil,   178,   175,   177,   nil,   175,   nil,   nil,   nil,   nil,
   nil,   177,   177,   nil,   177,   177,   177,   177,   177,   177,
   177,   nil,   177,   nil,   177,   174,   nil,   nil,   174,   nil,
   nil,   175,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   175,
   175,   nil,   175,   175,   175,   175,   175,   175,   175,   nil,
   175,   nil,   175,   173,   174,   nil,   173,   nil,   nil,   nil,
   nil,   nil,   174,   174,   nil,   174,   174,   174,   174,   174,
   174,   174,   nil,   174,   nil,   174,   nil,   nil,   nil,   nil,
   nil,   165,   173,   nil,   165,   nil,   nil,   nil,   nil,   nil,
   173,   173,   nil,   173,   173,   173,   173,   173,   173,   173,
   nil,   173,   165,   173,    68,   nil,   nil,    68,   nil,   165,
   165,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   165,   165,
   nil,   165,   165,   165,   165,   165,   165,   165,   nil,   165,
   nil,   165,    42,    68,   nil,    42,   nil,   nil,   nil,   nil,
   nil,    68,    68,   nil,    68,    68,    68,    68,    68,    68,
    68,   nil,    68,   nil,    68,    67,   nil,   nil,    67,   nil,
   nil,    42,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    42,
    42,   nil,    42,    42,    42,    42,    42,    42,    42,   nil,
    42,   nil,    42,   141,    67,   nil,   141,   nil,   141,   nil,
   nil,   nil,    67,    67,   nil,    67,    67,    67,    67,    67,
    67,    67,   nil,    67,   141,    67,   nil,   nil,   nil,   nil,
   nil,   141,   141,   163,   nil,   nil,   163,   nil,   nil,   nil,
   141,   141,   nil,   141,   141,   141,   141,   141,   141,   141,
   nil,   141,   nil,   141,   163,   170,   nil,   nil,   170,   nil,
   nil,   163,   163,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   163,   163,   nil,   163,   163,   163,   163,   163,   163,   163,
   nil,   163,    55,   163,   170,    55,   nil,   nil,   nil,   nil,
   nil,   nil,   170,   170,   nil,   170,   170,   170,   170,   170,
   170,   170,   nil,   170,    56,   170,   nil,    56,   nil,   nil,
   nil,    55,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    55,
    55,   nil,    55,    55,    55,    55,    55,    55,    55,   nil,
    55,   169,    55,    56,   169,   nil,   nil,   nil,   nil,   nil,
   nil,    56,    56,   nil,    56,    56,    56,    56,    56,    56,
    56,   nil,    56,    58,    56,   nil,    58,   nil,   nil,   nil,
   169,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   169,   169,
   nil,   169,   169,   169,   169,   169,   169,   169,   nil,   169,
    59,   169,    58,    59,   nil,   nil,   nil,   nil,   nil,   nil,
    58,    58,   nil,    58,    58,    58,    58,    58,    58,    58,
   nil,    58,    60,    58,   nil,    60,   nil,   nil,   nil,    59,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    59,    59,   nil,
    59,    59,    59,    59,    59,    59,    59,   nil,    59,   172,
    59,    60,   172,   nil,   nil,   nil,   nil,   nil,   nil,    60,
    60,   nil,    60,    60,    60,    60,    60,    60,    60,   nil,
    60,   nil,    60,   nil,   nil,   nil,   nil,   nil,   172,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   172,   172,   nil,   172,
   172,   172,   172,   172,   172,   172,   nil,   172,   nil,   172,
   143,   143,   nil,   143,   143,   143,   nil,   nil,   nil,   nil,
   143,   143,   143,   143,   143,   143 ]

racc_action_pointer = [
     3,   nil,   240,   nil,   nil,   237,    64,   220,   202,   nil,
   144,   nil,   nil,   nil,   151,   nil,   nil,   149,   189,   nil,
   -31,   140,   181,   nil,   -10,   nil,   177,   368,   164,   122,
   125,   162,   nil,   157,   nil,   nil,   nil,   149,   nil,   150,
   nil,   nil,   577,    -7,   nil,    17,   nil,   nil,   nil,   nil,
   nil,    -3,   nil,   119,   nil,   707,   729,    -5,   778,   805,
   827,   nil,   115,   nil,   125,     9,   140,   600,   549,   317,
   266,   117,   nil,   nil,    89,   nil,    67,   nil,   nil,    79,
   nil,    47,   nil,   nil,   nil,    17,     6,   nil,   nil,   143,
   nil,    85,    -4,   nil,   nil,   nil,   345,     4,    27,   nil,
   nil,   nil,   nil,    40,    48,    58,   nil,   nil,   nil,   nil,
    -1,   nil,   nil,   nil,   nil,   nil,   nil,    70,    54,   nil,
    74,    77,    81,    79,   nil,    66,   nil,    95,    73,   nil,
   nil,   nil,   nil,   236,    94,   nil,   nil,   nil,   nil,   nil,
   nil,   628,   nil,   884,   nil,   nil,   109,   133,   nil,   nil,
   nil,   nil,   nil,   106,   nil,   nil,   nil,   108,   nil,   nil,
   nil,   nil,   134,   658,   nil,   526,     0,   141,   142,   756,
   680,    64,   854,   498,   470,   447,   165,   419,   396,   -16,
   nil,   294,   157,   nil,     3,   165,   nil,   nil,   nil,   213,
   nil,   nil,   182,   188,   164,   nil,   171,   nil,   nil,   nil,
   nil,   133,   nil,   nil,   169,   nil,   167,   199,   nil,   nil,
   196,   nil,   nil,   113,   nil,   180,   nil,   nil,    82,   213,
   222,   nil,   200,   202,   203,    31,   nil,   nil,    13,   nil,
   nil,   233,   239,   nil,   nil,   nil,   211,   nil ]

racc_action_default = [
  -146,   -15,  -146,    -1,    -2,    -4,  -146,  -146,  -146,    -3,
  -146,  -115,   -18,  -118,  -146,  -116,   -99,  -140,  -146,  -121,
  -102,  -127,  -146,  -119,  -105,  -128,  -146,  -146,   -17,  -146,
  -132,  -146,  -107,  -146,  -109,  -108,   -19,  -146,  -110,   -21,
  -143,  -112,  -146,   -24,  -144,  -146,  -138,  -113,  -139,  -114,
   238,  -146,  -145,  -146,  -131,  -146,  -146,  -146,  -146,  -146,
  -146,  -106,  -146,   -16,   -49,  -146,  -130,  -146,  -146,  -146,
  -146,  -146,  -140,   -23,  -146,  -142,  -146,    -9,   -10,    -5,
    -7,   -11,  -117,  -100,  -101,  -146,  -146,  -104,  -103,  -146,
   -72,   -26,   -29,   -30,   -32,   -33,  -146,   -51,  -146,  -137,
  -133,  -135,  -129,  -146,  -146,  -146,   -20,  -111,   -22,  -141,
  -146,    -8,   -12,   -13,  -120,  -122,  -123,  -146,  -146,   -37,
   -39,   -41,  -146,   -42,   -28,  -146,   -96,  -146,   -50,   -87,
   -58,   -88,   -89,  -146,   -75,   -77,   -97,   -80,   -98,   -85,
   -81,  -146,   -82,  -146,   -86,   -84,   -56,  -146,  -136,  -124,
  -125,  -126,    -6,  -146,   -34,   -38,   -40,  -146,   -43,   -27,
   -31,   -71,  -146,  -146,   -79,  -146,  -146,  -146,   -98,  -146,
  -146,  -146,  -146,  -146,  -146,  -146,  -146,  -146,  -146,  -146,
   -25,  -146,  -146,   -35,  -146,   -76,   -78,   -83,   -14,  -146,
   -90,   -91,  -146,  -146,  -146,   -92,  -146,   -93,   -94,   -62,
   -63,  -146,   -95,   -68,  -146,   -70,   -57,   -52,   -54,   -55,
  -146,   -45,   -36,  -146,   -44,  -146,   -61,   -67,  -146,  -146,
   -66,   -69,  -146,  -146,   -46,  -146,   -60,   -64,  -146,   -53,
   -74,  -146,   -48,   -59,   -65,   -47,  -146,   -73 ]

racc_goto_table = [
    43,    73,   128,    92,    91,    36,   160,    80,   209,    77,
   219,    82,   208,   199,    83,    84,    87,    88,   190,   191,
   212,   195,   196,   197,   198,   146,   202,   203,   180,    64,
   216,    63,   108,   161,    97,   214,    71,   234,   211,    28,
   231,   215,   232,   217,   207,   111,     2,   166,   209,    79,
   124,    86,   229,     9,    89,   160,     5,   185,   186,   154,
   164,   103,   104,   105,    43,     4,   152,   226,    77,   106,
     3,    98,   160,    61,   233,   100,   101,   nil,   nil,   nil,
   nil,   nil,   nil,   159,   nil,   nil,   nil,   206,   nil,   nil,
   nil,   nil,   nil,   nil,   183,   nil,   nil,   nil,    92,   184,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   224,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   168,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   230,   nil,    71,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   237,   220,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   220 ]

racc_goto_check = [
    17,    10,    32,    23,    22,    15,    11,     7,    37,    10,
    43,    10,    36,    42,    54,    54,    55,    55,    40,    40,
    29,    40,    40,    40,    40,    20,    40,    40,    21,    18,
    42,    14,    10,    25,    19,    30,    17,    43,    31,    13,
    33,    40,    34,    40,    35,     9,     1,    32,    37,     6,
    10,    17,    36,     5,    17,    11,     4,    47,    48,    23,
    49,    17,    17,    17,    17,     3,     7,    40,    10,    15,
     2,    57,    11,    58,    40,    70,    71,   nil,   nil,   nil,
   nil,   nil,   nil,    10,   nil,   nil,   nil,    32,   nil,   nil,
   nil,   nil,   nil,   nil,    23,   nil,   nil,   nil,    23,    22,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    32,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    17,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    10,   nil,    17,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    10,    17,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    17 ]

racc_goto_pointer = [
   nil,    46,    70,    65,    56,    48,    -2,   -44,   nil,   -36,
   -42,  -121,   nil,    33,     3,    -1,   nil,    -6,     1,   -30,
   -72,  -118,   -58,   -59,   nil,   -94,   nil,   nil,   nil,  -164,
  -149,  -146,   -94,  -183,  -181,  -138,  -170,  -174,   nil,   nil,
  -151,   nil,  -163,  -191,   nil,   nil,   nil,  -106,  -107,   -73,
   nil,   nil,   nil,   nil,   -41,   -42,   nil,     6,    46,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    10,    11,   nil,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   167,   nil,   nil,   nil,    81,   nil,
    13,   130,     1,   nil,   nil,   nil,    39,   138,   nil,   nil,
   nil,   nil,   nil,    23,    93,   200,    94,    95,   122,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    34,   136,   139,
   143,   144,   nil,   nil,   129,   131,   132,   134,   135,   137,
   140,   142,   145,   126,    16,    20,    24,    27,    32,    35,
    38,    41,    47,    49,    11,    14,    19,    21,    25,    29,
   nil,   nil,    40,    44 ]

racc_token_table = {
 false => 0,
 Object.new => 1,
 :ORDER => 2,
 :BY => 3,
 :comma => 4,
 :unsigned_integer => 5,
 :ASC => 6,
 :DESC => 7,
 :left_paren => 8,
 :right_paren => 9,
 :SELECT => 10,
 :asterisk => 11,
 :AS => 12,
 :FROM => 13,
 :CROSS => 14,
 :JOIN => 15,
 :INNER => 16,
 :LEFT => 17,
 :OUTER => 18,
 :RIGHT => 19,
 :FULL => 20,
 :ON => 21,
 :USING => 22,
 :WHERE => 23,
 :GROUP => 24,
 :HAVING => 25,
 :NOT => 26,
 :BETWEEN => 27,
 :AND => 28,
 :IN => 29,
 :LIKE => 30,
 :IS => 31,
 :NULL => 32,
 :EXISTS => 33,
 :identifier => 34,
 :OR => 35,
 :equals_operator => 36,
 :not_equals_operator => 37,
 :less_than_operator => 38,
 :greater_than_operator => 39,
 :less_than_or_equals_operator => 40,
 :greater_than_or_equals_operator => 41,
 :plus_sign => 42,
 :minus_sign => 43,
 :solidus => 44,
 :CURRENT_USER => 45,
 :period => 46,
 :COUNT => 47,
 :AVG => 48,
 :MAX => 49,
 :MIN => 50,
 :SUM => 51,
 :E => 52,
 :quote => 53,
 :character_string_literal => 54,
 :DATE => 55,
 :date_string => 56 }

racc_use_result_var = true

racc_nt_base = 57

Racc_arg = [
 racc_action_table,
 racc_action_check,
 racc_action_default,
 racc_action_pointer,
 racc_goto_table,
 racc_goto_check,
 racc_goto_default,
 racc_goto_pointer,
 racc_nt_base,
 racc_reduce_table,
 racc_token_table,
 racc_shift_n,
 racc_reduce_n,
 racc_use_result_var ]

Racc_token_to_s_table = [
'$end',
'error',
'ORDER',
'BY',
'comma',
'unsigned_integer',
'ASC',
'DESC',
'left_paren',
'right_paren',
'SELECT',
'asterisk',
'AS',
'FROM',
'CROSS',
'JOIN',
'INNER',
'LEFT',
'OUTER',
'RIGHT',
'FULL',
'ON',
'USING',
'WHERE',
'GROUP',
'HAVING',
'NOT',
'BETWEEN',
'AND',
'IN',
'LIKE',
'IS',
'NULL',
'EXISTS',
'identifier',
'OR',
'equals_operator',
'not_equals_operator',
'less_than_operator',
'greater_than_operator',
'less_than_or_equals_operator',
'greater_than_or_equals_operator',
'plus_sign',
'minus_sign',
'solidus',
'CURRENT_USER',
'period',
'COUNT',
'AVG',
'MAX',
'MIN',
'SUM',
'E',
'quote',
'character_string_literal',
'DATE',
'date_string',
'$start',
'direct_sql_statement',
'direct_sql_data_statement',
'direct_select_statement_multiple_rows',
'query_expression',
'order_by_clause',
'sort_specification_list',
'sort_specification',
'sort_key',
'ordering_specification',
'column_name',
'subquery',
'query_specification',
'select_list',
'table_expression',
'select_sublist',
'derived_column',
'value_expression',
'from_clause',
'where_clause',
'group_by_clause',
'having_clause',
'table_reference',
'table_name',
'joined_table',
'table_subquery',
'cross_join',
'qualified_join',
'join_type',
'join_specification',
'join_condition',
'named_columns_join',
'search_condition',
'join_column_list',
'column_name_list',
'grouping_column_reference_list',
'grouping_column_reference',
'column_reference',
'row_subquery',
'between_predicate',
'row_value_constructor',
'in_predicate',
'in_predicate_value',
'in_value_list',
'like_predicate',
'null_predicate',
'exists_predicate',
'boolean_term',
'boolean_factor',
'boolean_test',
'boolean_primary',
'predicate',
'comparison_predicate',
'row_value_constructor_element',
'numeric_value_expression',
'term',
'factor',
'sign',
'value_expression_primary',
'unsigned_value_specification',
'set_function_specification',
'unsigned_literal',
'general_value_specification',
'unsigned_numeric_literal',
'general_literal',
'qualifier',
'general_set_function',
'exact_numeric_literal',
'approximate_numeric_literal',
'mantissa',
'exponent',
'signed_integer',
'datetime_literal',
'date_literal']

Racc_debug_parser = false

##### racc system variables end #####

 # reduce 0 omitted

 # reduce 1 omitted

 # reduce 2 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 11
  def _reduce_3( val, _values, result )
 result = SQL::Statement::DirectSelect.new(val[0], val[1])
   result
  end
.,.,

 # reduce 4 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 16
  def _reduce_5( val, _values, result )
 result = SQL::Statement::OrderBy.new(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 19
  def _reduce_6( val, _values, result )
 result = Array(val[0]) + Array(val[2])
   result
  end
.,.,

 # reduce 7 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 23
  def _reduce_8( val, _values, result )
 result = val[1].new(val[0])
   result
  end
.,.,

 # reduce 9 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 27
  def _reduce_10( val, _values, result )
 result = SQL::Statement::Integer.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 30
  def _reduce_11( val, _values, result )
 result = SQL::Statement::Ascending
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 31
  def _reduce_12( val, _values, result )
 result = SQL::Statement::Ascending
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 32
  def _reduce_13( val, _values, result )
 result = SQL::Statement::Descending
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 37
  def _reduce_14( val, _values, result )
 result = SQL::Statement::Subquery.new(val[1])
   result
  end
.,.,

 # reduce 15 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 43
  def _reduce_16( val, _values, result )
 result = SQL::Statement::Select.new(val[1], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 44
  def _reduce_17( val, _values, result )
 result = SQL::Statement::Select.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 47
  def _reduce_18( val, _values, result )
 result = SQL::Statement::All.new
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 48
  def _reduce_19( val, _values, result )
 result = SQL::Statement::SelectList.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 51
  def _reduce_20( val, _values, result )
 result = Array(val[0]) + Array(val[2])
   result
  end
.,.,

 # reduce 21 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 55
  def _reduce_22( val, _values, result )
 result = SQL::Statement::As.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 56
  def _reduce_23( val, _values, result )
 result = SQL::Statement::As.new(val[0], val[1])
   result
  end
.,.,

 # reduce 24 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 60
  def _reduce_25( val, _values, result )
 result = SQL::Statement::TableExpression.new(val[0], val[1], val[2], val[3])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 63
  def _reduce_26( val, _values, result )
 result = SQL::Statement::FromClause.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 66
  def _reduce_27( val, _values, result )
 result = SQL::Statement::As.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 67
  def _reduce_28( val, _values, result )
 result = SQL::Statement::As.new(val[0], val[1])
   result
  end
.,.,

 # reduce 29 omitted

 # reduce 30 omitted

 # reduce 31 omitted

 # reduce 32 omitted

 # reduce 33 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 79
  def _reduce_34( val, _values, result )
 result = SQL::Statement::CrossJoin.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 80
  def _reduce_35( val, _values, result )
 result = SQL::Statement::CrossJoin.new(val[0], val[3])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 83
  def _reduce_36( val, _values, result )
 result = val[1].new(val[0], val[3], val[4])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 86
  def _reduce_37( val, _values, result )
 result = SQL::Statement::InnerJoin
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 87
  def _reduce_38( val, _values, result )
 result = SQL::Statement::LeftOuterJoin
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 88
  def _reduce_39( val, _values, result )
 result = SQL::Statement::LeftJoin
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 89
  def _reduce_40( val, _values, result )
 result = SQL::Statement::RightOuterJoin
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 90
  def _reduce_41( val, _values, result )
 result = SQL::Statement::RightJoin
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 91
  def _reduce_42( val, _values, result )
 result = SQL::Statement::FullJoin
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 92
  def _reduce_43( val, _values, result )
 result = SQL::Statement::FullOuterJoin
   result
  end
.,.,

 # reduce 44 omitted

 # reduce 45 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 99
  def _reduce_46( val, _values, result )
 result = SQL::Statement::On.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 102
  def _reduce_47( val, _values, result )
 result = SQL::Statement::Using.new(val[2])
   result
  end
.,.,

 # reduce 48 omitted

 # reduce 49 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 109
  def _reduce_50( val, _values, result )
 result = SQL::Statement::WhereClause.new(val[1])
   result
  end
.,.,

 # reduce 51 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 113
  def _reduce_52( val, _values, result )
 result = SQL::Statement::GroupByClause.new(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 116
  def _reduce_53( val, _values, result )
 result = Array(val[0]) + Array(val[2])
   result
  end
.,.,

 # reduce 54 omitted

 # reduce 55 omitted

 # reduce 56 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 124
  def _reduce_57( val, _values, result )
 result = SQL::Statement::HavingClause.new(val[1])
   result
  end
.,.,

 # reduce 58 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 131
  def _reduce_59( val, _values, result )
 result = SQL::Statement::Not.new(SQL::Statement::Between.new(val[0], val[3], val[5]))
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 132
  def _reduce_60( val, _values, result )
 result = SQL::Statement::Between.new(val[0], val[2], val[4])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 135
  def _reduce_61( val, _values, result )
 result = SQL::Statement::Not.new(SQL::Statement::In.new(val[0], val[3]))
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 136
  def _reduce_62( val, _values, result )
 result = SQL::Statement::In.new(val[0], val[2])
   result
  end
.,.,

 # reduce 63 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 140
  def _reduce_64( val, _values, result )
 result = SQL::Statement::InValueList.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 143
  def _reduce_65( val, _values, result )
 result = Array(val[0]) + Array(val[2])
   result
  end
.,.,

 # reduce 66 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 150
  def _reduce_67( val, _values, result )
 result = SQL::Statement::Not.new(SQL::Statement::Like.new(val[0], val[3]))
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 151
  def _reduce_68( val, _values, result )
 result = SQL::Statement::Like.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 154
  def _reduce_69( val, _values, result )
 result = SQL::Statement::Not.new(SQL::Statement::Is.new(val[0], SQL::Statement::Null.new))
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 155
  def _reduce_70( val, _values, result )
 result = SQL::Statement::Is.new(val[0], SQL::Statement::Null.new)
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 158
  def _reduce_71( val, _values, result )
 result = SQL::Statement::Exists.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 162
  def _reduce_72( val, _values, result )
 result = SQL::Statement::Table.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 165
  def _reduce_73( val, _values, result )
 result = Array(val[0]) + Array(val[2])
   result
  end
.,.,

 # reduce 74 omitted

 # reduce 75 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 171
  def _reduce_76( val, _values, result )
 result = SQL::Statement::Or.new(val[0], val[2])
   result
  end
.,.,

 # reduce 77 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 175
  def _reduce_78( val, _values, result )
 result = SQL::Statement::And.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 178
  def _reduce_79( val, _values, result )
 result = SQL::Statement::Not.new(val[1])
   result
  end
.,.,

 # reduce 80 omitted

 # reduce 81 omitted

 # reduce 82 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 186
  def _reduce_83( val, _values, result )
 result = val[1]
   result
  end
.,.,

 # reduce 84 omitted

 # reduce 85 omitted

 # reduce 86 omitted

 # reduce 87 omitted

 # reduce 88 omitted

 # reduce 89 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 197
  def _reduce_90( val, _values, result )
 result = SQL::Statement::Equals.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 198
  def _reduce_91( val, _values, result )
 result = SQL::Statement::Not.new(SQL::Statement::Equals.new(val[0], val[2]))
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 199
  def _reduce_92( val, _values, result )
 result = SQL::Statement::Less.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 200
  def _reduce_93( val, _values, result )
 result = SQL::Statement::Greater.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 201
  def _reduce_94( val, _values, result )
 result = SQL::Statement::LessOrEquals.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 202
  def _reduce_95( val, _values, result )
 result = SQL::Statement::GreaterOrEquals.new(val[0], val[2])
   result
  end
.,.,

 # reduce 96 omitted

 # reduce 97 omitted

 # reduce 98 omitted

 # reduce 99 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 215
  def _reduce_100( val, _values, result )
 result = SQL::Statement::Add.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 216
  def _reduce_101( val, _values, result )
 result = SQL::Statement::Subtract.new(val[0], val[2])
   result
  end
.,.,

 # reduce 102 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 220
  def _reduce_103( val, _values, result )
 result = SQL::Statement::Multiply.new(val[0], val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 221
  def _reduce_104( val, _values, result )
 result = SQL::Statement::Divide.new(val[0], val[2])
   result
  end
.,.,

 # reduce 105 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 225
  def _reduce_106( val, _values, result )
 result = val[0].new(val[1])
   result
  end
.,.,

 # reduce 107 omitted

 # reduce 108 omitted

 # reduce 109 omitted

 # reduce 110 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 232
  def _reduce_111( val, _values, result )
 result = val[1]
   result
  end
.,.,

 # reduce 112 omitted

 # reduce 113 omitted

 # reduce 114 omitted

 # reduce 115 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 243
  def _reduce_116( val, _values, result )
 result = SQL::Statement::CurrentUser.new
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 246
  def _reduce_117( val, _values, result )
 result = SQL::Statement::QualifiedColumn.new(val[0], val[2])
   result
  end
.,.,

 # reduce 118 omitted

 # reduce 119 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 253
  def _reduce_120( val, _values, result )
 result = SQL::Statement::Count.new(SQL::Statement::All.new)
   result
  end
.,.,

 # reduce 121 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 257
  def _reduce_122( val, _values, result )
 result = SQL::Statement::Count.new(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 258
  def _reduce_123( val, _values, result )
 result = SQL::Statement::Average.new(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 259
  def _reduce_124( val, _values, result )
 result = SQL::Statement::Maximum.new(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 260
  def _reduce_125( val, _values, result )
 result = SQL::Statement::Minimum.new(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 261
  def _reduce_126( val, _values, result )
 result = SQL::Statement::Sum.new(val[2])
   result
  end
.,.,

 # reduce 127 omitted

 # reduce 128 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 269
  def _reduce_129( val, _values, result )
 result = SQL::Statement::Float.new("#{val[0]}.#{val[2]}".to_f)
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 270
  def _reduce_130( val, _values, result )
 result = SQL::Statement::Float.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 271
  def _reduce_131( val, _values, result )
 result = SQL::Statement::Float.new("0.#{val[1]}".to_f)
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 272
  def _reduce_132( val, _values, result )
 result = SQL::Statement::Integer.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 275
  def _reduce_133( val, _values, result )
 result = SQL::Statement::ApproximateFloat.new(val[0], val[2])
   result
  end
.,.,

 # reduce 134 omitted

 # reduce 135 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 284
  def _reduce_136( val, _values, result )
 result = val[0].new(SQL::Statement::Integer.new(val[1]))
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 285
  def _reduce_137( val, _values, result )
 result = SQL::Statement::Integer.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 288
  def _reduce_138( val, _values, result )
 result = SQL::Statement::UnaryPlus
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 289
  def _reduce_139( val, _values, result )
 result = SQL::Statement::UnaryMinus
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 293
  def _reduce_140( val, _values, result )
 result = SQL::Statement::Column.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 297
  def _reduce_141( val, _values, result )
 result = SQL::Statement::String.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'lib/sql/parser.racc', 298
  def _reduce_142( val, _values, result )
 result = SQL::Statement::String.new('')
   result
  end
.,.,

 # reduce 143 omitted

 # reduce 144 omitted

module_eval <<'.,.,', 'lib/sql/parser.racc', 305
  def _reduce_145( val, _values, result )
 result = SQL::Statement::Date.new(val[1])
   result
  end
.,.,

 def _reduce_none( val, _values, result )
  result
 end

  end
      
end