require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    WglSwapLayerBuffer = enum :wgl_swap_layer_buffer, [
        :MAIN_PLANE, 0x00000001,
        :OVERLAY1,   0x00000002,
        :OVERLAY2,   0x00000004,
        :OVERLAY3,   0x00000008,
        :OVERLAY4,   0x00000010,
        :OVERLAY5,   0x00000020,
        :OVERLAY6,   0x00000040,
        :OVERLAY7,   0x00000080,
        :OVERLAY8,   0x00000100,
        :OVERLAY9,   0x00000200,
        :OVERLAY10,  0x00000400,
        :OVERLAY11,  0x00000800,
        :OVERLAY12,  0x00001000,
        :OVERLAY13,  0x00002000,
        :OVERLAY14,  0x00004000,
        :OVERLAY15,  0x00008000,
        :UNDERLAY1,  0x00010000,
        :UNDERLAY2,  0x00020000,
        :UNDERLAY3,  0x00040000,
        :UNDERLAY4,  0x00080000,
        :UNDERLAY5,  0x00100000,
        :UNDERLAY6,  0x00200000,
        :UNDERLAY7,  0x00400000,
        :UNDERLAY8,  0x00800000,
        :UNDERLAY9,  0x01000000,
        :UNDERLAY10, 0x02000000,
        :UNDERLAY11, 0x04000000,
        :UNDERLAY12, 0x08000000,
        :UNDERLAY13, 0x10000000,
        :UNDERLAY14, 0x20000000,
        :UNDERLAY15, 0x40000000
    ]

    define_prefix(:WGL, WglSwapLayerBuffer)
  end
end