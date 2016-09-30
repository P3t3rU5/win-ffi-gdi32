require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # PolyDraw and GetPath point types
    PointType = enum :point_type, [
        :CLOSEFIGURE, 0x01,
        :LINETO,      0x02,
        :BEZIERTO,    0x04,
        :MOVETO,      0x06,
    ]

    define_prefix(:PT ,PointType)
  end
end