require 'win-ffi/core/struct/guid'

require_relative '../../enum/device_context/video_parameters/video_parameters_command'
require_relative '../../enum/device_context/video_parameters/video_parameters_flag'
require_relative '../../enum/device_context/video_parameters/video_parameters_mode'
require_relative '../../enum/device_context/video_parameters/video_parameters_tv_standard'
require_relative '../../enum/device_context/video_parameters/video_parameters_cp_command'
require_relative '../../enum/device_context/video_parameters/video_parameters_cp_type'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/tvout/ns-tvout-videoparameters
    class VIDEOPARAMETERS < FFIAdditions::Struct
      attr_accessor :guid,
                    :dwOffset,
                    :dwCommand,
                    :dwFlags,
                    :dwMode,
                    :dwTVStandard,
                    :dwAvailableModes,
                    :dwAvailableTVStandard,
                    :dwFlickerFilter,
                    :dwOverScanX,
                    :dwOverScanY,
                    :dwMaxUnscaledX,
                    :dwMaxUnscaledY,
                    :dwPositionX,
                    :dwPositionY,
                    :dwBrightness,
                    :dwContrast,
                    :dwCPType,
                    :dwCPCommand,
                    :dwCPStandard,
                    :dwCPKey,
                    :bCP_APSTriggerBits,
                    :bOEMCopyProtection

      layout guid:                  GUID,
             dwOffset:              :ulong,
             dwCommand:             VideoParametersCommand,
             dwFlags:               VideoParametersFlag,
             dwMode:                VideoParametersMode,
             dwTVStandard:          VideoParametersTvStandard,
             dwAvailableModes:      :ulong,
             dwAvailableTVStandard: :ulong,
             dwFlickerFilter:       :ulong,
             dwOverScanX:           :ulong,
             dwOverScanY:           :ulong,
             dwMaxUnscaledX:        :ulong,
             dwMaxUnscaledY:        :ulong,
             dwPositionX:           :ulong,
             dwPositionY:           :ulong,
             dwBrightness:          :ulong,
             dwContrast:            :ulong,
             dwCPType:              VideoParametersCpType,
             dwCPCommand:           VideoParametersCpCommand,
             dwCPStandard:          :ulong,
             dwCPKey:               :ulong,
             bCP_APSTriggerBits:    :ulong,
             bOEMCopyProtection:    [:uchar, 256]
    end
  end
end