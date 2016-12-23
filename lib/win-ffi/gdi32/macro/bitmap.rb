require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class << self
      # Quaternary raster codes
      #define MAKEROP4(fore,back) (DWORD)((((back) << 8) & 0xFF000000) | (fore))
      def MAKEROP4(fore, back)
        ((back << 8) & 0xFF000000) | fore
      end
    end
  end
end