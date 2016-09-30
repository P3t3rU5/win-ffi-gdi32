require 'win-ffi/gdi32'

require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162494(v=vs.85).aspx
    class DRAWPATRECT < FFIAdditions::Struct
      layout ptPosition: POINT,
             ptSize:     POINT,
             wStyle:     :word,
             wPattern:   :word
    end
  end
end