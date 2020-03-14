require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetpixelv
    class EMRSETPIXELV < FFIAdditions::Struct
      attr_accessor :emr, :ptlPixel, :crColor

      layout emr:      EMR,
             ptlPixel: POINTL,
             crColor: :colorref
    end
  end
end