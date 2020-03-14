require 'win-ffi/core/struct/sizel'
require 'win-ffi/core/struct/rectl'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-enhmetaheader
    class ENHMETAHEADER < FFIAdditions::Struct
      attr_accessor :iType,
                    :nSize,
                    :rclBounds,
                    :rclFrame,
                    :dSignature,
                    :nVersion,
                    :nBytes,
                    :nRecords,
                    :nHandles,
                    :sReserved,
                    :nDescription,
                    :offDescription,
                    :nPalEntries,
                    :szlDevice,
                    :szlMillimeters,
                    :szlMicrometers

      layout iType:          :dword,
             nSize:          :dword,
             rclBounds:      RECTL,
             rclFrame:       RECTL,
             dSignature:     :dword,
             nVersion:       :dword,
             nBytes:         :dword,
             nRecords:       :dword,
             nHandles:       :word,
             sReserved:      :word,
             nDescription:   :dword,
             offDescription: :dword,
             nPalEntries:    :dword,
             szlDevice:      SIZEL,
             szlMillimeters: SIZEL,
             szlMicrometers: SIZEL
    end
  end
end