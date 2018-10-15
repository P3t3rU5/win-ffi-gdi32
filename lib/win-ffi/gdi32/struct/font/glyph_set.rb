require_relative '../../enum/font/glyph_set_flag'

require_relative 'wc_range'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagglyphset
    class GLYPHSET < FFIAdditions::Struct
      def cbThis; end
      def cbThis=(v); end
      def flAccel; end
      def flAccel=(v); end
      def cGlyphsSupported; end
      def cGlyphsSupported=(v); end
      def cRanges; end
      def cRanges=(v); end
      def ranges; end
      def ranges=(v); end

      layout cbThis:           :dword,
             flAccel:          GlyphSetFlag,
             cGlyphsSupported: :dword,
             cRanges:          :dword,
             ranges:           [WCRANGE, 1]
    end
  end
end