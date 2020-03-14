module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-wcrun
    class WCRUN < FFIAdditions::Struct
      attr_accessor :wcLow, :cGlyphs, :phg

      layout wcLow:   :wchar,
             cGlyphs: :ushort,
             phg:     :pointer
    end
  end
end