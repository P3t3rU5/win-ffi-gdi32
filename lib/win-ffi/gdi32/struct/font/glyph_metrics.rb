require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-glyphmetrics
    class GLYPHMETRICS < FFIAdditions::Struct
      attr_accessor :gmBlackBoxX,
                    :gmBlackBoxY,
                    :gmptGlyphOrigin,
                    :gmCellIncX,
                    :gmCellIncY

      layout gmBlackBoxX:     :uint,
             gmBlackBoxY:     :uint,
             gmptGlyphOrigin: POINT,
             gmCellIncX:      :short,
             gmCellIncY:      :short
    end
  end
end