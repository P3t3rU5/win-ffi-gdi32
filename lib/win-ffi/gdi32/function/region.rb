require 'win-ffi/core/struct/rect'

require_relative '../typedef/hrgn'

require_relative '../enum/region/poly_fill_mode'

require_relative '../struct/region/data'
require_relative '../struct/transform/xform'

require_relative '../enum/region/region_style'
require_relative '../enum/region_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-combinergn
    # int CombineRgn( _In_ HRGN hrgnDest, _In_ HRGN hrgnSrc1, _In_ HRGN hrgnSrc2, _In_ int  fnCombineMode)
    def self.CombineRgn(hrgnDest, hrgnSrc1, hrgnSrc2, fnCombineMode); end
    attach_function 'CombineRgn', [:hrgn, :hrgn, :hrgn, RegionStyle], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createellipticrgn
    # HRGN CreateEllipticRgn( _In_ int nLeftRect, _In_ int nTopRect, _In_ int nRightRect, _In_ int nBottomRect)
    def self.CreateEllipticRgn(nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'CreateEllipticRgn', [:int, :int, :int, :int], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createellipticrgnindirect
    # HRGN CreateEllipticRgnIndirect(_In_ const RECT *lprc)
    def self.CreateEllipticRgnIndirect(lprc); end
    attach_function 'CreateEllipticRgnIndirect', [RECT.ptr(:in)], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpolygonrgn
    # HRGN CreatePolygonRgn( _In_ const POINT *lppt, _In_       int   cPoints, _In_       int   fnPolyFillMode)
    def self.CreatePolygonRgn(lppt, cPoints, fnPolyFillMode); end
    attach_function 'CreatePolygonRgn', [:pointer, :int, PolyFillMode], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpolypolygonrgn
    # HRGN CreatePolyPolygonRgn(
    #   _In_ const POINT *lppt,
    #   _In_ const INT   *lpPolyCounts,
    #   _In_       int   nCount,
    #   _In_       int   fnPolyFillMode)
    def self.CreatePolyPolygonRgn(lppt, lpPolyCounts, nCount, fnPolyFillMode); end
    attach_function 'CreatePolyPolygonRgn', [:pointer, :pointer, :int, PolyFillMode], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createrectrgn
    # HRGN CreateRectRgn( _In_ int nLeftRect, _In_ int nTopRect, _In_ int nRightRect, _In_ int nBottomRect)
    def self.CreateRectRgn(nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'CreateRectRgn', [:int, :int, :int, :int], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createrectrgnindirect
    # HRGN CreateRectRgnIndirect(_In_ const RECT *lprc)
    def self.CreateRectRgnIndirect(lprc); end
    attach_function 'CreateRectRgnIndirect', [RECT.ptr(:in)], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createroundrectrgn
    # HRGN CreateRoundRectRgn( int x1, int y1, int x2, int y2, int w, int h)
    def self.CreateRoundRectRgn(x1, y1, x2, y2, w, h); end
    attach_function 'CreateRoundRectRgn', [:int, :int, :int, :int, :int, :int], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-equalrgn
    # BOOL EqualRgn(_In_ HRGN hSrcRgn1, _In_ HRGN hSrcRgn2)
    def self.EqualRgn(hSrcRgn1, hSrcRgn2); end
    attach_function 'EqualRgn', [:hrgn, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extcreateregion
    # HRGN ExtCreateRegion( _In_ const XFORM   *lpXform, _In_       DWORD   nCount, _In_ const RGNDATA *lpRgnData)
    def self.ExtCreateRegion(lpXform, nCount, lpRgnData); end
    attach_function 'ExtCreateRegion', [XFORM.ptr(:in), :dword, RGNDATA.ptr(:in)], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-fillrgn
    # BOOL FillRgn( _In_ HDC    hdc, _In_ HRGN   hrgn, _In_ HBRUSH hbr)
    def self.FillRgn(hdc, hrgn, hbr); end
    attach_function 'FillRgn', [:hdc, :hrgn, :hbrush], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-framergn
    # BOOL FrameRgn( _In_ HDC    hdc, _In_ HRGN   hrgn, _In_ HBRUSH hbr, _In_ int    nWidth, _In_ int    nHeight)
    def self.FrameRgn(hdc, hrgn, hbr, nWidth, nHeight); end
    attach_function 'FrameRgn', [:hdc, :hrgn, :hbrush, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpolyfillmode
    # int GetPolyFillMode(_In_ HDC hdc)
    def self.GetPolyFillMode(hdc); end
    attach_function 'GetPolyFillMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getregiondata
    # DWORD GetRegionData( _In_  HRGN      hRgn, _In_  DWORD     dwCount, _Out_ LPRGNDATA lpRgnData)
    def self.GetRegionData(hRgn, dwCount, lpRgnData); end
    attach_function 'GetRegionData', [:hrgn, :dword, RGNDATA.ptr(:out)], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrgnbox
    # int GetRgnBox(_In_  HRGN   hrgn, _Out_ LPRECT lprc)
    def self.GetRgnBox(hrgn, lprc); end
    attach_function 'GetRgnBox', [:hrgn, RECT.ptr(:out)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-invertrgn
    # BOOL InvertRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    def self.InvertRgn(hdc, hrgn); end
    attach_function 'InvertRgn', [:hdc, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetrgn
    # int OffsetRgn( _In_ HRGN hrgn, _In_ int  nXOffset, _In_ int  nYOffset)
    def self.OffsetRgn(hrgn, nXOffset, nYOffset); end
    attach_function 'OffsetRgn', [:hrgn, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-paintrgn
    # BOOL PaintRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    def self.PaintRgn(hdc, hrgn); end
    attach_function 'PaintRgn', [:hdc, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-ptinregion
    # BOOL PtInRegion( _In_ HRGN hrgn, _In_ int  X, _In_ int  Y)
    def self.PtInRegion(hrgn, x, y); end
    attach_function 'PtInRegion', [:hrgn, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-rectinregion
    # BOOL RectInRegion(_In_       HRGN hrgn, _In_ const RECT *lprc)
    def self.RectInRegion(hrgn, lprc); end
    attach_function 'RectInRegion', [:hrgn, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpolyfillmode
    # int SetPolyFillMode(_In_ HDC hdc, _In_ int iPolyFillMode)
    def self.SetPolyFillMode(hdc, iPolyFillMode); end
    attach_function 'SetPolyFillMode', [:hdc, PolyFillMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setrectrgn
    # BOOL SetRectRgn(
    #   _In_ HRGN hrgn,
    #   _In_ int  nLeftRect,
    #   _In_ int  nTopRect,
    #   _In_ int  nRightRect,
    #   _In_ int  nBottomRect)
    def self.SetRectRgn(hrgn, nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'SetRectRgn', [:hrgn, :int, :int, :int, :int], :bool
  end
end
