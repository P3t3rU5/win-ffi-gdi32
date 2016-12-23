require 'win-ffi/gdi32/struct/font/log_font'
require 'win-ffi/gdi32/constant'

module WinFFI
  module Gdi32
    # Structure passed to FONTENUMPROC
    # https://msdn.microsoft.com/en-us/library/dd162626(v=vs.85).aspx
    class ENUMLOGFONT < FFIAdditions::Struct
      layout elfLogFont:                                LOGFONT,
             elfFullName: WideInlineString.new(LF_FULLFACESIZE),
             elfStyle:        WideInlineString.new(LF_FACESIZE)

      def family
        elfFullName
      end

      def style
        elfStyle
      end

      def font
        elfLogFont
      end
    end
  end
end