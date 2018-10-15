require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemreof
    class EMREOF < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def nPalEntries; end
      def nPalEntries=(v) end
      def offPalEntries; end
      def offPalEntries=(v) end
      def nSizeLast; end
      def nSizeLast=(v) end

      layout emr:           EMR,
             nPalEntries:   :dword, # Number of palette entries
             offPalEntries: :dword, # Offset to the palette entries
             nSizeLast:     :dword  # Same as nSize and must be the last DWORD of the record.
                                    # The palette entries, if exist, precede this field.
    end
  end
end