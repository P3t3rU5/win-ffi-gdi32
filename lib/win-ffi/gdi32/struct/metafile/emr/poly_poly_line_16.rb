require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/points'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrpolypolyline
    class EMRPOLYPOLYLINE16 < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def nPolys; end
      def nPolys=(v) end
      def cpts; end
      def cpts=(v) end
      def aPolyCounts; end
      def aPolyCounts=(v) end
      def apts; end
      def apts=(v) end

      layout emr:         EMR,
             rclBounds:   RECTL,
             nPolys:      :dword,
             cpts:        :dword,
             aPolyCounts: [:dword, 1],
             apts:        [POINTS, 1]
    end

    class EMRPOLYPOLYGON16 < EMRPOLYPOLYLINE16; end
  end
end