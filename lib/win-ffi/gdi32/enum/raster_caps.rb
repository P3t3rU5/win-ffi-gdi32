require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    RasterCaps = enum :raster_caps, [
        :NONE,              0,
        :BITBLT,            1,
        :BANDING,           2,
        :SCALING,           4,
        :BITMAP64,          8,
        :GDI20_OUTPUT, 0x0010,
        :GDI20_STATE,  0x0020,
        :SAVEBITMAP,   0x0040,
        :DI_BITMAP,    0x0080,
        :PALETTE,      0x0100,
        :DIBTODEV,     0x0200,
        :BIGFONT,      0x0400,
        :STRETCHBLT,   0x0800,
        :FLOODFILL,    0x1000,
        :STRETCHDIB,   0x2000,
        :OP_DX_OUTPUT, 0x4000,
        :DEVBITS,      0x8000,
    ]

    define_prefix(:RC, RasterCaps)
  end
end