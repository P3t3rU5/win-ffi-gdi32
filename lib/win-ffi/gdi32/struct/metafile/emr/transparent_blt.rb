require 'win-ffi/core/struct/rectl'
require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrtransparentblt
    class EMRTRANSPARENTBLT < FFIAdditions::Struct
      attr_accessor :emr,
                    :rclBounds,
                    :xDest,
                    :yDest,
                    :cxDest,
                    :cyDest,
                    :dwRop,
                    :xSrc,
                    :ySrc,
                    :xformSrc,
                    :crBkColorSrc,
                    :iUsageSrc,
                    :offBmiSrc,
                    :cbBmiSrc,
                    :offBitsSrc,
                    :cbBitsSrc,
                    :cxSrc,
                    :cySrc

      layout emr:          EMR,
             rclBounds:    RECTL, # Inclusive-inclusive bounds in device units
             xDest:        :long,
             yDest:        :long,
             cxDest:       :long,
             cyDest:       :long,
             dwRop:        :dword,
             xSrc:         :long,
             ySrc:         :long,
             xformSrc:     XFORM, # Source DC transform
             crBkColorSrc: :colorref, # Source DC BkColor in RGB
             iUsageSrc:    :dword, # Source bitmap info color table usage (DIB_RGB_COLORS)
             offBmiSrc:    :dword, # Offset to the source BITMAPINFO structure
             cbBmiSrc:     :dword, # Size of the source BITMAPINFO structure
             offBitsSrc:   :dword, # Offset to the source bitmap bits
             cbBitsSrc:    :dword, # Size of the source bitmap bits
             cxSrc:        :long,
             cySrc:        :long
    end
  end
end