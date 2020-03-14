require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emroffsetcliprgn
    class EMROFFSETCLIPRGN < FFIAdditions::Struct
      attr_accessor :emr, :ptlOffset

      layout emr:       EMR,
             ptlOffset: POINTL
    end
  end
end