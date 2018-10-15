require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrpolypolyline
    class EMRPOLYPOLYLINE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def nPolys; end
      def nPolys=(v) end
      def cptl; end
      def cptl=(v) end
      def aPolyCounts; end
      def aPolyCounts=(v) end
      def aptl; end
      def aptl=(v) end

      layout emr:         EMR,
             rclBounds:   RECTL,
             nPolys:      :dword,
             cptl:        :dword,
             aPolyCounts: [:dword, 1],
             aptl:        [POINTL, 1]
    end

    class EMRPOLYPOLYGON < EMRPOLYPOLYLINE; end
  end
end