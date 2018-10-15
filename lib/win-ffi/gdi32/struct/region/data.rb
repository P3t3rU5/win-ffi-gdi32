require_relative 'data_header'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-_rgndata
    class RGNDATA < FFIAdditions::Struct
      def rdh; end
      def rdh=(v) end
      def Buffer; end
      def Buffer=(v) end

      layout rdh:    RGNDATAHEADER,
             Buffer: [:char, 1]
    end
  end
end