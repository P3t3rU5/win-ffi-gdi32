require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/pointl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrarc
    class EMRARC < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :ptlStart, :ptlEnd

      layout emr:       EMR,
             rclBounds: RECTL,
             ptlStart:  POINTL,
             ptlEnd:    POINTL
    end

    class EMRARCTO < EMRARC; end
    class EMRCHORD < EMRARC; end
    class EMRPIE   < EMRARC; end
  end
end