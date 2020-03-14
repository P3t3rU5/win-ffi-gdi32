require_relative 'point_float'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-glyphmetricsfloat
    class GLYPHMETRICSFLOAT < FFIAdditions::Struct
      attr_accessor :gmfBlackBoxX,
                    :gmfBlackBoxY,
                    :gmfptGlyphOrigin,
                    :gmfCellIncX,
                    :gmfCellIncY

      layout gmfBlackBoxX:     :float,
             gmfBlackBoxY:     :float,
             gmfptGlyphOrigin: POINTFLOAT,
             gmfCellIncX:      :float,
             gmfCellIncY:      :float
    end
  end
end