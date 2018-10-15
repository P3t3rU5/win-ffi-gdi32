module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-exttextouta
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-exttextoutw
    buffer = [
        :OPAQUE,         0x0002,
        :CLIPPED,        0x0004,
        :GLYPH_INDEX,    0x0010,
        :RTLREADING,     0x0080,
        :NUMERICSLOCAL,  0x0400,
        :NUMERICSLATIN,  0x0800,
        :IGNORELANGUAGE, 0x1000,
        :PDY,            0x2000,
    ]

    if WINDOWS_VERSION >= :vista
      buffer += [:REVERSE_INDEX_MAP, 0x10000]
    end

    ExtTextOutFlag = enum :ext_text_out_text, buffer

    define_prefix(:ETO, ExtTextOutFlag)
  end
end