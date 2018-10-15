require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrglsboundedrecord
    class EMRGLSBOUNDEDRECORD < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBounds; end
      def rclBounds=(v) end
      def cbData; end
      def cbData=(v) end
      def Data; end
      def Data=(v) end

      layout emr:    EMR,
             rclBox: RECTL,
             cbData: :dword,
             Data:   [:byte, 1]
    end
  end
end