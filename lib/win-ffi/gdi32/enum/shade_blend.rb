require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Shading and blending caps
    ShadeBlend = enum :shade_blend, [
        :NONE,          0x00000000,
        :CONST_ALPHA,   0x00000001,
        :PIXEL_ALPHA,   0x00000002,
        :PREMULT_ALPHA, 0x00000004,
        :GRAD_RECT,     0x00000010,
        :GRAD_TRI,      0x00000020,
    ]

    define_prefix(:SB, ShadeBlend)
  end
end