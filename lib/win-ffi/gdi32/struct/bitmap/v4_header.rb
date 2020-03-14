require_relative '../windows_color_space/cie_xyz_triple'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-bitmapv4header
    class BITMAPV4HEADER < FFIAdditions::Struct
      attr_accessor :bV4Size,
                    :bV4Width,
                    :bV4Height,
                    :bV4Planes,
                    :bV4BitCount,
                    :bV4V4Compression,
                    :bV4SizeImage,
                    :bV4XPelsPerMeter,
                    :bV4YPelsPerMeter,
                    :bV4ClrUsed,
                    :bV4ClrImportant,
                    :bV4RedMask,
                    :bV4GreenMask,
                    :bV4BlueMask,
                    :bV4AlphaMask,
                    :bV4CSType,
                    :bV4Endpoints,
                    :bV4GammaRed,
                    :bV4GammaGreen,
                    :bV4GammaBlue

      layout bV4Size:          :dword,
             bV4Width:         :long,
             bV4Height:        :long,
             bV4Planes:        :word,
             bV4BitCount:      :word,
             bV4V4Compression: :dword,
             bV4SizeImage:     :dword,
             bV4XPelsPerMeter: :long,
             bV4YPelsPerMeter: :long,
             bV4ClrUsed:       :dword,
             bV4ClrImportant:  :dword,
             bV4RedMask:       :dword,
             bV4GreenMask:     :dword,
             bV4BlueMask:      :dword,
             bV4AlphaMask:     :dword,
             bV4CSType:        :dword,
             bV4Endpoints:     CIEXYZTRIPLE,
             bV4GammaRed:      :dword,
             bV4GammaGreen:    :dword,
             bV4GammaBlue:     :dword
    end
  end
end
