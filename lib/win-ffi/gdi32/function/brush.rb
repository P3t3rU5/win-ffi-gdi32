require 'win-ffi/gdi32'

require 'win-ffi/gdi32/enum/brush/hatch_style'
require 'win-ffi/gdi32/enum/dib_color_identifier'
require 'win-ffi/gdi32/enum/bitmap/bit_blt_flag'

require 'win-ffi/gdi32/struct/brush/log_brush'

require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183487(v=vs.85).aspx
    # HBRUSH CreateBrushIndirect( _In_  const LOGBRUSH *lplb )
    attach_function 'CreateBrushIndirect', [LOGBRUSH.ptr(:in)], :hbrush

    # https://msdn.microsoft.com/en-us/library/dd183492(v=vs.85).aspx
    # HBRUSH CreateDIBPatternBrush(
    #   _In_  HGLOBAL hglbDIBPacked,
    #   _In_  UINT fuColorSpec )
    attach_function 'CreateDIBPatternBrush', [:hglobal, DibColorIdentifier], :hbrush

    # https://msdn.microsoft.com/en-us/library/dd183493(v=vs.85).aspx
    # HBRUSH CreateDIBPatternBrushPt(
    #   _In_  const VOID *lpPackedDIB,
    #   _In_  UINT iUsage )
    attach_function 'CreateDIBPatternBrushPt', [:pointer, DibColorIdentifier], :hbrush

    # https://msdn.microsoft.com/en-us/library/dd183504(v=vs.85).aspx
    # HBRUSH CreateHatchBrush(
    #   _In_  int fnStyle,
    #   _In_  COLORREF clrref )
    attach_function 'CreateHatchBrush', [HatchStyle, :colorref], :hbrush

    # https://msdn.microsoft.com/en-us/library/dd183508(v=vs.85).aspx
    # HBRUSH CreatePatternBrush( _In_  HBITMAP hbmp )
    attach_function 'CreatePatternBrush', [:hbitmap], :hbrush

    # https://msdn.microsoft.com/en-us/library/dd183518(v=vs.85).aspx
    # HBRUSH CreateSolidBrush( _In_  COLORREF crColor )
    attach_function 'CreateSolidBrush', [:colorref], :hbrush

    # https://msdn.microsoft.com/en-us/library/dd144855(v=vs.85).aspx
    # BOOL GetBrushOrgEx(
    #   _In_   HDC hdc,
    #   _Out_  LPPOINT lppt )
    attach_function 'GetBrushOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162778(v=vs.85).aspx
    # BOOL PatBlt(
    #   _In_  HDC hdc,
    #   _In_  int nXLeft,
    #   _In_  int nYLeft,
    #   _In_  int nWidth,
    #   _In_  int nHeight,
    #   _In_  DWORD dwRop )
    attach_function 'PatBlt', [:hdc, :int, :int, :int, :int, BitBltFlag], :bool

    # https://msdn.microsoft.com/en-us/library/dd162967(v=vs.85).aspx
    # BOOL SetBrushOrgEx(
    #   _In_   HDC hdc,
    #   _In_   int nXOrg,
    #   _In_   int nYOrg,
    #   _Out_  LPPOINT lppt )
    attach_function 'SetBrushOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

  end
end