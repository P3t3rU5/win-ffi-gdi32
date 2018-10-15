require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrpolydraw
    class EMRPOLYDRAW < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def cptl; end
      def cptl=(v) end
      def aptl; end
      def aptl=(v) end
      def abTypes; end
      def abTypes=(v) end

      layout emr:       EMR,
             rclBounds: RECTL,
             cptl:      :dword,
             aptl:      [POINTL, 1],
             abTypes:   [:byte, 1]
    end
  end
end