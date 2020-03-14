require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/points'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolydraw16
    class EMRPOLYDRAW16 < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :cpts, :apts, :abTypes

      layout emr:       EMR,
             rclBounds: RECTL,
             cpts:      :dword,
             apts:      [POINTS, 1],
             abTypes:   [:byte, 1]
    end
  end
end