require 'win-ffi/gdi32/struct/opengl/point_float'

module WinFFI
  module Gdi32
    class GLYPHMETRICSFLOAT < FFIAdditions::Struct
      layout gmfBlackBoxX:         :float,
             gmfBlackBoxY:         :float,
             gmfptGlyphOrigin: POINTFLOAT,
             gmfCellIncX:          :float,
             gmfCellIncY:          :float
    end
  end
end