require_relative '../emr'

module WinFFI
  module Gdi32
    class EMRSETICMPROFILE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def cbName; end
      def cbName=(v) end
      def cbData; end
      def cbData=(v) end
      def Data; end
      def Data=(v) end

      layout emr:     EMR,
             dwFlags: :dword,
             cbName:  :dword,
             cbData:  :int,
             Data:    [:byte, 1]
    end
  end
end