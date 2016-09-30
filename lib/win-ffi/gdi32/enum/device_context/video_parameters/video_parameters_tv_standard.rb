require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    VideoParametersTvStandard = enum :video_parameters_tv_standard, [
        :NTSC_M,       0x0001,
        :NTSC_M_J,     0x0002,
        :PAL_B,        0x0004,
        :PAL_D,        0x0008,
        :PAL_H,        0x0010,
        :PAL_I,        0x0020,
        :PAL_M,        0x0040,
        :PAL_N,        0x0080,
        :SECAM_B,      0x0100,
        :SECAM_D,      0x0200,
        :SECAM_G,      0x0400,
        :SECAM_H,      0x0800,
        :SECAM_K,      0x1000,
        :SECAM_K1,     0x2000,
        :SECAM_L,      0x4000,
        :WIN_VGA,      0x8000,
        :NTSC_433, 0x00010000,
        :PAL_G,    0x00020000,
        :PAL_60,   0x00040000,
        :SECAM_L1, 0x00080000,
    ]

    define_prefix(:VP_TV_STANDARD, VideoParametersTvStandard)
  end
end