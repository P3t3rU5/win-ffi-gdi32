require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # gradient drawing modes
    GradientFill = enum :gradient_fill, [
        :RECT_H,   0x00000000,
        :RECT_V,   0x00000001,
        :TRIANGLE, 0x00000002,
        :OP_FLAG,  0x000000FF,
    ]

    define_prefix(:GRADIENT_FILL, GradientFill)
  end
end