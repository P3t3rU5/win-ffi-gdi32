require 'win-ffi/core/struct/rectl'

require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrbitblt
    class EMRBITBLT < FFIAdditions::Struct
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
                    :cbBitsSrc

      layout emr:          EMR,
             rclBounds:    RECTL,
             xDest:        :long,
             yDest:        :long,
             cxDest:       :long,
             cyDest:       :long,
             dwRop:        :dword,
             xSrc:         :long,
             ySrc:         :long,
             xformSrc:     XFORM,
             crBkColorSrc: :colorref,
             iUsageSrc:    :dword,
             offBmiSrc:    :dword,
             cbBmiSrc:     :dword,
             offBitsSrc:   :dword,
             cbBitsSrc:    :dword
    end
  end
end