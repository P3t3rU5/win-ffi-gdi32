require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagcolorcorrectpalette
    class EMRCOLORCORRECTPALETTE < FFIAdditions::Struct
      def emr; end
      def emr=(v) end
      def ihPalette; end
      def ihPalette=(v) end
      def nFirstEntry; end
      def nFirstEntry=(v) end
      def nPalEntries; end
      def nPalEntries=(v) end
      def nReserved; end
      def nReserved=(v) end

      layout emr:         EMR,
             ihPalette:   :dword, # Palette handle index
             nFirstEntry: :dword, # Index of first entry to correct
             nPalEntries: :dword, # Number of palette entries to correct
             nReserved:   :dword  # Reserved
    end
  end
end