require_relative 'palette_entry'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taglogpalette
    class LOGPALETTE < FFIAdditions::Struct
      def palVersion; end
      def palVersion=(v) end
      def palNumEntries; end
      def palNumEntries=(v) end
      def palPalEntry; end
      def palPalEntry=(v) end

      layout palVersion:    :word,
             palNumEntries: :word,
             palPalEntry:   [PALETTEENTRY, 1]
    end
  end
end