require 'win-ffi/core/struct/rectl'

require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrsetdibitstodevice
    class EMRSETDIBITSTODEVICE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def xDest; end
      def xDest=(v) end
      def yDest; end
      def yDest=(v) end
      def xSrc; end
      def xSrc=(v) end
      def ySrc; end
      def ySrc=(v) end
      def cxSrc; end
      def cxSrc=(v) end
      def cySrc; end
      def cySrc=(v) end
      def offBmiSrc; end
      def offBmiSrc=(v) end
      def cbBmiSrc; end
      def cbBmiSrc=(v) end
      def offBitsSrc; end
      def offBitsSrc=(v) end
      def cbBitsSrc; end
      def cbBitsSrc=(v) end
      def iUsageSrc; end
      def iUsageSrc=(v) end
      def iStartScan; end
      def iStartScan=(v) end
      def cScans; end
      def cScans=(v) end

      layout emr:        EMR,
             rclBounds:  RECTL,
             xDest:      :long,
             yDest:      :long,
             xSrc:       :long,
             ySrc:       :long,
             cxSrc:      :long,
             cySrc:      :long,
             offBmiSrc:  :dword,
             cbBmiSrc:   :dword,
             offBitsSrc: :dword,
             cbBitsSrc:  :dword,
             iUsageSrc:  :dword,
             iStartScan: :dword,
             cScans:     :dword
    end
  end
end