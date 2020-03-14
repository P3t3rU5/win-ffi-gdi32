require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolydraw
    class EMRPOLYDRAW < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :cptl, :aptl, :abTypes

      layout emr:       EMR,
             rclBounds: RECTL,
             cptl:      :dword,
             aptl:      [POINTL, 1],
             abTypes:   [:byte, 1]
    end
  end
end