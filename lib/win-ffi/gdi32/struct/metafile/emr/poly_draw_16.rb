require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/points'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrpolydraw16
    class EMRPOLYDRAW16 < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def cpts; end
      def cpts=(v) end
      def apts; end
      def apts=(v) end
      def abTypes; end
      def abTypes=(v) end

      layout emr:       EMR,
             rclBounds: RECTL,
             cpts:      :dword,
             apts:      [POINTS, 1],
             abTypes:   [:byte, 1]
    end
  end
end