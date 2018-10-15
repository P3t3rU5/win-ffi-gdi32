require 'win-ffi/core/struct/rect'

require_relative '../enum/painting_drawing/raster_ops2'
require_relative '../enum/painting_drawing/set_bounds_rect_flag'
require_relative '../enum/painting_drawing/background_mode'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdiflush
    # BOOL GdiFlush(void)
    def self.GdiFlush; end
    attach_function 'GdiFlush', [:void], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdigetbatchlimit
    # DWORD GdiGetBatchLimit(void)
    def self.GdiGetBatchLimit; end
    attach_function 'GdiGetBatchLimit', [:void], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdisetbatchlimit
    # DWORD GdiSetBatchLimit( _In_  DWORD dwLimit )
    def self.GdiSetBatchLimit(dwLimit) end
    attach_function 'GdiSetBatchLimit', [:dword], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbkcolor
    # COLORREF GetBkColor( _In_  HDC hdc )
    def self.GetBkColor(hdc) end
    attach_function 'GetBkColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getbkmode
    # int GetBkMode( _In_  HDC hdc )
    def self.GetBkMode(hdc) end
    attach_function 'GetBkMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getboundsrect
    # UINT GetBoundsRect( _In_   HDC hdc, _Out_  LPRECT lprcBounds, _In_   UINT flags )
    def self.GetBoundsRect(hdc, lprcBounds, flags) end
    attach_function 'GetBoundsRect', [:hdc, RECT.ptr, :uint], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getrop2
    # int GetROP2( _In_  HDC hdc )
    def self.GetROP2(hdc) end
    attach_function 'GetROP2', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setbkcolor
    # COLORREF SetBkColor( _In_  HDC hdc, _In_  COLORREF crColor )
    def self.SetBkColor(hdc, crColor) end
    attach_function 'SetBkColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-SetBkMode
    # int SetBkMode( _In_  HDC hdc, _In_  int iBkMode )
    def self.SetBkMode(hdc, iBkMode) end
    attach_function 'SetBkMode', [:hdc, BackgroundMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setboundsrect
    # UINT SetBoundsRect( _In_  HDC hdc, _In_  const RECT *lprcBounds, _In_  UINT flags )
    def self.SetBoundsRect(hdc, lprcBounds, flags) end
    attach_function 'SetBoundsRect', [:hdc, RECT.ptr, BoundsRectFlag], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setrop2
    # int SetROP2( _In_  HDC hdc, _In_  int fnDrawMode )
    def self.SetROP2(hdc, fnDrawMode) end
    attach_function 'SetROP2', [:hdc, RasterOps2], :int
  end
end
