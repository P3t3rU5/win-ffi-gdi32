require 'win-ffi/core/struct/point'

require 'win-ffi/gdi32/struct/devmode'
require_relative '../enum/device_context/stock_object'
require_relative '../enum/device_context/set_layout_flag'
require_relative '../enum/device_context'

require_relative '../typedef/hgdiobj'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-canceldc
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.CancelDC(hdc) end
    attach_function 'CancelDC', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createcompatibledc
    # @param [FFI::Pointer] hdc
    # @return [FFI::Pointer]
    def self.CreateCompatibleDC(hdc) end
    attach_function 'CreateCompatibleDC', [:hdc], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdca
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createdcw
    # @param [String] lpszDriver
    # @param [String] lpszDevice
    # @param [FFI::Pointer] lpszOutput
    # @param [FFI::Pointer] lpInitData
    # @return [FFI::Pointer]
    def self.CreateDC(lpszDriver, lpszDevice, lpszOutput, lpInitData) end
    encoded_function 'CreateDC', [:string, :string, :pointer, DEVMODE.ptr(:in)], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createica
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createicw
    # @param [String] lpszDriver
    # @param [String] lpszDevice
    # @param [FFI::Pointer] lpszOutput
    # @param [FFI::Pointer] lpdvmInit
    # @return [FFI::Pointer]
    def self.CreateIC(lpszDriver, lpszDevice, lpszOutput, lpdvmInit) end
    encoded_function 'CreateIC', [:string, :string, :pointer, DEVMODE.ptr(:in)], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deletedc
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.DeleteDC(hdc) end
    attach_function 'DeleteDC', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deleteobject
    # @param [FFI::Pointer] hObject
    # @return [true, false]
    def self.DeleteObject(hObject) end
    attach_function 'DeleteObject', [:hgdiobj], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-drawescape
    # @param [FFI::Pointer] hdc
    # @param [Integer] nEscape
    # @param [Integer] cbInput
    # @param [String] lpszInData
    # @return [Integer]
    def self.DrawEscape(hdc, nEscape, cbInput, lpszInData) end
    attach_function 'DrawEscape', [:hdc, :int, :int, :string], :int

    # https://msdn.microsoft.com/en-us/library/dd162686(v=vs.85).aspx
    # int CALLBACK EnumObjectsProc( _In_  LPVOID lpLogObject, _In_  LPARAM lpData )
    EnumObjectsProc = callback 'EnumObjectsProc', [:pointer, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumobjects
    # @param [FFI::Pointer] hdc
    # @param [Integer] nEscape
    # @param [EnumObjectsProc] lpObjectFunc
    # @param [Integer] lParam
    # @return [Integer]
    def self.EnumObjects(hdc, nEscape, lpObjectFunc, lParam) end
    attach_function 'EnumObjects', [:hdc, :int, EnumObjectsProc, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcurrentobject
    # @param [FFI::Pointer] hdc
    # @param [Integer] uObjectType
    # @return [FFI::Pointer]
    def self.GetCurrentObject(hdc, uObjectType) end
    attach_function 'GetCurrentObject', [:hdc, :uint], :hgdiobj

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdcbrushcolor
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetDCBrushColor(hdc) end
    attach_function 'GetDCBrushColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdcorgex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.GetDCOrgEx(hdc, lpPoint) end
    attach_function 'GetDCOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdcpencolor
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetDCPenColor(hdc) end
    attach_function 'GetDCPenColor', [:hdc], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getdevicecaps
    # @param [FFI::Pointer] hdc
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetDeviceCaps(hdc, nIndex) end
    attach_function 'GetDeviceCaps', [:hdc, DeviceContext], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getlayout
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetLayout(hdc) end
    attach_function 'GetLayout', [:hdc], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getobject
    # @param [FFI::Pointer] hgdiobj
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] lpvObject
    # @return [Integer]
    def self.GetObject(hgdiobj, cbBuffer, lpvObject) end
    encoded_function 'GetObject', [:hgdiobj, :int, :pointer], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getobjecttype
    # @param [FFI::Pointer] h
    # @return [Integer]
    def self.GetObjectType(h) end
    attach_function 'GetObjectType', [:hgdiobj], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getstockobject
    # @param [Integer] fnObject
    # @return [FFI::Pointer]
    def self.GetStockObject(fnObject) end
    attach_function 'GetStockObject', [StockObject], :hgdiobj

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-resetdc
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpInitData
    # @return [FFI::Pointer]
    def self.ResetDC(hdc, lpInitData) end
    encoded_function 'ResetDC', [:hdc, DEVMODE.ptr(:in)], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-restoredc
    # @param [FFI::Pointer] hdc
    # @param [Integer] lpInitData
    # @return [true, false]
    def self.RestoreDC(hdc, lpInitData) end
    attach_function 'RestoreDC', [:hdc, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-savedc
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.SaveDC(hdc) end
    attach_function 'SaveDC', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-selectobject
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] hgdiobj
    # @return [FFI::Pointer]
    def self.SelectObject(hdc, hgdiobj) end
    attach_function 'SelectObject', [:hdc, :hgdiobj], :hgdiobj

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdcbrushcolor
    # @param [FFI::Pointer] hdc
    # @param [Integer] crColor
    # @return [Integer]
    def self.SetDCBrushColor(hdc, crColor) end
    attach_function 'SetDCBrushColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setdcpencolor
    # @param [FFI::Pointer] hdc
    # @param [Integer] crColor
    # @return [Integer]
    def self.SetDCPenColor(hdc, crColor) end
    attach_function 'SetDCPenColor', [:hdc, :colorref], :colorref

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setlayout
    # @param [FFI::Pointer] hdc
    # @param [Integer] dwLayout
    # @return [Integer]
    def self.SetLayout(hdc, dwLayout) end
    attach_function 'SetLayout', [:hdc, SetLayoutFlag], :dword
  end
end