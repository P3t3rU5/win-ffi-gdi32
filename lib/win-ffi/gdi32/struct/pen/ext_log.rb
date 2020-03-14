require_relative '../../enum/pen/style'
require_relative '../brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-extlogpen
    class EXTLOGPEN < FFIAdditions::Struct
      attr_accessor :elpPenStyle,
                    :elpWidth,
                    :elpBrushStyle,
                    :elpColor,
                    :elpHatch,
                    :elpNumEntries,
                    :elpStyleEntry

      layout elpPenStyle:   PenStyle,
             elpWidth:      :dword,
             elpBrushStyle: LOGBRUSH,
             elpColor:      :colorref,
             elpHatch:      :ulong,
             elpNumEntries: :dword,
             elpStyleEntry: [:dword, 1]
    end

    EXTLOGPEN32 = EXTLOGPEN
  end
end