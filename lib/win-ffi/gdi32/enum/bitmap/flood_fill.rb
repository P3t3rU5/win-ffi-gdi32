module WinFFI
  module Gdi32
    # ExtFloodFill style flags
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extfloodfill
    FloodFill = enum :flood_fill, [:BORDER,  0, :SURFACE, 1]

    define_prefix(:FLOODFILL, FloodFill, true)
  end
end