require 'win-ffi/core/struct/rect'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-rgndataheader
    class RGNDATAHEADER < FFIAdditions::Struct
      attr_accessor :dwSize, :iType, :nCount, :nRgnSize, :rcBound

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