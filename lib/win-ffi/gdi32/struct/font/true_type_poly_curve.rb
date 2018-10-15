require_relative '../../enum/font/true_type_poly_curve_type'

require_relative 'point_fx'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagttpolycurve
    class TTPOLYCURVE < FFIAdditions::Struct
      def wType; end
      def wType=(v); end
      def cpfx; end
      def cpfx=(v); end
      def apfx; end
      def apfx=(v); end

      layout wType: TrueTypePolyCurveType,
             cpfx:  :word,
             apfx:  [POINTFX, 1]
    end
  end
end