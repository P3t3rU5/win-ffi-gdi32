require 'win-ffi/core/struct/pointl'
require 'win-ffi/core/struct/rectl'

module WinFFI
  module Gdi32
    # Base font record type for the enhanced metafile.
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrtext
    class EMRTEXT < FFIAdditions::Struct
      attr_accessor :ptlReference,
                    :nChars,
                    :offString,
                    :fOptions,
                    :rcl,
                    :offDx

      layout ptlReference: POINTL,
             nChars:       :dword,
             offString:    :dword, # Offset to the string
             fOptions:     :dword,
             rcl:          RECTL,
             offDx:        :dword  # Offset to the inter-character spacing array.  This is always given.
    end
  end
end