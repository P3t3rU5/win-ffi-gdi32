require_relative 'palette_entry'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-logpalette
    class LOGPALETTE < FFIAdditions::Struct
      attr_accessor :palVersion, :palNumEntries, :palPalEntry

      layout palVersion:    :word,
             palNumEntries: :word,
             palPalEntry:   [PALETTEENTRY, 1]
    end
  end
end