module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagfontsignature
    class FONTSIGNATURE < FFIAdditions::Struct
      def fsUsb; end
      def fsUsb=(v) end
      def fsCsb; end
      def fsCsb=(v) end

      layout fsUsb: [:dword, 4],
             fsCsb: [:dword, 2]
    end
  end
end