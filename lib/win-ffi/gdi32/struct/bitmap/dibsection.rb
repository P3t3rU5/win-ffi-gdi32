require_relative '../bitmap'
require_relative '../bitmap/info_header'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagdibsection
    class DIBSECTION < FFIAdditions::Struct
      layout dsBm:        BITMAP,
             dsBmih:      BITMAPINFOHEADER,
             dsBitfields: [:dword, 3],
             dshSection: :handle,
             dsOffset:   :dword
    end
  end
end

