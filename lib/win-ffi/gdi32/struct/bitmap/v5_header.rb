require_relative '../windows_color_space/cie_xyz_triple'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-bitmapv5header
    class BITMAPV5HEADER < FFIAdditions::Struct
      attr_accessor :bV5Size,
                    :bV5Width,
                    :bV5Height,
                    :bV5Planes,
                    :bV5BitCount,
                    :bV5Compression,
                    :bV5SizeImage,
                    :bV5XPelsPerMeter,
                    :bV5YPelsPerMeter,
                    :bV5ClrUsed,
                    :bV5ClrImportant,
                    :bV5RedMask,
                    :bV5GreenMask,
                    :bV5BlueMask,
                    :bV5AlphaMask,
                    :bV5CSType,
                    :bV5Endpoints,
                    :bV5GammaRed,
                    :bV5GammaGreen,
                    :bV5GammaBlue,
                    :bV5Intent,
                    :bV5ProfileData,
                    :bV5ProfileSize,
                    :bV5Reserved

      layout bV5Size:          :dword,
             bV5Width:         :long,
             bV5Height:        :long,
             bV5Planes:        :word,
             bV5BitCount:      :word,
             bV5Compression:   :dword,
             bV5SizeImage:     :dword,
             bV5XPelsPerMeter: :long,
             bV5YPelsPerMeter: :long,
             bV5ClrUsed:       :dword,
             bV5ClrImportant:  :dword,
             bV5RedMask:       :dword,
             bV5GreenMask:     :dword,
             bV5BlueMask:      :dword,
             bV5AlphaMask:     :dword,
             bV5CSType:        :dword,
             bV5Endpoints:     CIEXYZTRIPLE,
             bV5GammaRed:      :dword,
             bV5GammaGreen:    :dword,
             bV5GammaBlue:     :dword,
             bV5Intent:        :dword,
             bV5ProfileData:   :dword,
             bV5ProfileSize:   :dword,
             bV5Reserved:      :dword
    end
  end
end