require 'win-ffi/gdi32'

require 'win-ffi/core/struct/rect'

module WinFFI
  module Gdi32
    class RGNDATAHEADER < FFIAdditions::Struct
      layout dwSize:   :dword,
             iType:    :dword,
             nCount:   :dword,
             nRgnSize: :dword,
             rcBound:    RECT

      def initialize
        super
        self[:dwSize] = self.size
      end
    end
  end
end