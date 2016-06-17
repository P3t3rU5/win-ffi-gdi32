require 'win-ffi/gdi32/function/device_context'

module WinFFI
  module Gdi32
    class << self
      #define IS_INTRESOURCE(_r) ((((ULONG_PTR)(_r)) >> 16) == 0)
      def IS_INTRESOURCE(r)
        r >> 16 == 0
      end

      #define MAKEINTRESOURCEA(i) ((LPSTR)((ULONG_PTR)((WORD)(i))))
      #define MAKEINTRESOURCEW(i) ((LPWSTR)((ULONG_PTR)((WORD)(i))))
      def MAKEINTRESOURCE(i)
        i
      end

      #define DeleteBitmap(hbm) DeleteObject((HGDIOBJ)(HBITMAP)(hbm))
      def DeleteBitmap(hbm)
        DeleteObject hbm
      end

      #define DeleteBrush(hbr) DeleteObject((HGDIOBJ)(HBRUSH)(hbr))
      def DeleteBrush(hbr)
        DeleteObject hbr
      end

      #define DeleteFont(hfont) DeleteObject((HGDIOBJ)(HFONT)(hfont))
      def DeleteFont(hfont)
        DeleteObject hfont
      end

      #define DeletePalette(hpal) DeleteObject((HGDIOBJ)(HPALETTE)(hpal))
      def DeletePalette(hpal)
        DeleteObject hpal
      end

      #define DeletePen(hpen) DeleteObject((HGDIOBJ)(HPEN)(hpen))
      def DeletePen(hpen)
        DeleteObject hpen
      end

      #define DeleteRgn(hrgn) DeleteObject((HGDIOBJ)(HRGN)(hrgn))
      def DeleteRgn(hrgn)
        DeleteObject hrgn
      end

      #define GetStockBrush(i) ((HBRUSH)GetStockObject(i))
      def GetStockBrush(i)
        GetStockObject(i)
      end

      #define GetStockFont(i) ((HFONT)GetStockObject(i))
      def GetStockFont(i)
        GetStockObject(i)
      end

      #define GetStockPen(i) ((HPEN)GetStockObject(i))
      def GetStockPen(i)
        GetStockObject(i)
      end

      #define SelectBitmap(hdc,hbm) ((HBITMAP)SelectObject((hdc),(HGDIOBJ)(HBITMAP)(hbm)))
      def SelectBitmap(hdc, hbm)
        SelectObject(hdc, hbm)
      end

      #define SelectBrush(hdc,hbr) ((HBRUSH)SelectObject((hdc),(HGDIOBJ)(HBRUSH)(hbr)))
      def SelectBrush(hdc, hbr)
        SelectObject(hdc, hbr)
      end

      #define SelectFont(hdc,hfont) ((HFONT)SelectObject((hdc),(HGDIOBJ)(HFONT)(hfont)))
      def SelectFont(hdc, hfont)
        SelectObject(hdc, hfont)
      end

      #define SelectPen(hdc,hpen) ((HPEN)SelectObject((hdc),(HGDIOBJ)(HPEN)(hpen)))
      def SelectPen(hdc, hpen)
        SelectObject(hdc, hpen)
      end
    end
  end
end