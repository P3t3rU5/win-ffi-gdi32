module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_abc
    class ABC < FFIAdditions::Struct
      def abcA; end
      def abcA=(v); end
      def abcB; end
      def abcB=(v); end
      def abcC; end
      def abcC=(v); end

      layout abcA: :int,
             abcB: :uint,
             abcC: :int
    end
  end
end