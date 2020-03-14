require 'win-ffi/core/struct/rectl'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrglsboundedrecord
    class EMRGLSBOUNDEDRECORD < FFIAdditions::Struct
      attr_accessor :emr, :rclBounds, :cbData, :Data

      layout emr:    EMR,
             rclBox: RECTL,
             cbData: :dword,
             Data:   [:byte, 1]
    end
  end
end