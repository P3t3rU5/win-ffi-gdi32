require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrfillpath
    class EMRFILLPATH < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds

      layout emr:       EMR,
             rclBounds: RECTL
    end

    class EMRSTROKEANDFILLPATH < EMRFILLPATH; end
    class EMRSTROKEPATH        < EMRFILLPATH; end
  end
end