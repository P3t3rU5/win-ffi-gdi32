require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/points'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolyline16
    class EMRPOLYLINE16 < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :cpts, :apts

      layout emr:       EMR,
             rclBounds: RECTL,
             cpts:      :dword,
             apts:      [POINTS, 1]
    end

    class EMRPOLYBEZIER16   < EMRPOLYLINE16; end
    class EMRPOLYGON16      < EMRPOLYLINE16; end
    class EMRPOLYBEZIERTO16 < EMRPOLYLINE16; end
    class EMRPOLYLINETO16   < EMRPOLYLINE16; end
  end
end