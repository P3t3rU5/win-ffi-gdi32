require 'win-ffi/gdi32/enum/pen/pen_style'

require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # Logical Pen
    # https://msdn.microsoft.com/en-us/library/dd145041(v=vs.85).aspx
    class LOGPEN < FFIAdditions::Struct
      layout lopnStyle:  PenStyle,
             lopnWidth:     POINT,
             lopnColor: :colorref
    end
  end
end