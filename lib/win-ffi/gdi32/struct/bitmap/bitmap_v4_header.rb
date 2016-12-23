require 'win-ffi/gdi32'

require 'win-ffi/gdi32/struct/windows_color_space/cie_xyz_triple'

module WinFFI
  module Gdi32
    class BITMAPV4HEADER < FFIAdditions::Struct
      layout bV4Size:            :dword,
             bV4Width:            :long,
             bV4Height:           :long,
             bV4Planes:           :word,
             bV4BitCount:         :word,
             bV4V4Compression:   :dword,
             bV4SizeImage:       :dword,
             bV4XPelsPerMeter:    :long,
             bV4YPelsPerMeter:    :long,
             bV4ClrUsed:         :dword,
             bV4ClrImportant:    :dword,
             bV4RedMask:         :dword,
             bV4GreenMask:       :dword,
             bV4BlueMask:        :dword,
             bV4AlphaMask:       :dword,
             bV4CSType:          :dword,
             bV4Endpoints: CIEXYZTRIPLE,
             bV4GammaRed:        :dword,
             bV4GammaGreen:      :dword,
             bV4GammaBlue:       :dword
    end
  end
end




















