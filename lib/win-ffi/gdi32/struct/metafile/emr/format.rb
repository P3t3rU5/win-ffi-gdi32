module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrformat
    class EMRFORMAT < FFIAdditions::Struct
      def dSignature; end
      def dSignature=(v) end
      def nVersion; end
      def nVersion=(v) end
      def cbData; end
      def cbData=(v) end
      def offData; end
      def offData=(v) end

      layout dSignature: :dword,
             nVersion:   :dword,
             cbData:     :dword,
             offData:    :dword
    end
  end
end