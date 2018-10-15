module WinFFI
  module Gdi32
    EnumFontMask = enum :enum_font_mask, [
        :RASTER,   0x0001,
        :DEVICE,   0x0002,
        :TRUETYPE, 0x0004
    ]

    define_suffix(:FONTTYPE, EnumFontMask)
  end
end