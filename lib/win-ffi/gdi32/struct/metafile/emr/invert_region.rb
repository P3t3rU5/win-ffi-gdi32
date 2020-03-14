require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrinvertrgn
    class EMRINVERTRGN < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :cbRgnData, :RgnData

      layout emr:       EMR,
             rclBounds: RECTL,
             cbRgnData: :dword,
             RgnData:   [:byte, 1]
    end

    class EMRPAINTRGN < EMRINVERTRGN; end
  end
end