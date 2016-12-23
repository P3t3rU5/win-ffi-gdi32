require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # constants for the biCompression field
    BitmapCompression = enum :bitmap_compression, [
        :RGB,       0,
        :RLE8,      1,
        :RLE4,      2,
        :BITFIELDS, 3,
        :JPEG,      4,
        :PNG,       5
    ]

    define_prefix(:BI, BitmapCompression)
  end
end