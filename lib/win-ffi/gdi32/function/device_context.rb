require 'win-ffi/core/struct/point'

require 'win-ffi/gdi32/struct/devmode'
require_relative '../enum/device_context/stock_object'
require_relative '../enum/device_context/set_layout_flag'
require_relative '../enum/device_context'

require_relative '../typedef/hgdiobj'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-canceldc
    # BOOL CancelDC( _In_  HDC hdc )
    def self.CancelDC(hdc) end
    attach_function 'CancelDC', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcompatibledc
    # HDC CreateCompatibleDC( _In_  HDC hdc )
    def self.CreateCompatibleDC(hdc) end
    attach_function 'CreateCompatibleDC', [:hdc], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdca
    # HDC CreateDC( LPCTSTR lpszDriver, _In_  LPCTSTR lpszDevice, LPCTSTR lpszOutput, _In_  const DEVMODE *lpInitData )
    def self.CreateDC(lpszDriver, lpszDevice, lpszOutput, lpInitData) end
    encoded_function 'CreateDC', [:string, :string, :pointer, DEVMODE.ptr], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createica
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createicw
    # HDC CreateIC(_In_ LPCTSTR lpszDriver, _In_ LPCTSTR lpszDevice, LPCTSTR lpszOutput, _In_ const DEVMODE *lpdvmInit )
    def self.CreateIC(lpszDriver, lpszDevice, lpszOutput, lpdvmInit) end
    encoded_function 'CreateIC', [:string, :string, :pointer, DEVMODE.ptr], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deletedc
    # BOOL DeleteDC( _In_  HDC hdc )
    def self.DeleteDC(hdc) end
    attach_function 'DeleteDC', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deleteobject
    # BOOL DeleteObject( _In_  HGDIOBJ hObject )
    def self.DeleteObject(hObject) end
    attach_function 'DeleteObject', [:hgdiobj], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-drawescape
    # int DrawEscape( _In_  HDC hdc, _In_  int nEscape, _In_  int cbInput, _In_  LPCSTR lpszInData )
    def self.DrawEscape(hdc, nEscape, cbInput, lpszInData) end
    attach_function 'DrawEscape', [:hdc, :int, :int, :string], :int

    # https://msdn.microsoft.com/en-us/library/dd162686(v=vs.85).aspx
    # int CALLBACK EnumObjectsProc( _In_  LPVOID lpLogObject, _In_  LPARAM lpData )
    EnumObjectsProc = callback 'EnumObjectsProc', [:pointer, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumobjects
    # int EnumObjects( _In_  HDC hdc, _In_  int nObjectType, _In_  GOBJENUMPROC lpObjectFunc, _In_  LPARAM lParam )
    def self.EnumObjects(hdc, nEscape, lpObjectFunc, lParam) end
    attach_function 'EnumObjects', [:hdc, :int, EnumObjectsProc, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcurrentobject
    # HGDIOBJ GetCurrentObject( _In_  HDC hdc, _In_  UINT uObjectType )
    def self.GetCurrentObject(hdc, uObjectType) end
    attach_function 'GetCurrentObject', [:hdc, :uint], :hgdiobj

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdcbrushcolor
    # COLORREF GetDCBrushColor( _In_  HDC hdc )
    def self.GetDCBrushColor(hdc) end
    attach_function 'GetDCBrushColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdcorgex
    # BOOL GetDCOrgEx( _In_   HDC hdc, _Out_  LPPOINT lpPoint )
    def self.GetDCOrgEx(hdc, lpPoint) end
    attach_function 'GetDCOrgEx', [:hdc, POINT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdcpencolor
    # COLORREF GetDCPenColor( _In_  HDC hdc )
    def self.GetDCPenColor(hdc) end
    attach_function 'GetDCPenColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdevicecaps
    # int GetDeviceCaps( _In_  HDC hdc, _In_  int nIndex )
    def self.GetDeviceCaps(hdc, nIndex) end
    attach_function 'GetDeviceCaps', [:hdc, DeviceContext], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getlayout
    # DWORD GetLayout( _In_  HDC hdc )
    def self.GetLayout(hdc) end
    attach_function 'GetLayout', [:hdc], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getobject
    # int GetObject( _In_   HGDIOBJ hgdiobj, _In_   int cbBuffer, _Out_  LPVOID lpvObject )
    def self.GetObject(hgdiobj, cbBuffer, lpvObject) end
    encoded_function 'GetObject', [:hgdiobj, :int, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getobjecttype
    # DWORD GetObjectType( _In_  HGDIOBJ h )
    def self.GetObjectType(h) end
    attach_function 'GetObjectType', [:hgdiobj], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getstockobject
    # HGDIOBJ GetStockObject( _In_  int fnObject )
    def self.GetStockObject(fnObject) end
    attach_function 'GetStockObject', [StockObject], :hgdiobj

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-resetdc
    # HDC ResetDC( _In_  HDC hdc, _In_  const DEVMODE *lpInitData )
    def self.ResetDC(hdc, lpInitData) end
    encoded_function 'ResetDC', [:hdc, DEVMODE.ptr], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-restoredc
    # BOOL RestoreDC( _In_  HDC hdc, _In_  int nSavedDC )
    def self.RestoreDC(hdc, lpInitData) end
    attach_function 'RestoreDC', [:hdc, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-savedc
    # int SaveDC( _In_  HDC hdc )
    def self.SaveDC(hdc) end
    attach_function 'SaveDC', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectobject
    # HGDIOBJ SelectObject( _In_  HDC hdc, _In_  HGDIOBJ hgdiobj )
    def self.SelectObject(hdc, hgdiobj) end
    attach_function 'SelectObject', [:hdc, :hgdiobj], :hgdiobj

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdcbrushcolor
    # COLORREF SetDCBrushColor( _In_  HDC hdc, _In_  COLORREF crColor )
    def self.SetDCBrushColor(hdc, crColor) end
    attach_function 'SetDCBrushColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdcpencolor
    # COLORREF SetDCPenColor( _In_  HDC hdc, _In_  COLORREF crColor )
    def self.SetDCPenColor(hdc, crColor) end
    attach_function 'SetDCPenColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setlayout
    # DWORD SetLayout( _In_  HDC hdc, _In_  DWORD dwLayout )
    def self.SetLayout(hdc, dwLayout) end
    attach_function 'SetLayout', [:hdc, SetLayoutFlag], :dword
  end
end