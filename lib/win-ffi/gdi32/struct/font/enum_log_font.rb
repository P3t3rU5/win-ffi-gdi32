require 'win-ffi/gdi32/constant_base'

require_relative '../../constant'
require_relative '../../../../../../win-ffi-core/lib/win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module Gdi32
    # Structure passed to FONTENUMPROC
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumlogfonta
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumlogfontw
    class ENUMLOGFONT < FFIAdditions::Struct
      attr_accessor :elfLogFont, :elfFullName, :elfStyle

      layout elfLogFont:  LOGFONT,
             elfFullName: WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:    WideInlineString.new(LF_FACESIZE)

      alias_method :family, :elfFullName
      alias_method :style,  :elfStyle
      alias_method :font, :elfLogFont
    end
  end
end