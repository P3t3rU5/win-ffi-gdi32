module WinFFI
  module Gdi32
    # flags for GetGlyphIndices
    GetGlyphIndicesFlag = enum :get_glyph_indices_flag, [:MARK_NONEXISTING_GLYPHS, 0X0001]
  end
end