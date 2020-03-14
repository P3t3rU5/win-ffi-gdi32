require_relative '../../enum/color/palette_entry_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-logpalette
    class PALETTEENTRY < FFIAdditions::Struct
      attr_accessor :peRed, :peGreen, :peBlue, :peFlags

      layout peRed:   :byte,
             peGreen: :byte,
             peBlue:  :byte,
             peFlags: PaletteEntryFlag
    end
  end
end