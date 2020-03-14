require_relative '../emr'
require_relative 'text'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrexttextouta
    class EMREXTTEXTOUT < FFIAdditions::Struct
      attr_accessor :emr,
                    :rclBounds,
                    :iGraphicsMode,
                    :exScale,
                    :eyScale,
                    :emrtext

      layout emr:           EMR,
             rclBounds:     RECTL,
             iGraphicsMode: :dword,
             exScale:       :float,
             eyScale:       :float,
             emrtext:       EMRTEXT
    end
  end
end