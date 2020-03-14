require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolypolyline
    class EMRPOLYPOLYLINE < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :nPolys, :cptl, :aPolyCounts, :aptl

      layout emr:         EMR,
             rclBounds:   RECTL,
             nPolys:      :dword,
             cptl:        :dword,
             aPolyCounts: [:dword, 1],
             aptl:        [POINTL, 1]
    end

    class EMRPOLYPOLYGON < EMRPOLYPOLYLINE; end
  end
end