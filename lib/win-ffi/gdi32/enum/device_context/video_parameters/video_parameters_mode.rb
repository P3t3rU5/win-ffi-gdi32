require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    VideoParametersMode = enum :video_parameters_mode, [
        :WIN_GRAPHICS, 0x0001,
        :TV_PLAYBACK,  0x0002,
    ]

    define_prefix(:VP_MODE, VideoParametersMode)
  end
end