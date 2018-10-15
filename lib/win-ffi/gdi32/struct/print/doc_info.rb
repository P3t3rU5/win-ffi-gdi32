require_relative '../../enum/print/doc_info_type'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183574(v=vs.85).aspx
    class DOCINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def lpszDocName; end
      def lpszDocName=(v) end
      def lpszOutput; end
      def lpszOutput=(v) end
      def lpszDatatype; end
      def lpszDatatype=(v) end
      def fwType; end
      def fwType=(v) end

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