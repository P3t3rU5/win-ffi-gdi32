require 'win-ffi/core/struct/rect'

require_relative '../enum/painting_drawing/raster_ops2'
require_relative '../enum/painting_drawing/set_bounds_rect_flag'
require_relative '../enum/painting_drawing/background_mode'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdiflush
    # @return [true, false]
    def self.GdiFlush; end
    attach_function 'GdiFlush', [:void], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdigetbatchlimit
    # @return [Integer]
    def self.GdiGetBatchLimit; end
    attach_function 'GdiGetBatchLimit', [], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdisetbatchlimit
    # @param [Integer] dwLimit
    # @return [Integer]
    def self.GdiSetBatchLimit(dwLimit) end
    attach_function 'GdiSetBatchLimit', [:dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbkcolor
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetBkColor(hdc) end
    attach_function 'GetBkColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbkmode
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetBkMode(hdc) end
    attach_function 'GetBkMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getboundsrect
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprcBounds
    # @param [Integer] flags
    # @return [Integer]
    def self.GetBoundsRect(hdc, lprcBounds, flags) end
    attach_function 'GetBoundsRect', [:hdc, RECT.ptr(:out), :uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrop2
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetROP2(hdc) end
    attach_function 'GetROP2', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbkcolor
    # @param [FFI::Pointer] hdc
    # @param [Integer] crColor
    # @return [Integer]
    def self.SetBkColor(hdc, crColor) end
    attach_function 'SetBkColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-SetBkMode
    # @param [FFI::Pointer] hdc
    # @param [Integer] iBkMode
    # @return [Integer]
    def self.SetBkMode(hdc, iBkMode) end
    attach_function 'SetBkMode', [:hdc, BackgroundMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setboundsrect
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lprcBounds
    # @param [Integer] flags
    # @return [Integer]
    def self.SetBoundsRect(hdc, lprcBounds, flags) end
    attach_function 'SetBoundsRect', [:hdc, RECT.ptr(:in), BoundsRectFlag], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setrop2
    # @param [FFI::Pointer] hdc
    # @param [Integer] fnDrawMode
    # @return [Integer]
    def self.SetROP2(hdc, fnDrawMode) end
    attach_function 'SetROP2', [:hdc, RasterOps2], :int
  end
end
