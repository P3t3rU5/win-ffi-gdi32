require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrarc
    class EMRARC < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def ptlStart; end
      def ptlStart=(v) end
      def ptlEnd; end
      def ptlEnd=(v) end

      layout emr:       EMR,
             rclBounds: RECTL,
             ptlStart:  POINTL,
             ptlEnd:    POINTL
    end

    class EMRARCTO < EMRARC; end
    class EMRCHORD < EMRARC; end
    class EMRPIE   < EMRARC; end
  end
end