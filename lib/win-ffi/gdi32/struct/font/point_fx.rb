require_relative 'fixed'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagpointfx
    class POINTFX < FFIAdditions::Struct
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end

      layout x: FIXED,
             y: FIXED
    end
  end
end