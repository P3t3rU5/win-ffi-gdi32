require 'win-ffi/core/struct/rect'

require_relative '../enum/region/region_style'
require_relative '../enum/clipping/direction'

require_relative '../struct/clipping/clip_obj'
require_relative '../struct/clipping/enum_rects'

require_relative '../typedef/hrgn'

module WinFFI
  module Gdi32

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-excludecliprect
    # int ExcludeClipRect(
    #   _In_ HDC hdc,
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    def self.ExcludeClipRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'ExcludeClipRect', [:hdc, :int, :int, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extselectcliprgn
    # int ExtSelectClipRgn( _In_ HDC  hdc, _In_ HRGN hrgn, _In_ int  fnMode)
    def self.ExtSelectClipRgn(hdc, hrgn, fnMode); end
    attach_function 'ExtSelectClipRgn', [:hdc, :hrgn, RegionStyle], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getclipbox
    # int GetClipBox(_In_  HDC    hdc, _Out_ LPRECT lprc)
    def self.GetClipBox(hdc, lprc); end
    attach_function 'GetClipBox', [:hdc, RECT.ptr(:out)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcliprgn
    # int GetClipRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    def self.GetClipRgn(hdc, hrgn); end
    attach_function 'GetClipRgn', [:hdc, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmetargn
    # int GetMetaRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    def self.GetMetaRgn(hdc, hrgn); end
    attach_function 'GetMetaRgn', [:hdc, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrandomrgn
    # int GetRandomRgn( _In_ HDC  hdc, _In_ HRGN hrgn, _In_ INT  iNum)
    def self.GetRandomRgn(hdc, hrgn, iNum); end
    attach_function 'GetRandomRgn', [:hdc, :hrgn, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-intersectcliprect
    # int IntersectClipRect(
    #   _In_ HDC hdc,
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect)
    def self.IntersectClipRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'IntersectClipRect', [:hdc, :int, :int, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetcliprgn
    # int OffsetClipRgn( _In_ HDC hdc, _In_ int nXOffset, _In_ int nYOffset)
    def self.OffsetClipRgn(hdc, nXOffset, nYOffset); end
    attach_function 'OffsetClipRgn', [:hdc, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetcliprgn
    # BOOL PtVisible( _In_ HDC hdc, _In_ int X, _In_ int Y)
    def self.PtVisible(hdc, x, y); end
    attach_function 'PtVisible', [:hdc, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-rectvisible
    # BOOL RectVisible(_In_       HDC  hdc, _In_ const RECT *lprc)
    def self.RectVisible(hdc, lprc); end
    attach_function 'RectVisible', [:hdc, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectclippath
    # BOOL SelectClipPath(_In_ HDC hdc, _In_ int iMode)
    def self.SelectClipPath(hdc, iMode); end
    attach_function 'SelectClipPath', [:hdc, RegionStyle], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectcliprgn
    # int SelectClipRgn(_In_ HDC  hdc, _In_ HRGN hrgn)
    def self.SelectClipRgn(hdc, hrgn); end
    attach_function 'SelectClipRgn', [:hdc, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmetargn
    # int SetMetaRgn(_In_ HDC hdc)
    def self.SetMetaRgn(hdc); end
    attach_function 'SetMetaRgn', [:hdc], :int

    # CLIPOBJ callbacks
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-clipobj_benum
    # BOOL CLIPOBJ_bEnum(
    #   _In_  CLIPOBJ *pco,
    #   _In_  ULONG   cj,
    #   _Out_ ULONG   *pv)
    def self.CLIPOBJ_bEnum(pco, cj, pv); end
    attach_function 'CLIPOBJ_bEnum', [CLIPOBJ.ptr(:in), :ulong, ENUMRECTS.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-clipobj_cenumstart
    # ULONG CLIPOBJ_cEnumStart(
    #   _In_ CLIPOBJ *pco,
    #   _In_ BOOL    bAll,
    #   _In_ ULONG   iType,
    #   _In_ ULONG   iDirection,
    #   _In_ ULONG   cLimit)
    def self.CLIPOBJ_cEnumStart(pco, bAll, iType, iDirection, cLimit); end
    attach_function 'CLIPOBJ_cEnumStart', [CLIPOBJ.ptr(:in), :bool, :ulong, ClippingDirection, :ulong], :ulong

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-clipobj_ppogetpath
    # PATHOBJ* CLIPOBJ_ppoGetPath(_In_ CLIPOBJ *pco)
    def self.CLIPOBJ_ppoGetPath(pco); end
    attach_function 'CLIPOBJ_ppoGetPath', [CLIPOBJ.ptr(:in)], :pointer
  end
end
