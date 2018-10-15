require_relative '../windows_color_space/cie_xyz_triple'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-bitmapv4header
    class BITMAPV4HEADER < FFIAdditions::Struct
      def bV4Size; end
      def bV4Size=(v); end
      def bV4Width; end
      def bV4Width=(v); end
      def bV4Height; end
      def bV4Height=(v); end
      def bV4Planes; end
      def bV4Planes=(v); end
      def bV4BitCount; end
      def bV4BitCount=(v); end
      def bV4V4Compression; end
      def bV4V4Compression=(v); end
      def bV4SizeImage; end
      def bV4SizeImage=(v); end
      def bV4XPelsPerMeter; end
      def bV4XPelsPerMeter=(v); end
      def bV4YPelsPerMeter; end
      def bV4YPelsPerMeter=(v); end
      def bV4ClrUsed; end
      def bV4ClrUsed=(v); end
      def bV4ClrImportant; end
      def bV4ClrImportant=(v); end
      def bV4RedMask; end
      def bV4RedMask=(v); end
      def bV4GreenMask; end
      def bV4GreenMask=(v); end
      def bV4BlueMask; end
      def bV4BlueMask=(v); end
      def bV4AlphaMask; end
      def bV4AlphaMask=(v); end
      def bV4CSType; end
      def bV4CSType=(v); end
      def bV4Endpoints; end
      def bV4Endpoints=(v); end
      def bV4GammaRed; end
      def bV4GammaRed=(v); end
      def bV4GammaGreen; end
      def bV4GammaGreen=(v); end
      def bV4GammaBlue; end
      def bV4GammaBlue=(v); end

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




















