require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrcreatemonobrush
    class EMRCREATEMONOBRUSH < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihBrush; end
      def ihBrush=(v) end
      def iUsage; end
      def iUsage=(v) end
      def offBmi; end
      def offBmi=(v) end
      def cbBmi; end
      def cbBmi=(v) end
      def offBits; end
      def offBits=(v) end
      def cbBits; end
      def cbBits=(v) end

      layout emr:     EMR,
             ihBrush: :dword,
             iUsage:  :dword,
             offBmi:  :dword,
             cbBmi:   :dword,
             offBits: :dword,
             cbBits:  :dword
    end
  end
end