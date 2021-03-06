require 'win-ffi/core/struct/sizel'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetviewportorgex
    class EMRSETVIEWPORTORGEX < FFIAdditions::Struct
      attr_accessor :emr, :ptlOrigin

      layout emr:       EMR,
             ptlOrigin: POINTL
    end

    EMRSETWINDOWORGEX = EMRSETVIEWPORTORGEX
    EMRSETBRUSHORGEX  = EMRSETVIEWPORTORGEX
  end
end