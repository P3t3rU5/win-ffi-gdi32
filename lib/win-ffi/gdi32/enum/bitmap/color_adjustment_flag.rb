module WinFFI
  module Gdi32
    # Flags value for COLORADJUSTMENT
    # https://msdn.microsoft.com/en-us/library/dd183448(v=vs.85).aspx
    ColorAdjustmentFlag = enum :color_adjustment_flag, [:NEGATIVE, 0x0001, :LOG_FILTER, 0x0002]

    define_prefix(:CA, ColorAdjustmentFlag)
  end
end