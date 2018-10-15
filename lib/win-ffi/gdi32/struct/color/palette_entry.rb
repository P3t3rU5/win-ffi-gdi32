require_relative '../../enum/color/palette_entry_flag'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162769?f=255&MSPPError=-2147217396
    class PALETTEENTRY < FFIAdditions::Struct
      def peRed; end
      def peRed=(v) end
      def peGreen; end
      def peGreen=(v) end
      def peBlue; end
      def peBlue=(v) end
      def peFlags; end
      def peFlags=(v) end

      layout peRed:   :byte,
             peGreen: :byte,
             peBlue:  :byte,
             peFlags: PaletteEntryFlag
    end
  end
end