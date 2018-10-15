module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taglocalesignature
    class LOCALESIGNATURE < FFIAdditions::Struct
      def lsUsb; end
      def lsUsb=(v) end
      def lsCsbDefault; end
      def lsCsbDefault=(v) end
      def lsCsbSupported; end
      def lsCsbSupported=(v) end

      layout lsUsb:          [:dword, 4],
             lsCsbDefault:   [:dword, 2],
             lsCsbSupported: [:dword, 2]
    end
  end
end