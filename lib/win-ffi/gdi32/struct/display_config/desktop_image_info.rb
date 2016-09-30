require 'win-ffi/gdi32'

require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/rect'

module WinFFI
  module Gdi32
    class DISPLAYCONFIG_DESKTOP_IMAGE_INFO < FFIAdditions::Struct
      layout PathSourceSize:     POINT,
             DesktopImageRegion: RECT,
             DesktopImageClip:   RECT
    end
  end
end