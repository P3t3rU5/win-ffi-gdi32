require 'win-ffi/gdi32/struct/color/palette_entry'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145040(v=vs.85).aspx
    class LOGPALETTE < FFIAdditions::Struct
      layout palVersion:              :word,
             palNumEntries:           :word,
             palPalEntry: [PALETTEENTRY, 1]
    end
  end
end