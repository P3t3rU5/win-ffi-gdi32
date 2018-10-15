module WinFFI
  module Gdi32
    # Quaternary raster codes
    #define MAKEROP4(fore,back) (DWORD)((((back) << 8) & 0xFF000000) | (fore))
    def self.MAKEROP4(fore, back)
      ((back << 8) & 0xFF000000) | fore
    end

    #define GDI_WIDTHBYTES(bits) ((DWORD)(((bits)+31) & (~31)) / 8)
    def self.GDI_WIDTHBYTES(bits)
      bits + 31 & ~31 / 8
    end

    #define GDI_DIBWIDTHBYTES(bi) (DWORD)GDI_WIDTHBYTES((DWORD)(bi).biWidth * (DWORD)(bi).biBitCount)
    def self.GDI_DIBWIDTHBYTES(bi)
      GDI_WIDTHBYTES(bi.biWidth * bi.biBitCount)
    end

    #define GDI__DIBSIZE(bi) (GDI_DIBWIDTHBYTES(bi) * (DWORD)(bi).biHeight)
    def self.GDI__DIBSIZE(bi)
      GDI_DIBWIDTHBYTES(bi) * bi.biHeight
    end

    #define GDI_DIBSIZE(bi) ((bi).biHeight < 0 ? (-1)*(GDI__DIBSIZE(bi)) : GDI__DIBSIZE(bi))
    def self.GDI_DIBSIZE(bi)
      bi.biHeight < 0 ? -1 * GDI__DIBSIZE(bi) : GDI__DIBSIZE(bi)
    end
  end
end