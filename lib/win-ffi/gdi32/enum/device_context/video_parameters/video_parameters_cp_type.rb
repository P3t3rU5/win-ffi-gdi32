require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    VideoParametersCpType = enum :video_parameters_cp_type, [
        :APS_TRIGGER, 0x0001,
        :MACROVISION, 0x0002,
    ]

    define_prefix(:VP_CP_TYPE, VideoParametersCpType)
  end
end