require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # CombineRgn() Styles
    CombineRegionStyle = enum :combine_region_style, [
        :AND,  1,
        :OR,   2,
        :XOR,  3,
        :DIFF, 4,
        :COPY, 5,
        :MIN,  1,
        :MAX,  5
    ]

    define_prefix(:RGN, CombineRegionStyle)
  end
end