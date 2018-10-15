module WinFFI
  module Gdi32
    # Layout Orientation Options
    SetLayoutFlag = enum :set_layout_flag, [
        :RTL,                        0x00000001,
        :BTT,                        0x00000002,
        :VBH,                        0x00000004,
        :ORIENTATIONMASK,            0x00000007,
        :BITMAPORIENTATIONPRESERVED, 0x00000008
    ]

    define_prefix(:LAYOUT, SetLayoutFlag)
  end
end