require 'win-ffi/gdi32/enum/text/glyph_set_flag'

require 'win-ffi/gdi32/struct/text/wc_range'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd144956(v=vs.85).aspx
    class GLYPHSET < FFIAdditions::Struct
      layout cbThis:           :dword,
             flAccel:    GlyphSetFlag,
             cGlyphsSupported: :dword,
             cRanges:          :dword,
             ranges:      [WCRANGE, 1]
    end
  end
end