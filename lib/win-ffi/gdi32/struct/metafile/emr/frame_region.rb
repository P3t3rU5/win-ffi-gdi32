require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrframergn
    class EMRFRAMERGN < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def cbRgnData; end
      def cbRgnData=(v) end
      def ihBrush; end
      def ihBrush=(v) end
      def szlStroke; end
      def szlStroke=(v) end
      def RgnData; end
      def RgnData=(v) end

      layout emr:       EMR,
             rclBounds: RECTL,
             cbRgnData: :dword,
             ihBrush:   :dword,
             szlStroke: SIZEL,
             RgnData:   [:byte, 1]
    end
  end
end