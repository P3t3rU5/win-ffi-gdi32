module WinFFI
  module Gdi32
    VideoParametersCpCommand = enum :video_parameters_cp_command, [
        :ACTIVATE,   0x0001,
        :DEACTIVATE, 0x0002,
        :CHANGE,     0x0004
    ]

    define_prefix(:VP_CP_CMD, VideoParametersCpCommand)
  end
end