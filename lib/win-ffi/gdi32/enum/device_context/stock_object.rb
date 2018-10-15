module WinFFI
  module Gdi32
    StockObject = enum :stock_object, [
        :WHITE_BRUSH,         0,
        :LTGRAY_BRUSH,        1,
        :GRAY_BRUSH,          2,
        :DKGRAY_BRUSH,        3,
        :BLACK_BRUSH,         4,
        :NULL_BRUSH,          5,
        :HOLLOW_BRUSH,        5,
        :WHITE_PEN,           6,
        :BLACK_PEN,           7,
        :NULL_PEN,            8,
        :OEM_FIXED_FONT,      10,
        :ANSI_FIXED_FONT,     11,
        :ANSI_VAR_FONT,       12,
        :SYSTEM_FONT,         13,
        :DEVICE_DEFAULT_FONT, 14,
        :DEFAULT_PALETTE,     15,
        :SYSTEM_FIXED_FONT,   16,
    ]
  end
end