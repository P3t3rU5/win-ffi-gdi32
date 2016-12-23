require 'win-ffi/gdi32/struct/metafile/emr'
require 'win-ffi/gdi32/struct/metafile/rectl'
require 'win-ffi/gdi32/struct/transform/xform'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162592(v=vs.85).aspx
    class EMRTRANSPARENTBLT < FFIAdditions::Struct
      layout emr:                EMR,
             rclBounds:        RECTL, # Inclusive-inclusive bounds in device units
             xDest:            :long,
             yDest:            :long,
             cxDest:           :long,
             cyDest:           :long,
             dwRop:           :dword,
             xSrc:             :long,
             ySrc:             :long,
             xformSrc:         XFORM, # Source DC transform
             crBkColorSrc: :colorref, # Source DC BkColor in RGB
             iUsageSrc:       :dword, # Source bitmap info color table usage (DIB_RGB_COLORS)
             offBmiSrc:       :dword, # Offset to the source BITMAPINFO structure
             cbBmiSrc:        :dword, # Size of the source BITMAPINFO structure
             offBitsSrc:      :dword, # Offset to the source bitmap bits
             cbBitsSrc:       :dword, # Size of the source bitmap bits
             cxSrc:            :long,
             cySrc:            :long
    end
  end
end