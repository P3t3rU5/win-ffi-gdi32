require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Bounds Accumulation APIs
    BoundsRectFlag = enum :bounds_rect_flag, [
        :RESET,      0x0001,
        :ACCUMULATE, 0x0002,
        :DIRTY,      0x0002,
        :SET ,       0x0003,
        :ENABLE,     0x0004,
        :DISABLE,    0x0008,
    ]

    define_prefix(:DCB, BoundsRectFlag)
  end
end