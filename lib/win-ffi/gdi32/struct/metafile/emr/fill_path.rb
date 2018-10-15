require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrfillpath
    class EMRFILLPATH < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end

      layout emr:       EMR,
             rclBounds: RECTL
    end

    class EMRSTROKEANDFILLPATH < EMRFILLPATH; end
    class EMRSTROKEPATH        < EMRFILLPATH; end
  end
end