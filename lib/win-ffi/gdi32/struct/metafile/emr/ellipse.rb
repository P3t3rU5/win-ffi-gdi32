require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrellipse
    class EMRELLIPSE < FFIAdditions::Struct
      attr_accessor :emr, :rclBox

      layout emr:    EMR,
             rclBox: RECTL
    end

    class EMRRECTANGLE < EMRELLIPSE; end
  end
end