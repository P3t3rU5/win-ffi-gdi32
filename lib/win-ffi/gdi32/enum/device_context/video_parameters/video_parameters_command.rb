module WinFFI
  module Gdi32
    VideoParametersCommand = enum :video_parameter_command, [:GET, 0x0001, :SET, 0x0002]

    define_prefix(:VP_COMMAND, VideoParametersCommand)
  end
end