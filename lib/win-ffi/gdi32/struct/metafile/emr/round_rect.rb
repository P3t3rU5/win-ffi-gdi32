require 'win-ffi/core/struct/rectl'
require 'win-ffi/core/struct/sizel'

require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrroundrect
    class EMRROUNDRECT < FFIAdditions::Struct
      attr_accessor :emr, :rclBox, :szlCorner

      layout emr:       EMR,
             rclBox:    RECTL,
             szlCorner: SIZEL
    end
  end
end