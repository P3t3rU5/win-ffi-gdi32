module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-pathobj
    class PATHOBJ < FFIAdditions::Struct
      attr_accessor :fl, :cCurves

      layout fl:      :flong,
             cCurves: :ulong
    end
  end
end