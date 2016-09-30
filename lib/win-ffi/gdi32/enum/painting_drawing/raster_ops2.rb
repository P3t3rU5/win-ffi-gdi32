require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Binary raster ops
    RasterOps2 = enum :raster_ops2, [
        :BLACK,             1,
        :NOTMERGEPEN,       2,
        :MASKNOTPEN,        3,
        :NOTCOPYPEN,        4,
        :MASKPENNOT,        5,
        :NOT,               6,
        :XORPEN,            7,
        :NOTMASKPEN,        8,
        :MASKPEN,           9,
        :NOTXORPEN,        10,
        :NOP,              11,
        :MERGENOTPEN,      12,
        :COPYPEN,          13,
        :MERGEPENNOT,      14,
        :MERGEPEN,         15,
        :WHITE,            16,
        :LAST,             16,
    ]

    define_prefix(:R2, RasterOps2)
  end
end