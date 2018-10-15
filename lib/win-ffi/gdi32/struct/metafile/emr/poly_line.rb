require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrpolyline
    class EMRPOLYLINE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def cptl; end
      def cptl=(v) end
      def aptl; end
      def aptl=(v) end

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