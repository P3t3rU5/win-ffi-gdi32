require 'win-ffi/gdi32/enum/device_context/video_parameters/video_parameters_command'
require 'win-ffi/gdi32/enum/device_context/video_parameters/video_parameters_flag'
require 'win-ffi/gdi32/enum/device_context/video_parameters/video_parameters_mode'
require 'win-ffi/gdi32/enum/device_context/video_parameters/video_parameters_tv_standard'
require 'win-ffi/gdi32/enum/device_context/video_parameters/video_parameters_cp_command'
require 'win-ffi/gdi32/enum/device_context/video_parameters/video_parameters_cp_type'

module WinFFI
  module Gdi32
    class VIDOEPARAMETERS < FFIAdditions::Struct
      layout guid:                             :guid,
             dwOffset:                        :ulong,
             dwCommand:       VideoParametersCommand,
             dwFlags:            VideoParametersFlag,
             dwMode:             VideoParametersMode,
             dwTVStandard: VideoParametersTvStandard,
             dwAvailableModes:                :ulong,
             dwAvailableTVStandard:           :ulong,
             dwFlickerFilter:                 :ulong,
             dwOverScanX:                     :ulong,
             dwOverScanY:                     :ulong,
             dwMaxUnscaledX:                  :ulong,
             dwMaxUnscaledY:                  :ulong,
             dwPositionX:                     :ulong,
             dwPositionY:                     :ulong,
             dwBrightness:                    :ulong,
             dwContrast:                      :ulong,
             dwCPType:         VideoParametersCpType,
             dwCPCommand:   VideoParametersCpCommand,
             dwCPStandard:                    :ulong,
             dwCPKey:                         :ulong,
             bCP_APSTriggerBits:              :ulong,
             bOEMCopyProtection:       [:uchar, 256]
    end
  end
end