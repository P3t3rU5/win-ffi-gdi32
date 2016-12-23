require 'win-ffi/gdi32/enum/print/doc_info_type'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183574(v=vs.85).aspx
    class DOCINFO < FFIAdditions::Struct
      layout cbSize:          :int,
             lpszDocName:  :string,
             lpszOutput:   :string,
             lpszDatatype: :string,
             fwType:   DocInfoType

      def initialize
        super
        self[:cbSize] = self.size
      end

      def lpszDocName=(lpszDocName)
        self[:lpszDocName] = FFI::MemoryPointer.from_string(lpszDocName)
      end
    end
  end
end