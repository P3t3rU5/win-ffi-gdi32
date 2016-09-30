require 'win-ffi/core/struct/luid'

require 'win-ffi/gdi32/enum/display_config/video_output_technology'
require 'win-ffi/gdi32/enum/display_config/rotation'
require 'win-ffi/gdi32/enum/display_config/scaling'
require 'win-ffi/gdi32/enum/display_config/scanline_ordering'

require 'win-ffi/gdi32/struct/display_config/rational'

module WinFFI
  module Gdi32
    class DPTISTRUCT < FFIAdditions::Struct
      layout :desktopModeInfoIdx, :uint32,
             :targetModeInfoIdx,  :uint32
    end

    class DPTIUNION < FFIAdditions::Union
      layout :modeInfoIdx, :uint32,
             :s,        DPTISTRUCT
    end

    class DISPLAYCONFIG_PATH_TARGET_INFO < FFIAdditions::Struct
      layout adapterId:                                      LUID,
             id:                                          :uint32,
             u:                                         DPTIUNION,
             outputTechnology: DisplayConfigVideoOutputTechnology,
             rotation:                      DisplayConfigRotation,
             scaling:                        DisplayConfigScaling,
             refreshRate:                  DISPLAYCONFIG_RATIONAL,
             scanLineOrdering:      DisplayConfigScanlineOrdering,
             targetAvailable:                               :bool,
             statusFlags:                                 :uint32
    end
  end
end