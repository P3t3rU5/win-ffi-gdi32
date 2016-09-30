require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Hatch Styles
    HatchStyle = enum :hatch_style, [
        :HORIZONTAL,  0,
        :VERTICAL,    1,
        :FDIAGONAL,   2,
        :BDIAGONAL,   3,
        :CROSS,       4,
        :DIAGCROSS,   5,
        :API_MAX,    12,
    ]

    define_prefix(:HS, HatchStyle)
  end
end