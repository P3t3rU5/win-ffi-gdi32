require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    DrawingComplexity = enum :drawing_complexity, [
        :TRIVIAL, 0,
        :RECT,    1,
        :COMPLEX, 3,
    ]

    define_prefix(:DC, DrawingComplexity)
  end
end