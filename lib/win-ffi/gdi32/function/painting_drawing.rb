require 'win-ffi/gdi32/enum/painting_drawing/raster_ops2'
require 'win-ffi/gdi32/enum/painting_drawing/set_bounds_rect_flag'
require 'win-ffi/gdi32/enum/painting_drawing/background_mode'

require 'win-ffi/core/struct/rect'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd144844(v=vs.85).aspx
    # BOOL GdiFlush(void)
    attach_function 'GdiFlush', [:void], :bool

    # https://msdn.microsoft.com/en-us/library/dd144845(v=vs.85).aspx
    # DWORD GdiGetBatchLimit(void)
    attach_function 'GdiGetBatchLimit', [:void], :dword

    # https://msdn.microsoft.com/en-us/library/dd144846(v=vs.85).aspx
    # DWORD GdiSetBatchLimit( _In_  DWORD dwLimit )
    attach_function 'GdiSetBatchLimit', [:dword], :dword

    # https://msdn.microsoft.com/en-us/library/dd144852(v=vs.85).aspx
    # COLORREF GetBkColor( _In_  HDC hdc )
    attach_function 'GetBkColor', [:hdc], :colorref

    # https://msdn.microsoft.com/en-us/library/dd144853(v=vs.85).aspx
    # int GetBkMode( _In_  HDC hdc )
    attach_function 'GetBkMode', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd144854(v=vs.85).aspx
    # UINT GetBoundsRect(
    #   _In_   HDC hdc,
    #   _Out_  LPRECT lprcBounds,
    #   _In_   UINT flags )
    attach_function 'GetBoundsRect', [:hdc, RECT.ptr, :uint], :uint

    # https://msdn.microsoft.com/en-us/library/dd144922(v=vs.85).aspx
    # int GetROP2( _In_  HDC hdc )
    attach_function 'GetROP2', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd162964(v=vs.85).aspx
    # COLORREF SetBkColor(
    #   _In_  HDC hdc,
    #   _In_  COLORREF crColor )
    attach_function 'SetBkColor', [:hdc, :colorref], :colorref

    # https://msdn.microsoft.com/en-us/library/dd162965(v=vs.85).aspx
    # int SetBkMode(
    #   _In_  HDC hdc,
    #   _In_  int iBkMode )
    attach_function 'SetBkMode', [:hdc, BackgroundMode], :int

    # https://msdn.microsoft.com/en-us/library/dd162966(v=vs.85).aspx
    # UINT SetBoundsRect(
    #   _In_  HDC hdc,
    #   _In_  const RECT *lprcBounds,
    #   _In_  UINT flags )
    attach_function 'SetBoundsRect', [:hdc, RECT.ptr, BoundsRectFlag], :uint

    # https://msdn.microsoft.com/en-us/library/dd145088(v=vs.85).aspx
    # int SetROP2(
    #   _In_  HDC hdc,
    #   _In_  int fnDrawMode )
    attach_function 'SetROP2', [:hdc, RasterOps2], :int
  end
end
