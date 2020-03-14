require 'win-ffi/core/struct/rectl'

require_relative '../emr'
require_relative '../../transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrstretchdibits
    class EMRSTRETCHDIBITS < FFIAdditions::Struct
      attr_accessor :emr,
                    :rclBounds,
                    :xDest,
                    :yDest,
                    :xSrc,
                    :ySrc,
                    :cxSrc,
                    :cySrc,
                    :offBmiSrc,
                    :cbBmiSrc,
                    :offBitsSrc,
                    :cbBitsSrc,
                    :iUsageSrc,
                    :dwRop,
                    :cxDest,
                    :cyDest

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
             dwRop:      :dword,
             cxDest:     :long,
             cyDest:     :long
    end
  end
end