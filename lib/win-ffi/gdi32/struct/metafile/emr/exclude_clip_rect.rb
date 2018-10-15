require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrexcludecliprect
    class EMREXCLUDECLIPRECT < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def rclClip; end
      def rclClip=(v) end

      layout emr:     EMR,
             rclClip: RECTL
    end

    class EMRINTERSECTCLIPRECT < EMREXCLUDECLIPRECT; end
  end
end