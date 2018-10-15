require_relative '../emr'

module WinFFI
  module Gdi32
    class EMREXTESCAPE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def iEscape; end
      def iEscape=(v) end
      def cbDriver; end
      def cbDriver=(v) end
      def cbEscData; end
      def cbEscData=(v) end
      def EscData; end
      def EscData=(v) end

      layout emr:       EMR,
             iEscape:   :int,
             cbDriver:  :int,
             cbEscData: :int,
             EscData:   [:byte, 1]
    end
  end
end