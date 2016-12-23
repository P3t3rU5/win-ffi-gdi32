require 'win-ffi/gdi32/struct/metafile/pointl'
require 'win-ffi/gdi32/struct/metafile/rectl'

module WinFFI
  module Gdi32
    # Base text record type for the enhanced metafile.
    # https://msdn.microsoft.com/en-us/library/dd162591(v=vs.85).aspx
    class EMRTEXT < FFIAdditions::Struct
      layout ptlReference: POINTL,
             nChars:       :dword,
             offString:    :dword, # Offset to the string
             fOptions:     :dword,
             rcl:           RECTL,
             offDx:        :dword  # Offset to the inter-character spacing array.  This is always given.
    end
  end
end