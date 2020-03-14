require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrexcludecliprect
    class EMREXCLUDECLIPRECT < FFIAdditions::Struct
      attr_accessor :emr, :rclClip

      layout emr:     EMR,
             rclClip: RECTL
    end

    class EMRINTERSECTCLIPRECT < EMREXCLUDECLIPRECT; end
  end
end