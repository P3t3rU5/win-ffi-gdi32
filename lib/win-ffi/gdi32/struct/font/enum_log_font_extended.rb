require 'win-ffi/gdi32/struct/font/log_font'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162627(v=vs.85).aspx
    class ENUMLOGFONTEX < FFIAdditions::Struct
      layout elfLogFont:                                LOGFONT,
             elfFullName: WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:        WideInlineString.new(LF_FACESIZE),
             elfScript:       WideInlineString.new(LF_FACESIZE)

      encoded_setter(:elfFullName)
      encoded_setter(:elfStyle)
      encoded_setter(:elfScript)
    end
  end
end