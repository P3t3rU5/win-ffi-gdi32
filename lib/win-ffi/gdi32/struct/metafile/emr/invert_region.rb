require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrinvertrgn
    class EMRINVERTRGN < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def cbRgnData; end
      def cbRgnData=(v) end
      def RgnData; end
      def RgnData=(v) end

      layout emr:       EMR,
             rclBounds: RECTL,
             cbRgnData: :dword,
             RgnData:   [:byte, 1]
    end

    class EMRPAINTRGN < EMRINVERTRGN; end
  end
end