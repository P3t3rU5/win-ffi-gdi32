require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrellipse
    class EMRELLIPSE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclBox; end
      def rclBox=(v) end

      layout emr:    EMR,
             rclBox: RECTL
    end

    class EMRRECTANGLE < EMRELLIPSE; end
  end
end