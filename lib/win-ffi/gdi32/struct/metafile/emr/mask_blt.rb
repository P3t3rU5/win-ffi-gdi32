require 'win-ffi/core/struct/rectl'

require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrmaskblt
    class EMRMASKBLT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def xDest; end
      def xDest=(v) end
      def yDest; end
      def yDest=(v) end
      def cxDest; end
      def cxDest=(v) end
      def cyDest; end
      def cyDest=(v) end
      def dwRop; end
      def dwRop=(v) end
      def xSrc; end
      def xSrc=(v) end
      def ySrc; end
      def ySrc=(v) end
      def xformSrc; end
      def xformSrc=(v) end
      def crBkColorSrc; end
      def crBkColorSrc=(v) end
      def iUsageSrc; end
      def iUsageSrc=(v) end
      def offBmiSrc; end
      def offBmiSrc=(v) end
      def cbBmiSrc; end
      def cbBmiSrc=(v) end
      def offBitsSrc; end
      def offBitsSrc=(v) end
      def cbBitsSrc; end
      def cbBitsSrc=(v) end
      def xMask; end
      def xMask=(v) end
      def yMask; end
      def yMask=(v) end
      def iUsageMask; end
      def iUsageMask=(v) end
      def offBmiMask; end
      def offBmiMask=(v) end
      def cbBmiMask; end
      def cbBmiMask=(v) end
      def offBitsMask; end
      def offBitsMask=(v) end
      def cbBitsMask; end
      def cbBitsMask=(v) end

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