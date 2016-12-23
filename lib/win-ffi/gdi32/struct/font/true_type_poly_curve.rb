require 'win-ffi/gdi32/enum/font/true_type_poly_curve_type'

require 'win-ffi/gdi32/struct/font/point_fx'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145157(v=vs.85).aspx
    class TTPOLYCURVE < FFIAdditions::Struct
      layout wType: TrueTypePolyCurveType,
             cpfx:                  :word,
             apfx:            [POINTFX, 1]
    end
  end
end