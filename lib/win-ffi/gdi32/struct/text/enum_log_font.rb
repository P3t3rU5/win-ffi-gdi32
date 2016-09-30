require 'win-ffi/gdi32/struct/text/log_font'

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