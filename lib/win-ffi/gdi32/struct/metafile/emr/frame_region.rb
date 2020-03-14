require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrframergn
    class EMRFRAMERGN < FFIAdditions::Struct
      attr_accessor :emr,
                    :rclBounds,
                    :cbRgnData,
                    :ihBrush,
                    :szlStroke,
                    :RgnData

      layout emr:       EMR,
             rclBounds: RECTL,
             cbRgnData: :dword,
             ihBrush:   :dword,
             szlStroke: SIZEL,
             RgnData:   [:byte, 1]
    end
  end
end