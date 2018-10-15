require 'win-ffi/core/struct/pointl'
require 'win-ffi/core/struct/rectl'

module WinFFI
  module Gdi32
    # Base font record type for the enhanced metafile.
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrtext
    class EMRTEXT < FFIAdditions::Struct
      def ptlReference; end
      def ptlReference=(v); end
      def nChars; end
      def nChars=(v); end
      def offString; end
      def offString=(v); end
      def fOptions; end
      def fOptions=(v); end
      def rcl; end
      def rcl=(v); end
      def offDx; end
      def offDx=(v); end

      layout ptlReference: POINTL,
             nChars:       :dword,
             offString:    :dword, # Offset to the string
             fOptions:     :dword,
             rcl:          RECTL,
             offDx:        :dword  # Offset to the inter-character spacing array.  This is always given.
    end
  end
end