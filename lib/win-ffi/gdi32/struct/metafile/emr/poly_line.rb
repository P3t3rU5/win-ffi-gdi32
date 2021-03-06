require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolyline
    class EMRPOLYLINE < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :cptl, :aptl

      layout emr:       EMR,
             rclBounds: RECTL,
             cptl:      :dword,
             aptl:      [POINTL, 1]
    end

    class EMRPOLYBEZIER   < EMRPOLYLINE; end
    class EMRPOLYGON      < EMRPOLYLINE; end
    class EMRPOLYBEZIERTO < EMRPOLYLINE; end
    class EMRPOLYLINETO   < EMRPOLYLINE; end
  end
end