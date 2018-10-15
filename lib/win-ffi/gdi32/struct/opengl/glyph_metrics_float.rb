require_relative 'point_float'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_glyphmetricsfloat
    class GLYPHMETRICSFLOAT < FFIAdditions::Struct
      def gmfBlackBoxX; end
      def gmfBlackBoxX=(v) end
      def gmfBlackBoxY; end
      def gmfBlackBoxY=(v) end
      def gmfptGlyphOrigin; end
      def gmfptGlyphOrigin=(v) end
      def gmfCellIncX; end
      def gmfCellIncX=(v) end
      def gmfCellIncY; end
      def gmfCellIncY=(v) end

      layout gmfBlackBoxX:     :float,
             gmfBlackBoxY:     :float,
             gmfptGlyphOrigin: POINTFLOAT,
             gmfCellIncX:      :float,
             gmfCellIncY:      :float
    end
  end
end