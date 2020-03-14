require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/points'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolypolyline16
    class EMRPOLYPOLYLINE16 < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :nPolys, :cpts, :aPolyCounts, :apts

      layout emr:         EMR,
             rclBounds:   RECTL,
             nPolys:      :dword,
             cpts:        :dword,
             aPolyCounts: [:dword, 1],
             apts:        [POINTS, 1]
    end

    class EMRPOLYPOLYGON16 < EMRPOLYPOLYLINE16; end
  end
end