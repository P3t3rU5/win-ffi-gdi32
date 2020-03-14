require 'win-ffi/core/struct/sizel'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrsetviewportextex
    class EMRSETVIEWPORTEXTEX < FFIAdditions::Struct
      attr_accessor :emr, :szlExtent

      layout emr:       EMR,
             szlExtent: SIZEL
    end

    class EMRSETWINDOWEXTEX < EMRSETVIEWPORTEXTEX; end
  end
end