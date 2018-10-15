require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_glyphmetrics
    class GLYPHMETRICS < FFIAdditions::Struct
      def gmBlackBoxX; end
      def gmBlackBoxX=(v); end
      def gmBlackBoxY; end
      def gmBlackBoxY=(v); end
      def gmptGlyphOrigin; end
      def gmptGlyphOrigin=(v); end
      def gmCellIncX; end
      def gmCellIncX=(v); end
      def gmCellIncY; end
      def gmCellIncY=(v); end

      layout gmBlackBoxX:     :uint,
             gmBlackBoxY:     :uint,
             gmptGlyphOrigin: POINT,
             gmCellIncX:      :short,
             gmCellIncY:      :short
    end
  end
end