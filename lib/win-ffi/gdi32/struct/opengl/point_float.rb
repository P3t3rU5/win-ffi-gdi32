module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_pointfloat
    class POINTFLOAT < FFIAdditions::Struct
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end

      layout x: :float,
             y: :float
    end
  end
end