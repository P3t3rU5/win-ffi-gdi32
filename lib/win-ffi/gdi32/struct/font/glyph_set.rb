require_relative '../../enum/font/glyph_set_flag'

require_relative 'wc_range'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-glyphset
    class GLYPHSET < FFIAdditions::Struct
      attr_accessor :cbThis,
                    :flAccel,
                    :cGlyphsSupported,
                    :cRanges,
                    :ranges

      layout cbThis:           :dword,
             flAccel:          GlyphSetFlag,
             cGlyphsSupported: :dword,
             cRanges:          :dword,
             ranges:           [WCRANGE, 1]
    end
  end
end