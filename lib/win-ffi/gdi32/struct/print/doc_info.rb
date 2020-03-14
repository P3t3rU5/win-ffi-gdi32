require_relative '../../enum/print/doc_info_type'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-docinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-docinfow
    class DOCINFO < FFIAdditions::Struct
      attr_accessor :cbSize, :lpszDocName, :lpszOutput, :lpszDatatype, :fwType

      layout cbSize:       :int,
             lpszDocName:  :string,
             lpszOutput:   :string,
             lpszDatatype: :string,
             fwType:       DocInfoType

      def initialize
        super
        self.cbSize = self.size
      end

      def lpszDocName=(lpszDocName)
        self.lpszDocName = FFI::MemoryPointer.from_string(lpszDocName)
      end

      private :cbSize, :cbSize=
    end
  end
end