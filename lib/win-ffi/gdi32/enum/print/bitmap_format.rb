require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    BitmapFormat = enum :bitmap_format, [
        :'1BPP',  1,
        :'4BPP',  2,
        :'8BPP',  3,
        :'16BPP', 4,
        :'24BPP', 5,
        :'32BPP', 6,
        :'4RLE',  7,
        :'8RLE',  8,
        :JPEG,    9,
        :PNG,    10,
    ]

    define_prefix(:BMF, BitmapFormat)
  end
end