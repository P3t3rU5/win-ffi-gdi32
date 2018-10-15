require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrglsrecord
    class EMRGLSRECORD < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def cbData; end
      def cbData=(v) end
      def Data; end
      def Data=(v) end

      layout emr:    EMR,
             cbData: :dword,
             Data:   [:byte, 1]
    end
  end
end