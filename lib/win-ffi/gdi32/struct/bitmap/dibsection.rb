require_relative '../bitmap'
require_relative '../bitmap/info_header'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-dibsection
    class DIBSECTION < FFIAdditions::Struct
      attr_accessor :dsBm,
                    :dsBmih,
                    :dsBitfields,
                    :dshSection,
                    :dsOffset

      layout dsBm:        BITMAP,
             dsBmih:      BITMAPINFOHEADER,
             dsBitfields: [:dword, 3],
             dshSection: :handle,
             dsOffset:   :dword
    end
  end
end

