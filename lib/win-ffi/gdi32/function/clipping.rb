require 'win-ffi/gdi32/enum/region/region_style'
require 'win-ffi/gdi32/enum/clipping/clipping_direction'

require 'win-ffi/core/struct/rect'

require 'win-ffi/gdi32/struct/clipping/clip_obj'
require 'win-ffi/gdi32/struct/clipping/enum_rects'

require 'win-ffi/gdi32/typedef/hrgn'

module WinFFI
  module Gdi32

    # https://msdn.microsoft.com/en-us/library/dd162702(v=vs.85).aspx
    # int ExcludeClipRect(
    #   _In_ HDC hdc,
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    attach_function 'ExcludeClipRect', [:hdc, :int, :int, :int, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd162712(v=vs.85).aspx
    # int ExtSelectClipRgn(
    #   _In_ HDC  hdc,
    #   _In_ HRGN hrgn,
    #   _In_ int  fnMode)
    attach_function 'ExtSelectClipRgn', [:hdc, :hrgn, RegionStyle], :int

    # https://msdn.microsoft.com/en-us/library/dd144865(v=vs.85).aspx
    # int GetClipBox(_In_  HDC    hdc, _Out_ LPRECT lprc)
    attach_function 'GetClipBox', [:hdc, RECT.ptr(:out)], :int

    # https://msdn.microsoft.com/en-us/library/dd144866(v=vs.85).aspx
    # int GetClipRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    attach_function 'GetClipRgn', [:hdc, :hrgn], :int

    # https://msdn.microsoft.com/en-us/library/dd144899(v=vs.85).aspx
    # int GetMetaRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    attach_function 'GetMetaRgn', [:hdc, :hrgn], :int

    # https://msdn.microsoft.com/en-us/library/dd144918(v=vs.85).aspx
    # int GetRandomRgn(
    #   _In_ HDC  hdc,
    #   _In_ HRGN hrgn,
    #   _In_ INT  iNum)
    attach_function 'GetRandomRgn', [:hdc, :hrgn, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd144998(v=vs.85).aspx
    # int IntersectClipRect(
    #   _In_ HDC hdc,
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    attach_function 'IntersectClipRect', [:hdc, :int, :int, :int, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd162745(v=vs.85).aspx
    # int OffsetClipRgn(
    #   _In_ HDC hdc,
    #   _In_ int nXOffset,
    #   _In_ int nYOffset)
    attach_function 'OffsetClipRgn', [:hdc, :int, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd162890(v=vs.85).aspx
    # BOOL PtVisible(
    #   _In_ HDC hdc,
    #   _In_ int X,
    #   _In_ int Y)
    attach_function 'PtVisible', [:hdc, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162908(v=vs.85).aspx
    # BOOL RectVisible(_In_       HDC  hdc, _In_ const RECT *lprc)
    attach_function 'RectVisible', [:hdc, RECT.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162954(v=vs.85).aspx
    # BOOL SelectClipPath(_In_ HDC hdc, _In_ int iMode)
    attach_function 'SelectClipPath', [:hdc, RegionStyle], :bool

    # https://msdn.microsoft.com/en-us/library/dd162955(v=vs.85).aspx
    # int SelectClipRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    attach_function 'SelectClipRgn', [:hdc, :hrgn], :int

    # https://msdn.microsoft.com/en-us/library/dd145075(v=vs.85).aspx
    # int SetMetaRgn(_In_ HDC hdc)
    attach_function 'SetMetaRgn', [:hdc], :int

    # CLIPOBJ callbacks
    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff539420%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # BOOL CLIPOBJ_bEnum(
    #   _In_  CLIPOBJ *pco,
    #   _In_  ULONG   cj,
    #   _Out_ ULONG   *pv)
    attach_function 'CLIPOBJ_bEnum', [CLIPOBJ.ptr(:in), :ulong, ENUMRECTS.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff539421(v=vs.85).aspx
    # ULONG CLIPOBJ_cEnumStart(
    #   _In_ CLIPOBJ *pco,
    #   _In_ BOOL    bAll,
    #   _In_ ULONG   iType,
    #   _In_ ULONG   iDirection,
    #   _In_ ULONG   cLimit)
    attach_function 'CLIPOBJ_cEnumStart', [CLIPOBJ.ptr(:in), :bool, :ulong, ClippingDirection, :ulong], :ulong

    # https://msdn.microsoft.com/en-us/library/windows/hardware/ff539423(v=vs.85).aspx
    # PATHOBJ* CLIPOBJ_ppoGetPath(_In_ CLIPOBJ *pco)
    attach_function 'CLIPOBJ_ppoGetPath', [CLIPOBJ.ptr(:in)], :pointer

  end
end