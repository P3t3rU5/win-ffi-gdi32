require 'win-ffi/gdi32'

require 'win-ffi/gdi32/typedef/hrgn'

require 'win-ffi/gdi32/enum/region/poly_fill_mode'

require 'win-ffi/core/struct/rect'
require 'win-ffi/gdi32/struct/region/rgn_data'
require 'win-ffi/gdi32/struct/transform/xform'

module WinFFI
  module Gdi32

    # https://msdn.microsoft.com/en-us/library/dd183465(v=vs.85).aspx
    # int CombineRgn(
    #   _In_ HRGN hrgnDest,
    #   _In_ HRGN hrgnSrc1,
    #   _In_ HRGN hrgnSrc2,
    #   _In_ int  fnCombineMode)
    attach_function 'CombineRgn', [:hrgn, :hrgn, :hrgn, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd183496(v=vs.85).aspx
    # HRGN CreateEllipticRgn(
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    attach_function 'CreateEllipticRgn', [:int, :int, :int, :int], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183497(v=vs.85).aspx
    # HRGN CreateEllipticRgnIndirect(_In_ const RECT *lprc)
    attach_function 'CreateEllipticRgnIndirect', [RECT.ptr(:in)], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183511(v=vs.85).aspx
    # HRGN CreatePolygonRgn(
    #   _In_ const POINT *lppt,
    #   _In_       int   cPoints,
    #   _In_       int   fnPolyFillMode)
    attach_function 'CreatePolygonRgn', [:pointer, :int, PolyFillMode], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183512(v=vs.85).aspx
    # HRGN CreatePolyPolygonRgn(
    #   _In_ const POINT *lppt,
    #   _In_ const INT   *lpPolyCounts,
    #   _In_       int   nCount,
    #   _In_       int   fnPolyFillMode)
    attach_function 'CreatePolyPolygonRgn', [:pointer, :pointer, :int, PolyFillMode], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183514(v=vs.85).aspx
    # HRGN CreateRectRgn(
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    attach_function 'CreateRectRgn', [:int, :int, :int, :int], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183515(v=vs.85).aspx
    # HRGN CreateRectRgnIndirect(_In_ const RECT *lprc)
    attach_function 'CreateRectRgnIndirect', [RECT.ptr(:in)], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd183516(v=vs.85).aspx
    # HRGN CreateRoundRectRgn(
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect,
    #   _In_ int nWidthEllipse,
    #   _In_ int nHeightEllipse)
    attach_function 'CreateRoundRectRgn', [:int, :int, :int, :int, :int, :int], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd162700(v=vs.85).aspx
    # BOOL EqualRgn(_In_ HRGN hSrcRgn1, _In_ HRGN hSrcRgn2)
    attach_function 'EqualRgn', [:hrgn, :hrgn], :bool

    # https://msdn.microsoft.com/en-us/library/dd162706(v=vs.85).aspx
    # HRGN ExtCreateRegion(
    #   _In_ const XFORM   *lpXform,
    #   _In_       DWORD   nCount,
    #   _In_ const RGNDATA *lpRgnData)
    attach_function 'ExtCreateRegion', [XFORM.ptr(:in), :dword, RGNDATA.ptr(:in)], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd162720(v=vs.85).aspx
    # BOOL FillRgn(
    #   _In_ HDC    hdc,
    #   _In_ HRGN   hrgn,
    #   _In_ HBRUSH hbr)
    attach_function 'FillRgn', [:hdc, :hrgn, :hbrush], :bool

    # https://msdn.microsoft.com/en-us/library/dd144839(v=vs.85).aspx
    # BOOL FrameRgn(
    #   _In_ HDC    hdc,
    #   _In_ HRGN   hrgn,
    #   _In_ HBRUSH hbr,
    #   _In_ int    nWidth,
    #   _In_ int    nHeight)
    attach_function 'FrameRgn', [:hdc, :hrgn, :hbrush, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd144910(v=vs.85).aspx
    # int GetPolyFillMode(_In_ HDC hdc)
    attach_function 'GetPolyFillMode', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd144920(v=vs.85).aspx
    # DWORD GetRegionData(
    #   _In_  HRGN      hRgn,
    #   _In_  DWORD     dwCount,
    #   _Out_ LPRGNDATA lpRgnData)
    attach_function 'GetRegionData', [:hrgn, :dword, RGNDATA.ptr(:out)], :dword

    # https://msdn.microsoft.com/en-us/library/dd144921(v=vs.85).aspx
    # int GetRgnBox(_In_  HRGN   hrgn, _Out_ LPRECT lprc)
    attach_function 'GetRgnBox', [:hrgn, RECT.ptr(:out)], :int

    # https://msdn.microsoft.com/en-us/library/dd145008(v=vs.85).aspx
    # BOOL InvertRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    attach_function 'InvertRgn', [:hdc, :hrgn], :bool

    # https://msdn.microsoft.com/en-us/library/dd162747(v=vs.85).aspx
    # int OffsetRgn(
    #   _In_ HRGN hrgn,
    #   _In_ int  nXOffset,
    #   _In_ int  nYOffset)
    attach_function 'OffsetRgn', [:hrgn, :int, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd162767(v=vs.85).aspx
    # BOOL PaintRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    attach_function 'PaintRgn', [:hdc, :hrgn], :bool

    # https://msdn.microsoft.com/en-us/library/dd162883(v=vs.85).aspx
    # BOOL PtInRegion(
    #   _In_ HRGN hrgn,
    #   _In_ int  X,
    #   _In_ int  Y)
    attach_function 'PtInRegion', [:hrgn, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162906(v=vs.85).aspx
    # BOOL RectInRegion(_In_       HRGN hrgn, _In_ const RECT *lprc)
    attach_function 'RectInRegion', [:hrgn, RECT.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145080(v=vs.85).aspx
    # int SetPolyFillMode(_In_ HDC hdc, _In_ int iPolyFillMode)
    attach_function 'SetPolyFillMode', [:hdc, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd145087(v=vs.85).aspx
    # BOOL SetRectRgn(
    #   _In_ HRGN hrgn,
    #   _In_ int  nLeftRect,
    #   _In_ int  nTopRect,
    #   _In_ int  nRightRect,
    #   _In_ int  nBottomRect)
    attach_function 'SetRectRgn', [:hrgn, :int, :int, :int, :int], :bool
  end
end