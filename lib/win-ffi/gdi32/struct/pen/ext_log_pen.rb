require 'win-ffi/gdi32/enum/pen/pen_style'
require 'win-ffi/gdi32/struct/brush/log_brush'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162711(v=vs.85).aspx
    class EXTLOGPEN < FFIAdditions::Struct
      layout elpPenStyle:      PenStyle,
             elpWidth:           :dword,
             elpBrushStyle:    LOGBRUSH,
             elpColor:        :colorref,
             elpHatch:           :ulong,
             elpNumEntries:      :dword,
             elpStyleEntry: [:dword, 1]
    end
  end
end