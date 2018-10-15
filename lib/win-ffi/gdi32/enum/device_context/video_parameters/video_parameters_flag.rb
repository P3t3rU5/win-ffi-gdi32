module WinFFI
  module Gdi32
    VideoParametersFlag = enum :video_parameters_flag, [
        :TV_MODE,      0x000,
        :TV_STANDARD,  0x000,
        :FLICKER,      0x000,
        :OVERSCAN,     0x000,
        :MAX_UNSCALED, 0x001,
        :POSITION,     0x002,
        :BRIGHTNESS,   0x004,
        :CONTRAST,     0x008,
        :COPYPROTECT,  0x010,
    ]

    define_prefix(:VP_FLAGS, VideoParametersFlag)
  end
end