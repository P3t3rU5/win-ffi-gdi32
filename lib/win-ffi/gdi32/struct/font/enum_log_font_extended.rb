require 'win-ffi/gdi32/struct/font/log_font'
require 'win-ffi/gdi32/constant_base'

require_relative '../../constant'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumlogfontexa
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enumlogfontexw
    class ENUMLOGFONTEX < FFIAdditions::Struct
      attr_accessor :elfLogFont, :elfFullName, :elfStyle, :elfScript

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