require 'win-ffi/core/struct/rect'

require_relative '../enum/region/region_style'
require_relative '../enum/clipping/direction'

require_relative '../struct/clipping/clip_obj'
require_relative '../struct/clipping/enum_rects'

require_relative '../typedef/hrgn'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-excludecliprect
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @return [Integer]
    def self.ExcludeClipRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) end
    attach_function 'ExcludeClipRect', [:hdc, :int, :int, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extselectcliprgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @param [Integer] fnMode
    # @return [Integer]
    def self.ExtSelectClipRgn(hdc, hrgn, fnMode) end
    attach_function 'ExtSelectClipRgn', [:hdc, :hrgn, RegionStyle], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getclipbox
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprc
    # @return [Integer]
    def self.GetClipBox(hdc, lprc) end
    attach_function 'GetClipBox', [:hdc, RECT.ptr(:out)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcliprgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @return [Integer]
    def self.GetClipRgn(hdc, hrgn) end
    attach_function 'GetClipRgn', [:hdc, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmetargn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @return [Integer]
    def self.GetMetaRgn(hdc, hrgn) end
    attach_function 'GetMetaRgn', [:hdc, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrandomrgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @param [Integer] iNum
    # @return [Integer]
    def self.GetRandomRgn(hdc, hrgn, iNum) end
    attach_function 'GetRandomRgn', [:hdc, :hrgn, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-intersectcliprect
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @return [Integer]
    def self.IntersectClipRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) end
    attach_function 'IntersectClipRect', [:hdc, :int, :int, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetcliprgn
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXOffset
    # @param [Integer] nYOffset
    # @return [Integer]
    def self.OffsetClipRgn(hdc, nXOffset, nYOffset); end
    attach_function 'OffsetClipRgn', [:hdc, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetcliprgn
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @return [true, false]
    def self.PtVisible(hdc, x, y); end
    attach_function 'PtVisible', [:hdc, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-rectvisible
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprc
    # @return [true, false]
    def self.RectVisible(hdc, lprc); end
    attach_function 'RectVisible', [:hdc, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectclippath
    # @param [FFI::Pointer] hdc
    # @param [Integer] iMode
    # @return [true, false]
    def self.SelectClipPath(hdc, iMode); end
    attach_function 'SelectClipPath', [:hdc, RegionStyle], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectcliprgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @return [Integer]
    def self.SelectClipRgn(hdc, hrgn); end
    attach_function 'SelectClipRgn', [:hdc, :hrgn], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmetargn
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.SetMetaRgn(hdc); end
    attach_function 'SetMetaRgn', [:hdc], :int

    # CLIPOBJ callbacks
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-clipobj_benum
    # @param [FFI::Pointer] pco
    # @param [Integer] cj
    # @param [Integer] pv
    # @return [true, false]
    def self.CLIPOBJ_bEnum(pco, cj, pv); end
    attach_function 'CLIPOBJ_bEnum', [CLIPOBJ.ptr(:in), :ulong, ENUMRECTS.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-clipobj_cenumstart
    # @param [FFI::Pointer] pco
    # @param [true, false] bAll
    # @param [Integer] iType
    # @param [Integer] iDirection
    # @param [Integer] cLimit
    # @return [Integer]
    def self.CLIPOBJ_cEnumStart(pco, bAll, iType, iDirection, cLimit); end
    attach_function 'CLIPOBJ_cEnumStart', [CLIPOBJ.ptr(:in), :bool, :ulong, ClippingDirection, :ulong], :ulong

    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/nf-winddi-clipobj_ppogetpath
    # @param [FFI::Pointer] pco
    # @return [FFI::Pointer]
    def self.CLIPOBJ_ppoGetPath(pco); end
    attach_function 'CLIPOBJ_ppoGetPath', [CLIPOBJ.ptr(:in)], :pointer
  end
end
