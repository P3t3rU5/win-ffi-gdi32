require 'win-ffi/core/struct/rect'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_rgndataheader
    class RGNDATAHEADER < FFIAdditions::Struct
      def dwSize; end
      def dwSize=(v) end
      def iType; end
      def iType=(v) end
      def nCount; end
      def nCount=(v) end
      def nRgnSize; end
      def nRgnSize=(v) end
      def rcBound; end
      def rcBound=(v) end

      layout dwSize:   :dword,
             iType:    :dword,
             nCount:   :dword,
             nRgnSize: :dword,
             rcBound:  RECT

      def initialize
        super
        self.dwSize = self.size
      end

      private :dwSize, :dwSize=
    end
  end
end