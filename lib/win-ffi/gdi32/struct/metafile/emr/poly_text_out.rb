require_relative '../emr'
require_relative 'text'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrpolytextouta
    class EMRPOLYTEXTOUT < FFIAdditions::Struct
      attr_accessor :emr,
                    :rclBounds,
                    :iGraphicsMode,
                    :exScale,
                    :eyScale,
                    :cString,
                    :emrtext

      layout emr:           EMR,
             rclBounds:     RECTL,
             iGraphicsMode: :dword,
             exScale:       :float,
             eyScale:       :float,
             cString:       :long,
             emrtext:       EMRTEXT
    end
  end
end