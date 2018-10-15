module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagwcrange
    class WCRANGE < FFIAdditions::Struct
      def wcLow; end
      def wcLow=(v); end
      def cGlyphs; end
      def cGlyphs=(v); end

      layout wcLow:   :char,
             cGlyphs: :ushort
    end
  end
end