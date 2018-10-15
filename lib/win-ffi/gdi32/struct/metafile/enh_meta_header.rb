require 'win-ffi/core/struct/sizel'
require 'win-ffi/core/struct/rectl'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagenhmetarecord
    class ENHMETAHEADER < FFIAdditions::Struct
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