require_relative '../windows_color_space/cie_xyz_triple'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-bitmapv5header
    class BITMAPV5HEADER < FFIAdditions::Struct
      def bV5Size; end
      def bV5Size=(v); end
      def bV5Width; end
      def bV5Width=(v); end
      def bV5Height; end
      def bV5Height=(v); end
      def bV5Planes; end
      def bV5Planes=(v); end
      def bV5BitCount; end
      def bV5BitCount=(v); end
      def bV5Compression; end
      def bV5Compression=(v); end
      def bV5SizeImage; end
      def bV5SizeImage=(v); end
      def bV5XPelsPerMeter; end
      def bV5XPelsPerMeter=(v); end
      def bV5YPelsPerMeter; end
      def bV5YPelsPerMeter=(v); end
      def bV5ClrUsed; end
      def bV5ClrUsed=(v); end
      def bV5ClrImportant; end
      def bV5ClrImportant=(v); end
      def bV5RedMask; end
      def bV5RedMask=(v); end
      def bV5GreenMask; end
      def bV5GreenMask=(v); end
      def bV5BlueMask; end
      def bV5BlueMask=(v); end
      def bV5AlphaMask; end
      def bV5AlphaMask=(v); end
      def bV5CSType; end
      def bV5CSType=(v); end
      def bV5Endpoints; end
      def bV5Endpoints=(v); end
      def bV5GammaRed; end
      def bV5GammaRed=(v); end
      def bV5GammaGreen; end
      def bV5GammaGreen=(v); end
      def bV5GammaBlue; end
      def bV5GammaBlue=(v); end
      def bV5Intent; end
      def bV5Intent=(v); end
      def bV5ProfileData; end
      def bV5ProfileData=(v); end
      def bV5ProfileSize; end
      def bV5ProfileSize=(v); end
      def bV5Reserved; end
      def bV5Reserved=(v); end

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