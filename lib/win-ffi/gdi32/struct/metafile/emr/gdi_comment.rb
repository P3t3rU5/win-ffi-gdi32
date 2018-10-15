require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrgdicomment
    class EMRGDICOMMENT < FFIAdditions::Struct
      def emr; end
      def emr=(v); end
      def cbData; end
      def cbData=(v); end
      def Data; end
      def Data=(v); end

      layout emr:    EMR,
             cbData: :dword, # Size of data in bytes
             Data:   [:byte, 1]
    end
  end
end