module WinFFI
  module Gdi32
    # flAccel flags for the GLYPHSET structure above
    GlyphSetFlag = enum :glyph_set_flag, [:'8BIT_INDICES', 0x00000001]

    define_prefix(:GS, GlyphSetFlag)
  end
end