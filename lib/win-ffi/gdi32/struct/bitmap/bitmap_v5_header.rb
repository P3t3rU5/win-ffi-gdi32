require 'win-ffi/gdi32'

require 'win-ffi/gdi32/struct/windows_color_space/cie_xyz_triple'

module WinFFI
  module Gdi32
    class BITMAPV5HEADER < FFIAdditions::Struct
      layout bV5Size:            :dword,
             bV5Width:            :long,
             bV5Height:           :long,
             bV5Planes:           :word,
             bV5BitCount:         :word,
             bV5Compression:     :dword,
             bV5SizeImage:       :dword,
             bV5XPelsPerMeter:    :long,
             bV5YPelsPerMeter:    :long,
             bV5ClrUsed:         :dword,
             bV5ClrImportant:    :dword,
             bV5RedMask:         :dword,
             bV5GreenMask:       :dword,
             bV5BlueMask:        :dword,
             bV5AlphaMask:       :dword,
             bV5CSType:          :dword,
             bV5Endpoints: CIEXYZTRIPLE,
             bV5GammaRed:        :dword,
             bV5GammaGreen:      :dword,
             bV5GammaBlue:       :dword,
             bV5Intent:          :dword,
             bV5ProfileData:     :dword,
             bV5ProfileSize:     :dword,
             bV5Reserved:        :dword
    end
  end
end