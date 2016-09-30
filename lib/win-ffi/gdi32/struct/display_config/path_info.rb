require 'win-ffi/gdi32/enum/display_config/path'

require 'win-ffi/gdi32/struct/display_config/path_source_info'
require 'win-ffi/gdi32/struct/display_config/path_target_info'

module WinFFI
  module Gdi32
    class DISPLAYCONFIG_PATH_INFO < FFIAdditions::Struct
      layout sourceInfo: DISPLAYCONFIG_PATH_SOURCE_INFO,
             targetInfo: DISPLAYCONFIG_PATH_TARGET_INFO,
             flags:                   DisplayConfigPath

    end
  end
end