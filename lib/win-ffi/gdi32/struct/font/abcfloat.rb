module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_abcfloat
    class ABCFLOAT < FFIAdditions::Struct
      def abcfA; end
      def abcfA=(v); end
      def abcfB; end
      def abcfB=(v); end
      def abcfC; end
      def abcfC=(v); end

      layout abcfA: :float,
             abcfB: :float,
             abcfC: :int
    end
  end
end

