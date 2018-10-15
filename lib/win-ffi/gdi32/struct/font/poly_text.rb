require 'win-ffi/core/struct/rect'

require_relative '../../enum/font/ext_text_out_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagpolytexta
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagpolytextw
    class POLYTEXT < FFIAdditions::Struct
      def x; end
      def x=(v); end
      def y; end
      def y=(v); end
      def n; end
      def n=(v); end
      def lpstr; end
      def lpstr=(v); end
      def uiFlags; end
      def uiFlags=(v); end
      def rcl; end
      def rcl=(v); end
      def pdx; end
      def pdx=(v); end

      layout x:       :int,
             y:       :int,
             n:       :uint,
             lpstr:   :string,
             uiFlags: ExtTextOutFlag,
             rcl:     RECT,
             pdx:     :pointer
    end
  end
end