require_relative 'axis_info'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagaxeslista
    class AXESLIST < FFIAdditions::Struct
      def axlReserved; end
      def axlReserved=(v); end
      def axlNumAxes; end
      def axlNumAxes=(v); end
      def axlAxisInfo; end
      def axlAxisInfo=(v); end

      layout axlReserved: :dword,
             axlNumAxes:  :dword,
             axlAxisInfo: AXISINFO.ptr
    end
  end
end