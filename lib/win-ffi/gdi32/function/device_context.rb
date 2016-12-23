require 'win-ffi/gdi32'

require 'win-ffi/core/struct/point'
require 'win-ffi/gdi32/struct/devmode'
require 'win-ffi/gdi32/enum/device_context/set_layout_flag'

require 'win-ffi/gdi32/typedef/hgdiobj'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183399(v=vs.85).aspx
    # BOOL CancelDC( _In_  HDC hdc )
    attach_function 'CancelDC', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd183489(v=vs.85).aspx
    # HDC CreateCompatibleDC( _In_  HDC hdc )
    attach_function 'CreateCompatibleDC', [:hdc], :hdc

    # https://msdn.microsoft.com/en-us/library/dd183490(v=vs.85).aspx
    # HDC CreateDC(
    #   LPCTSTR lpszDriver,
    #   _In_  LPCTSTR lpszDevice,
    #   LPCTSTR lpszOutput,
    #   _In_  const DEVMODE *lpInitData )
    encoded_function 'CreateDC', [:string, :string, :pointer, DEVMODE.ptr], :hdc

    # https://msdn.microsoft.com/en-us/library/dd183505(v=vs.85).aspx
    # HDC CreateIC(
    #   _In_  LPCTSTR lpszDriver,
    #   _In_  LPCTSTR lpszDevice,
    #   LPCTSTR lpszOutput,
    #   _In_  const DEVMODE *lpdvmInit )
    encoded_function 'CreateIC', [:string, :string, :pointer, DEVMODE.ptr], :hdc

    # https://msdn.microsoft.com/en-us/library/dd183533(v=vs.85).aspx
    # BOOL DeleteDC( _In_  HDC hdc )
    attach_function 'DeleteDC', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd183539(v=vs.85).aspx
    # BOOL DeleteObject( _In_  HGDIOBJ hObject )
    attach_function 'DeleteObject', [:hgdiobj], :bool

    # https://msdn.microsoft.com/en-us/library/dd162478(v=vs.85).aspx
    # int DrawEscape(
    #   _In_  HDC hdc,
    #   _In_  int nEscape,
    #   _In_  int cbInput,
    #   _In_  LPCSTR lpszInData )
    attach_function 'DrawEscape', [:hdc, :int, :int, :string], :int

    # https://msdn.microsoft.com/en-us/library/dd162686(v=vs.85).aspx
    # int CALLBACK EnumObjectsProc(
    #   _In_  LPVOID lpLogObject,
    #   _In_  LPARAM lpData )
    EnumObjectsProc = callback 'EnumObjectsProc', [:pointer, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/dd162685(v=vs.85).aspx
    # int EnumObjects(
    #   _In_  HDC hdc,
    #   _In_  int nObjectType,
    #   _In_  GOBJENUMPROC lpObjectFunc,
    #   _In_  LPARAM lParam )
    attach_function 'EnumObjects', [:hdc, :int, EnumObjectsProc, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/dd144869(v=vs.85).aspx
    # HGDIOBJ GetCurrentObject(
    #   _In_  HDC hdc,
    #   _In_  UINT uObjectType )
    attach_function 'GetCurrentObject', [:hdc, :uint], :hgdiobj

    # https://msdn.microsoft.com/en-us/library/dd144872(v=vs.85).aspx
    # COLORREF GetDCBrushColor( _In_  HDC hdc )
    attach_function 'GetDCBrushColor', [:hdc], :colorref

    # https://msdn.microsoft.com/en-us/library/dd144874(v=vs.85).aspx
    # BOOL GetDCOrgEx(
    #   _In_   HDC hdc,
    #   _Out_  LPPOINT lpPoint )
    attach_function 'GetDCOrgEx', [:hdc, POINT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd144875(v=vs.85).aspx
    # COLORREF GetDCPenColor( _In_  HDC hdc )
    attach_function 'GetDCPenColor', [:hdc], :colorref

    # https://msdn.microsoft.com/en-us/library/dd144877(v=vs.85).aspx
    # int GetDeviceCaps(
    #   _In_  HDC hdc,
    #   _In_  int nIndex )
    attach_function 'GetDeviceCaps', [:hdc, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd144896(v=vs.85).aspx
    # DWORD GetLayout( _In_  HDC hdc )
    attach_function 'GetLayout', [:hdc], :dword

    # https://msdn.microsoft.com/en-us/library/dd144904(v=vs.85).aspx
    # int GetObject(
    #   _In_   HGDIOBJ hgdiobj,
    #   _In_   int cbBuffer,
    #   _Out_  LPVOID lpvObject )
    encoded_function 'GetObject', [:hgdiobj, :int, :pointer], :int

    # https://msdn.microsoft.com/en-us/library/dd144905(v=vs.85).aspx
    # DWORD GetObjectType( _In_  HGDIOBJ h )
    attach_function 'GetObjectType', [:hgdiobj], :dword

    # https://msdn.microsoft.com/en-us/library/dd144925(v=vs.85).aspx
    # HGDIOBJ GetStockObject( _In_  int fnObject )
    attach_function 'GetStockObject', [:int], :hgdiobj

    # https://msdn.microsoft.com/en-us/library/dd162925(v=vs.85).aspx
    # HDC ResetDC(
    #   _In_  HDC hdc,
    #   _In_  const DEVMODE *lpInitData )
    encoded_function 'ResetDC', [:hdc, DEVMODE.ptr], :hdc

    # https://msdn.microsoft.com/en-us/library/dd162929(v=vs.85).aspx
    # BOOL RestoreDC(
    #   _In_  HDC hdc,
    #   _In_  int nSavedDC )
    attach_function 'RestoreDC', [:hdc, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162945(v=vs.85).aspx
    # int SaveDC( _In_  HDC hdc )
    attach_function 'SaveDC', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd162957(v=vs.85).aspx
    # HGDIOBJ SelectObject(
    #   _In_  HDC hdc,
    #   _In_  HGDIOBJ hgdiobj )
    attach_function 'SelectObject', [:hdc, :hgdiobj], :hgdiobj

    # https://msdn.microsoft.com/en-us/library/dd162969(v=vs.85).aspx
    # COLORREF SetDCBrushColor(
    #   _In_  HDC hdc,
    #   _In_  COLORREF crColor )
    attach_function 'SetDCBrushColor', [:hdc, :colorref], :colorref

    # https://msdn.microsoft.com/en-us/library/dd162970(v=vs.85).aspx
    # COLORREF SetDCPenColor(
    #   _In_  HDC hdc,
    #   _In_  COLORREF crColor )
    attach_function 'SetDCPenColor', [:hdc, :colorref], :colorref

    # https://msdn.microsoft.com/en-us/library/dd162979(v=vs.85).aspx
    # DWORD SetLayout(
    #   _In_  HDC hdc,
    #   _In_  DWORD dwLayout )
    attach_function 'SetLayout', [:hdc, SetLayoutFlag], :dword
  end
end