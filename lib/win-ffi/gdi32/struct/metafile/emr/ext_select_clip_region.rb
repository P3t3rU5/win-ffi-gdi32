require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrextselectcliprgn
    class EMREXTSELECTCLIPRGN < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def cbRgnData; end
      def cbRgnData=(v) end
      def iMode; end
      def iMode=(v) end
      def RgnData; end
      def RgnData=(v) end

      layout emr:       EMR,
             cbRgnData: :dword,
             iMode:     :dword,
             RgnData:   [:byte, 1]
    end
  end
end