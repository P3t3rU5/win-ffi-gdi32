module WinFFI
  module Gdi32
    typedef :ushort, :color16
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_trivertex
    class TRIVERTEX < FFIAdditions::Struct
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end
      def Red; end
      def Red=(v); end
      def Green; end
      def Green=(v); end
      def Blue; end
      def Blue=(v); end
      def Alpha; end
      def Alpha=(v); end

      layout x:     :long,
             y:     :long,
             Red:   :color16,
             Green: :color16,
             Blue:  :color16,
             Alpha: :color16
    end
  end
end