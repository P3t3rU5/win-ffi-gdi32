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
    # @param [FFI::Pointer] hrgnDest
    # @param [FFI::Pointer] hrgnSrc1
    # @param [FFI::Pointer] hrgnSrc2
    # @param [Integer] fnCombineMode
    # @return [Integer]
    def self.CombineRgn(hrgnDest, hrgnSrc1, hrgnSrc2, fnCombineMode) end
    attach_function 'CombineRgn', [:hrgn, :hrgn, :hrgn, RegionStyle], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createellipticrgn
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @return [FFI::Pointer]
    def self.CreateEllipticRgn(nLeftRect, nTopRect, nRightRect, nBottomRect) end
    attach_function 'CreateEllipticRgn', [:int, :int, :int, :int], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createellipticrgnindirect
    # @param [FFI::Pointer] lprc
    # @return [FFI::Pointer]
    def self.CreateEllipticRgnIndirect(lprc) end
    attach_function 'CreateEllipticRgnIndirect', [RECT.ptr(:in)], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpolygonrgn
    # @param [FFI::Pointer] lppt
    # @param [Integer] cPoints
    # @param [Integer] fnPolyFillMode
    # @return [FFI::Pointer]
    def self.CreatePolygonRgn(lppt, cPoints, fnPolyFillMode) end
    attach_function 'CreatePolygonRgn', [:pointer, :int, PolyFillMode], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpolypolygonrgn
    # @param [FFI::Pointer] lppt
    # @param [FFI::Pointer] lpPolyCounts
    # @param [Integer] nCount
    # @param [Integer] fnPolyFillMode
    # @return [FFI::Pointer]
    def self.CreatePolyPolygonRgn(lppt, lpPolyCounts, nCount, fnPolyFillMode) end
    attach_function 'CreatePolyPolygonRgn', [:pointer, :pointer, :int, PolyFillMode], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createrectrgn
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @return [FFI::Pointer]
    def self.CreateRectRgn(nLeftRect, nTopRect, nRightRect, nBottomRect) end
    attach_function 'CreateRectRgn', [:int, :int, :int, :int], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createrectrgnindirect
    # @param [FFI::Pointer] lprc
    # @return [FFI::Pointer]
    def self.CreateRectRgnIndirect(lprc) end
    attach_function 'CreateRectRgnIndirect', [RECT.ptr(:in)], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createroundrectrgn
    # @param [Integer] x1
    # @param [Integer] y1
    # @param [Integer] x2
    # @param [Integer] y2
    # @param [Integer] w
    # @param [Integer] h
    # @return [FFI::Pointer]
    def self.CreateRoundRectRgn(x1, y1, x2, y2, w, h) end
    attach_function 'CreateRoundRectRgn', [:int, :int, :int, :int, :int, :int], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-equalrgn
    # @param [FFI::Pointer] hSrcRgn1
    # @param [FFI::Pointer] hSrcRgn2
    # @return [true, false]
    def self.EqualRgn(hSrcRgn1, hSrcRgn2) end
    attach_function 'EqualRgn', [:hrgn, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extcreateregion
    # @param [FFI::Pointer] lpXform
    # @param [Integer] nCount
    # @param [FFI::Pointer] lpRgnData
    # @return [FFI::Pointer]
    def self.ExtCreateRegion(lpXform, nCount, lpRgnData) end
    attach_function 'ExtCreateRegion', [XFORM.ptr(:in), :dword, RGNDATA.ptr(:in)], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-fillrgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @param [FFI::Pointer] hbr
    # @return [true, false]
    def self.FillRgn(hdc, hrgn, hbr) end
    attach_function 'FillRgn', [:hdc, :hrgn, :hbrush], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-framergn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @param [FFI::Pointer] hbr
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    def self.FrameRgn(hdc, hrgn, hbr, nWidth, nHeight) end
    attach_function 'FrameRgn', [:hdc, :hrgn, :hbrush, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpolyfillmode
    # @param [FFI::Pointer] hdc
    # @return [Intger]
    def self.GetPolyFillMode(hdc) end
    attach_function 'GetPolyFillMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getregiondata
    # @param [FFI::Pointer] hRgn
    # @param [Integer] dwCount
    # @param [FFI::Pointer] lpRgnData
    # @return [Integer]
    def self.GetRegionData(hRgn, dwCount, lpRgnData) end
    attach_function 'GetRegionData', [:hrgn, :dword, RGNDATA.ptr(:out)], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrgnbox
    # @param [FFI::Pointer] hrgn
    # @param [FFI::Pointer] lprc
    # @return [Integer]
    def self.GetRgnBox(hrgn, lprc) end
    attach_function 'GetRgnBox', [:hrgn, RECT.ptr(:out)], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-invertrgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @return [true, false]
    def self.InvertRgn(hdc, hrgn) end
    attach_function 'InvertRgn', [:hdc, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetrgn
    # @param [FFI::Pointer] hrgn
    # @param [Integer] nXOffset
    # @param [Integer] nYOffset
    # @return [Integer]
    def self.OffsetRgn(hrgn, nXOffset, nYOffset) end
    attach_function 'OffsetRgn', [:hrgn, :int, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-paintrgn
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hrgn
    # @return [true, false]
    def self.PaintRgn(hdc, hrgn) end
    attach_function 'PaintRgn', [:hdc, :hrgn], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-ptinregion
    # @param [FFI::Pointer] hrgn
    # @param [Integer] x
    # @param [Integer] y
    # @return [true, false]
    def self.PtInRegion(hrgn, x, y) end
    attach_function 'PtInRegion', [:hrgn, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-rectinregion
    # @param [FFI::Pointer] hrgn
    # @param [FFI::Pointer] lprc
    # @return [true, false]
    def self.RectInRegion(hrgn, lprc) end
    attach_function 'RectInRegion', [:hrgn, RECT.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpolyfillmode
    # @param [FFI::Pointer] hdc
    # @param [Integer] iPolyFillMode
    # @return [Integer]
    def self.SetPolyFillMode(hdc, iPolyFillMode) end
    attach_function 'SetPolyFillMode', [:hdc, PolyFillMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setrectrgn
    # @param [FFI::Pointer] hrgn
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @return [true, false]
    def self.SetRectRgn(hrgn, nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'SetRectRgn', [:hrgn, :int, :int, :int, :int], :bool
  end
end
