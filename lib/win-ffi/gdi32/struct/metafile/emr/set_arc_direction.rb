require_relative '../emr'

module WinFFI
  module Gdi32
    class EMRSETARCDIRECTION < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def iArcDirection; end
      def iArcDirection=(v) end

      layout emr:           EMR,
             iArcDirection: :dword  # Specifies the arc direction in the advanced graphics mode.
    end
  end
end