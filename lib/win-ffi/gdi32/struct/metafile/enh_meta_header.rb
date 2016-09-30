require 'win-ffi/gdi32'

require 'win-ffi/gdi32/struct/metafile/rectl'
require 'win-ffi/core/struct/sizel'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162608(v=vs.85).aspx
    class ENHMETAHEADER < FFIAdditions::Struct
      layout iType:          :dword,
             nSize:          :dword,
             rclBounds:       RECTL,
             rclFrame:        RECTL,
             dSignature:     :dword,
             nVersion:       :dword,
             nBytes:         :dword,
             nRecords:       :dword,
             nHandles:        :word,
             sReserved:       :word,
             nDescription:   :dword,
             offDescription: :dword,
             nPalEntries:    :dword,
             szlDevice:       SIZEL,
             szlMillimeters:  SIZEL,
             szlMicrometers:  SIZEL
    end
  end
end