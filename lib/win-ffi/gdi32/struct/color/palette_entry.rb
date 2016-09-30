require 'win-ffi/gdi32/enum/color/palette_entry_flag'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162769(v=vs.85).aspx
    class PALETTEENTRY < FFIAdditions::Struct
      layout peRed:              :byte,
             peGreen:            :byte,
             peBlue:             :byte,
             peFlags: PaletteEntryFlag
    end
  end
end