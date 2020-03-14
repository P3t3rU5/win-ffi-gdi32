require_relative '../../enum/font/true_type_poly_curve_type'

require_relative 'point_fx'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-ttpolycurve
    class TTPOLYCURVE < FFIAdditions::Struct
      attr_accessor :wType, :cpfx, :apfx

      layout wType: TrueTypePolyCurveType,
             cpfx:  :word,
             apfx:  [POINTFX, 1]
    end
  end
end