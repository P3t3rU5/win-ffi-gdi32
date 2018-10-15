require 'win-ffi/core/struct/guid'

require_relative '../../enum/device_context/video_parameters/video_parameters_command'
require_relative '../../enum/device_context/video_parameters/video_parameters_flag'
require_relative '../../enum/device_context/video_parameters/video_parameters_mode'
require_relative '../../enum/device_context/video_parameters/video_parameters_tv_standard'
require_relative '../../enum/device_context/video_parameters/video_parameters_cp_command'
require_relative '../../enum/device_context/video_parameters/video_parameters_cp_type'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd145196%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    class VIDOEPARAMETERS < FFIAdditions::Struct
      def guid; end
      def guid=(v) end
      def dwOffset; end
      def dwOffset=(v) end
      def dwCommand; end
      def dwCommand=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def dwMode; end
      def dwMode=(v) end
      def dwTVStandard; end
      def dwTVStandard=(v) end
      def dwAvailableModes; end
      def dwAvailableModes=(v) end
      def dwAvailableTVStandard; end
      def dwAvailableTVStandard=(v); end
      def dwFlickerFilter; end
      def dwFlickerFilter=(v); end
      def dwOverScanX; end
      def dwOverScanX=(v); end
      def dwOverScanY; end
      def dwOverScanY=(v); end
      def dwMaxUnscaledX; end
      def dwMaxUnscaledX=(v); end
      def dwMaxUnscaledY; end
      def dwMaxUnscaledY=(v); end
      def dwPositionX; end
      def dwPositionX=(v); end
      def dwPositionY; end
      def dwPositionY=(v); end
      def dwBrightness; end
      def dwBrightness=(v); end
      def dwContrast; end
      def dwContrast=(v); end
      def dwCPType; end
      def dwCPType=(v); end
      def dwCPCommand; end
      def dwCPCommand=(v); end
      def dwCPStandard; end
      def dwCPStandard=(v); end
      def dwCPKey; end
      def dwCPKey=(v); end
      def bCP_APSTriggerBits; end
      def bCP_APSTriggerBits=(v); end
      def bOEMCopyProtection; end
      def bOEMCopyProtection=(v); end

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