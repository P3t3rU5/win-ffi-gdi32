module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagkerningpair
    class KERNINGPAIR < FFIAdditions::Struct
      def wFirst; end
      def wFirst=(v); end
      def wSecond; end
      def wSecond=(v); end
      def iKernAmount; end
      def iKernAmount=(v); end

      layout wFirst:      :word,
             wSecond:     :word,
             iKernAmount: :int
    end
  end
end