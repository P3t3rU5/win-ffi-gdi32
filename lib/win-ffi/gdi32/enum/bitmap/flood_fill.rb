require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # ExtFloodFill style flags
    # https://msdn.microsoft.com/en-us/library/dd162709(v=vs.85).aspx
    FloodFill = enum :flood_fill, [
        :BORDER,  0,
        :SURFACE, 1,
    ]

    define_prefix(:FLOODFILL, FloodFill, true)
  end
end