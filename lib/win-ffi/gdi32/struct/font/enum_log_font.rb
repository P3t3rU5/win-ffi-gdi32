require 'win-ffi/gdi32/constant_base'

require_relative '../../constant'
require_relative '../../../../../../win-ffi-core/lib/win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module Gdi32
    # Structure passed to FONTENUMPROC
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagenumlogfonta
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagenumlogfontw
    class ENUMLOGFONT < FFIAdditions::Struct
      def elfLogFont; end
      def elfLogFont=(v); end
      def elfFullName; end
      def elfFullName=(v); end
      def elfStyle; end
      def elfStyle=(v); end

      layout elfLogFont:  LOGFONT,
             elfFullName: WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:    WideInlineString.new(LF_FACESIZE)

      alias_method :family, :elfFullName
      alias_method :style,  :elfStyle
      alias_method :font, :elfLogFont
    end
  end
end