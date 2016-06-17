require 'win-ffi/gdi32/enum/display_config/mode_info_type'

require 'win-ffi/core/struct/luid'
require 'win-ffi/gdi32/struct/display_config/target_mode'
require 'win-ffi/gdi32/struct/display_config/source_mode'
require 'win-ffi/gdi32/struct/display_config/desktop_image_info'

module WinFFI
  module Gdi32

    class DMIUNION < FFI::Union
      layout :targetMode,       DISPLAYCONFIG_TARGET_MODE,
             :sourceMode,       DISPLAYCONFIG_SOURCE_MODE,
             :desktopImageInfo, DISPLAYCONFIG_DESKTOP_IMAGE_INFO
    end

    class DISPLAYCONFIG_MODE_INFO < FFIStruct
      layout :infoType,  DisplayConfigModeInfoType,
             :id,        :uint32,
             :adapterId, LUID,
             :u,         DMIUNION
    end
  end
end