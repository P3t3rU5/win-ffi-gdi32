require_relative 'axis_info'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-axeslista
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-axeslistw
    class AXESLIST < FFIAdditions::Struct
      attr_accessor :axlReserved, :axlNumAxes, :axlAxisInfo

      layout axlReserved: :dword,
             axlNumAxes:  :dword,
             axlAxisInfo: [AXISINFO, MM_MAX_NUMAXES]
    end
  end
end