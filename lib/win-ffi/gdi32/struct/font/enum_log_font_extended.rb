require 'win-ffi/gdi32/struct/font/log_font'
require 'win-ffi/gdi32/constant_base'

require_relative '../../constant'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagenumlogfontexa
    class ENUMLOGFONTEX < FFIAdditions::Struct
      def elfLogFont; end
      def elfLogFont=(v); end
      def elfFullName; end
      def elfFullName=(v); end
      def elfStyle; end
      def elfStyle=(v); end
      def elfScript; end
      def elfScript=(v); end

      layout elfLogFont:  LOGFONT,
             elfFullName: WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:    WideInlineString.new(LF_FACESIZE),
             elfScript:   WideInlineString.new(LF_FACESIZE)

      encoded_setter(:elfFullName)
      encoded_setter(:elfStyle)
      encoded_setter(:elfScript)
    end
  end
end