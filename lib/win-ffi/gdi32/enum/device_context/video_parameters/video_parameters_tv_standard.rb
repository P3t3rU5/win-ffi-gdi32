module WinFFI
  module Gdi32
    VideoParametersTvStandard = enum :video_parameters_tv_standard, [
        :NTSC_M,   0x00000001,
        :NTSC_M_J, 0x00000002,
        :PAL_B,    0x00000004,
        :PAL_D,    0x00000008,
        :PAL_H,    0x00000010,
        :PAL_I,    0x00000020,
        :PAL_M,    0x00000040,
        :PAL_N,    0x00000080,
        :SECAM_B,  0x00000100,
        :SECAM_D,  0x00000200,
        :SECAM_G,  0x00000400,
        :SECAM_H,  0x00000800,
        :SECAM_K,  0x00001000,
        :SECAM_K1, 0x00002000,
        :SECAM_L,  0x00004000,
        :WIN_VGA,  0x00008000,
        :NTSC_433, 0x00010000,
        :PAL_G,    0x00020000,
        :PAL_60,   0x00040000,
        :SECAM_L1, 0x00080000,
    ]

    define_prefix(:VP_TV_STANDARD, VideoParametersTvStandard)
  end
end