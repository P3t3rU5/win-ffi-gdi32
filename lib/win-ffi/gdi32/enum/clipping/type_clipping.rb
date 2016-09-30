require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    TypeClipping = enum :type_clipping, [
        :RECTANGLES, 0,
        :PATHOBJ,    2,
    ]

    define_prefix(:TC, TypeClipping)
  end
end