module WinFFI
  module Gdi32
    class << self
      #define RGB(r,g,b) ((COLORREF)(((BYTE)(r)|((WORD)((BYTE)(g))<<8))|(((DWORD)(BYTE)(b))<<16)))
      def RGB(r, g, b)
        r |(g << 8)| (b << 16) # COLORREF
      end

      #define GetRValue(rgb)      (LOBYTE(rgb))
      def GetRValue(rgb)
        rgb & 0xff
      end

      #define GetGValue(rgb)      (LOBYTE(((WORD)(rgb)) >> 8))
      def GetGValue(rgb)
        (0xff00 & rgb) >> 8
      end

      #define GetBValue(rgb)      (LOBYTE((rgb)>>16))
      def GetBValue(cmyk)
        (0xff0000 & cmyk) >> 16
      end

      def CMYK(c, m, y, k)
        k | (y << 8) | (m << 16) | (c << 24) # COLORREF
      end

      # Macros to retrieve CMYK values from a COLORREF
      #define GetKValue(cmyk)      ((BYTE)(cmyk))
      def GetKValue(cmyk)
        0xff & cmyk
      end

      #define GetYValue(cmyk)      ((BYTE)((cmyk)>> 8))

      def GetYValue(cmyk)
        (0xff00 & cmyk) >> 8
      end

      #define GetMValue(cmyk)      ((BYTE)((cmyk)>>16))
      def GetMValue(cmyk)
        (0xff0000 & cmyk) >> 16
      end

      #define GetCValue(cmyk)      ((BYTE)((cmyk)>>24))
      def GetCValue(cmyk)
        (0xff000000 & cmyk) >> 24
      end

      #define PALETTERGB(r,g,b)   (0x02000000 | RGB(r,g,b))
      def PALETTERGB(r, g, b)
        0x02000000 | RGB(r, g, b)
      end

      #define PALETTEINDEX(i)     ((COLORREF)(0x01000000 | (DWORD)(WORD)(i)))
      def PALETTEINDEX(i)
        0x01000000 | i
      end

      # TODO DIBINDEZ
      #define DIBINDEX(n)     MAKELONG((n),0x10FF)
      def DIBINDEX(n)
        makelong(n, 0x10FF)
      end
    end
  end
end