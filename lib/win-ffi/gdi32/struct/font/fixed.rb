module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_fixed
    class FIXED < FFIAdditions::Struct
      def fract; end
      def fract=(v); end
      def value; end
      def value=(v); end

      layout fract: :word,
             value: :short
    end
  end
end