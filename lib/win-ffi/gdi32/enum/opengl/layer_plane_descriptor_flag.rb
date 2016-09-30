require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    LayerPlaneDescriptorFlag = enum :layer_plane_descriptor_flag, [
        :DOUBLEBUFFER,   0x00000001,
        :STEREO,         0x00000002,
        :SUPPORT_GDI,    0x00000010,
        :SUPPORT_OPENGL, 0x00000020,
        :SHARE_DEPTH,    0x00000040,
        :SHARE_STENCIL,  0x00000080,
        :SHARE_ACCUM,    0x00000100,
        :SWAP_EXCHANGE,  0x00000200,
        :SWAP_COPY,      0x00000400,
        :TRANSPARENT,    0x00001000,

        :TYPE_RGBA,               0,
        :TYPE_COLORINDEX,         1,
    ]

    define_prefix(:LPD, LayerPlaneDescriptorFlag)
  end
end