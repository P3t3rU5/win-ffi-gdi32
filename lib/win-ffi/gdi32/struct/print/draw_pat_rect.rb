require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_drawpatrect
    class DRAWPATRECT < FFIAdditions::Struct
      def ptPosition; end
      def ptPosition=(v); end
      def ptSize; end
      def ptSize=(v); end
      def wStyle; end
      def wStyle=(v); end
      def wPattern; end
      def wPattern=(v); end

      layout ptPosition: POINT,
             ptSize:     POINT,
             wStyle:     :word,
             wPattern:   :word
    end
  end
end