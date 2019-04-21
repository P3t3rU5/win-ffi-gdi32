require 'win-ffi/core/struct/point'

require_relative '../enum/brush/hatch_style'
require_relative '../enum/dib_color_identifier'
require_relative '../enum/bitmap/bit_blt_flag'

require_relative '../struct/brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createbrushindirect
    # @param [FFI::Pointer] lplb
    # @return [FFI::Pointer]
    def self.CreateBrushIndirect(lplb); end
    attach_function 'CreateBrushIndirect', [LOGBRUSH.ptr(:in)], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibpatternbrush
    # @param [FFI::Pointer] hglbDIBPacked
    # @param [Integer] fuColorSpec
    # @return [FFI::Pointer]
    def self.CreateDIBPatternBrush(hglbDIBPacked, fuColorSpec); end
    attach_function 'CreateDIBPatternBrush', [:hglobal, DibColorIdentifier], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdibpatternbrushpt
    # @param [FFI::Pointer] lpPackedDIB
    # @param [Integer] iUsage
    # @return [FFI::Pointer]
    def self.CreateDIBPatternBrushPt(lpPackedDIB, iUsage); end
    attach_function 'CreateDIBPatternBrushPt', [:pointer, DibColorIdentifier], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createhatchbrush
    # @param [Integer] fnStyle
    # @param [Integer] clrref
    # @return [FFI::Pointer]
    def self.CreateHatchBrush(fnStyle, clrref); end
    attach_function 'CreateHatchBrush', [HatchStyle, :colorref], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpatternbrush
    # @param [FFI::Pointer] hbmp
    # @return [FFI::Pointer]
    def self.CreatePatternBrush(hbmp); end
    attach_function 'CreatePatternBrush', [:hbitmap], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createsolidbrush
    # @param [Integer] crColor
    # @return [FFI::Pointer]
    def self.CreateSolidBrush(crColor); end
    attach_function 'CreateSolidBrush', [:colorref], :hbrush

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbrushorgex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @return [true, false]
    def self.GetBrushOrgEx(hdc, lppt); end
    attach_function 'GetBrushOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-patblt
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXLeft
    # @param [Integer] nYLeft
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [Integer] dwRop
    # @return [true, false]
    def self.PatBlt(hdc, nXLeft, nYLeft, nWidth, nHeight, dwRop); end
    attach_function 'PatBlt', [:hdc, :int, :int, :int, :int, BitBltFlag], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbrushorgex
    # Same as FixBrushOrgEx (win 95)
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXOrg
    # @param [Integer] nYOrg
    # @param [FFI::Pointer] lppt
    # @return [true, false]
    def self.SetBrushOrgEx(hdc, nXOrg, nYOrg, lppt); end
    attach_function 'SetBrushOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool
  end
end