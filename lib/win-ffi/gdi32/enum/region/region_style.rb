module WinFFI
  module Gdi32
    # CombineRgn() Styles
    RegionStyle = enum :region_style, [
        :ERROR, 0,
        :AND,   1,
        :OR,    2,
        :XOR,   3,
        :DIFF,  4,
        :COPY,  5,
        :MIN,   1,
        :MAX,   5
    ]

    define_prefix(:RGN, RegionStyle)
  end
end