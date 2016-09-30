module WinFFI
  module Gdi32
    # ntmFlags field flags
    # https://msdn.microsoft.com/en-us/library/dd162741(v=vs.85).aspx
    NewTextMetricFlag = enum :new_text_metric_flag, [
        :REGULAR, 0x00000040,
        :BOLD,    0x00000020,
        :ITALIC,  0x00000001,

        # new in NT 5.0
        :NONNEGATIVE_AC, 0x00010000,
        :PS_OPENTYPE,    0x00020000,
        :TT_OPENTYPE,    0x00040000,
        :MULTIPLEMASTER, 0x00080000,
        :TYPE1,          0x00100000,
        :DSIG,           0x00200000,
    ]

    define_prefix(:NTM, NewTextMetricFlag)
  end
end