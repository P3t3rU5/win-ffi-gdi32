require 'win-ffi/gdi32/struct/text/axis_info'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183360(v=vs.85).aspx
    class AXESLIST < FFIAdditions::Struct
      layout axlReserved:      :dword,
             axlNumAxes:       :dword,
             axlAxisInfo: AXISINFO.ptr
    end
  end
end