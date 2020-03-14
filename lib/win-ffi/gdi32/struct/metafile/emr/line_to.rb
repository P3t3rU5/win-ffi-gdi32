require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrlineto
    class EMRLINETO < FFIAdditions::Struct
      attr_accessor :emr, :ptl

      layout emr: EMR,
             ptl: POINTL  # Palette handle index, background mode only

      class EMRMOVETOEX < EMRLINETO; end
    end
  end
end