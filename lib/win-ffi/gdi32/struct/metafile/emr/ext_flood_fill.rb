require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrextfloodfill
    class EMREXTFLOODFILL < FFIAdditions::Struct
      attr_accessor :emr, :ptlStart, :crColor, :iMode

      layout emr:      EMR,
             ptlStart: POINTL,
             crColor: :colorref,
             iMode:   :dword
    end
  end
end