require 'win-ffi/gdi32/struct/display_config/rational'
require 'win-ffi/gdi32/struct/display_config/2d_region'
require 'win-ffi/gdi32/enum/display_config/scanline_ordering'

module WinFFI
  module Gdi32

    class AdditionalSignalInfo < FFIAdditions::Struct
      layout flags: :uint32

      def videoStandard
        # TODO
      end

      def vSyncFreqDivider
        # TODO
      end

      def videoStandard=(v)
        # TODO
      end

      def vSyncFreqDivider=(v)
        # TODO
      end
    end

    class DVSIUNION < FFIAdditions::Union
      layout :AdditionalSignalInfo, AdditionalSignalInfo,
             :videoStandard,                     :uint32
    end


    class DISPLAYCONFIG_VIDEO_SIGNAL_INFO < FFIAdditions::Struct
      layout pixelRate:                              :uint64,
             hSyncFreq:               DISPLAYCONFIG_RATIONAL,
             vSyncFreq:               DISPLAYCONFIG_RATIONAL,
             activeSize:              DISPLAYCONFIG_2DREGION,
             totalSize:               DISPLAYCONFIG_2DREGION,
             u:                                    DVSIUNION,
             scanLineOrdering: DisplayConfigScanlineOrdering
    end
  end
end