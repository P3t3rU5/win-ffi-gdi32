require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrplgblt
    class EMRPLGBLT < FFIAdditions::Struct
      attr_accessor :emr,
                    :rclBounds,
                    :aptlDest,
                    :xSrc,
                    :ySrc,
                    :cxSrc,
                    :cySrc,
                    :xformSrc,
                    :crBkColorSrc,
                    :iUsageSrc,
                    :offBmiSrc,
                    :cbBmiSrc,
                    :offBitsSrc,
                    :cbBitsSrc,
                    :xMask,
                    :yMask,
                    :iUsageMask,
                    :offBmiMask,
                    :cbBmiMask,
                    :offBitsMask,
                    :cbBitsMask

      layout emr:          EMR,
             rclBounds:    RECTL,
             aptlDest:     [POINTL, 3],
             xSrc:        :long,
             ySrc:        :long,
             cxSrc:       :long,
             cySrc:       :long,
             xformSrc:     XFORM,
             crBkColorSrc: :colorref,
             iUsageSrc:    :dword,
             offBmiSrc:    :dword,
             cbBmiSrc:     :dword,
             offBitsSrc:   :dword,
             cbBitsSrc:    :dword,
             xMask:        :long,
             yMask:        :long,
             iUsageMask:   :dword,
             offBmiMask:   :dword,
             cbBmiMask:    :dword,
             offBitsMask:  :dword,
             cbBitsMask:   :dword
    end
  end
end