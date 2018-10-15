require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/size'

require_relative '../enum/transform/modify_world_transform'
require_relative '../enum/transform/graphic_mode'
require_relative '../enum/transform/mapping_mode'

require_relative '../struct/transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-combinetransform
    # BOOL CombineTransform( _Out_ LPXFORM lpxformResult, _In_  const XFORM *lpxform1, _In_ const XFORM *lpxform2)
    def self.CombineTransform(lpxformResult, lpxform1, lpxform2) end
    attach_function 'CombineTransform', [XFORM.ptr(:out), XFORM.ptr(:in), XFORM.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-dptolp
    # BOOL DPtoLP( _In_    HDC     hdc, _Inout_ LPPOINT lpPoints, _In_    int     nCount)
    def self.DPtoLP(hdc, lpPoints, nCount) end
    attach_function 'DPtoLP', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcurrentpositionex
    # BOOL GetCurrentPositionEx(_In_  HDC     hdc, _Out_ LPPOINT lpPoint)
    def self.GetCurrentPositionEx(hdc, lpPoint) end
    attach_function 'GetCurrentPositionEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getgraphicsmode
    # int GetGraphicsMode(_In_ HDC hdc)
    def self.GetGraphicsMode(hdc) end
    attach_function 'GetGraphicsMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmapmode
    # int GetMapMode(_In_ HDC hdc)
    def self.GetMapMode(hdc) end
    attach_function 'GetMapMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getviewportextex
    # BOOL GetViewportExtEx(_In_  HDC    hdc, _Out_ LPSIZE lpSize)
    def self.GetViewportExtEx(hdc, lpSize) end
    attach_function 'GetViewportExtEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getviewportorgex
    # BOOL GetViewportOrgEx(_In_  HDC     hdc, _Out_ LPPOINT lpPoint)
    def self.GetViewportOrgEx(hdc, lpPoint) end
    attach_function 'GetViewportOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getwindowextex
    # BOOL GetWindowExtEx(_In_  HDC    hdc, _Out_ LPSIZE lpSize)
    def self.GetWindowExtEx(hdc, lpSize) end
    attach_function 'GetWindowExtEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getwindoworgex
    # BOOL GetWindowOrgEx(_In_  HDC     hdc, _Out_ LPPOINT lpPoint)
    def self.GetWindowOrgEx(hdc, lpPoint) end
    attach_function 'GetWindowOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getworldtransform
    # BOOL GetWorldTransform(_In_  HDC     hdc, _Out_ LPXFORM lpXform)
    def self.GetWorldTransform(hdc, lpXform) end
    attach_function 'GetWorldTransform', [:hdc, XFORM.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-lptodp
    # BOOL LPtoDP(_In_ HDC hdc, _Inout_ LPPOINT lpPoints, _In_ int nCount)
    def self.LPtoDP(hdc, lpPoints, nCount) end
    attach_function 'LPtoDP', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-modifyworldtransform
    # BOOL ModifyWorldTransform( _In_       HDC   hdc, _In_ const XFORM *lpXform, _In_       DWORD iMode)
    def self.ModifyWorldTransform(hdc, lpXform, iMode) end
    attach_function 'ModifyWorldTransform', [:hdc, XFORM.ptr(:in), ModifyWorldTransform], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetviewportorgex
    # BOOL OffsetViewportOrgEx( _In_  HDC hdc, _In_  int nXOffset, _In_  int nYOffset, _Out_ LPPOINT lpPoint)
    def self.OffsetViewportOrgEx(hdc, nXOffset, nYOffset, lpPoint) end
    attach_function 'OffsetViewportOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetwindoworgex
    # BOOL OffsetWindowOrgEx( _In_  HDC     hdc, _In_  int     nXOffset, _In_  int     nYOffset, _Out_ LPPOINT lpPoint)
    def self.OffsetWindowOrgEx(hdc, nXOffset, nYOffset, lpPoint) end
    attach_function 'OffsetWindowOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-scaleviewportextex
    # BOOL ScaleViewportExtEx(
    #   _In_  HDC    hdc,
    #   _In_  int    Xnum,
    #   _In_  int    Xdenom,
    #   _In_  int    Ynum,
    #   _In_  int    Ydenom,
    #   _Out_ LPSIZE lpSize)
    def self.ScaleViewportExtEx(hdc, xnum, xdenom, ynum, ydenom, lpSize) end
    attach_function 'ScaleViewportExtEx', [:hdc, :int, :int, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-scalewindowextex
    # BOOL ScaleWindowExtEx(
    #   _In_  HDC    hdc,
    #   _In_  int    Xnum,
    #   _In_  int    Xdenom,
    #   _In_  int    Ynum,
    #   _In_  int    Ydenom,
    #   _Out_ LPSIZE lpSize)
    def self.ScaleWindowExtEx(hdc, xnum, xdenom, ynum, ydenom, lpSize) end
    attach_function 'ScaleWindowExtEx', [:hdc, :int, :int, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setgraphicsmode
    # int SetGraphicsMode(_In_ HDC hdc, _In_ int iMode)
    def self.SetGraphicsMode(hdc, iMode) end
    attach_function 'SetGraphicsMode', [:hdc, GraphicMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmapmode
    # int SetMapMode(_In_ HDC hdc, _In_ int fnMapMode)
    def self.SetMapMode(hdc, fnMapMode) end
    attach_function 'SetMapMode', [:hdc, MappingMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setviewportextex
    # BOOL SetViewportExtEx( _In_  HDC    hdc, _In_  int    nXExtent, _In_  int    nYExtent, _Out_ LPSIZE lpSize)
    def self.SetViewportExtEx(hdc, nXExtent, nYExtent, lpSize) end
    attach_function 'SetViewportExtEx', [:hdc, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setviewportorgex
    # BOOL SetViewportOrgEx( _In_  HDC     hdc, _In_  int     X, _In_  int     Y, _Out_ LPPOINT lpPoint)
    def self.SetViewportOrgEx(hdc, x, y, lpPoint) end
    attach_function 'SetViewportOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setwindowextex
    # BOOL SetWindowExtEx( _In_  HDC    hdc, _In_  int    nXExtent, _In_  int    nYExtent, _Out_ LPSIZE lpSize)
    def self.SetWindowExtEx(hdc, nXExtent, nYExtent, lpSize) end
    attach_function 'SetWindowExtEx', [:hdc, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setwindoworgex
    # BOOL SetWindowOrgEx( _In_  HDC     hdc, _In_  int     X, _In_  int     Y, _Out_ LPPOINT lpPoint)
    def self.SetWindowOrgEx(hdc, x, y, lpPoint) end
    attach_function 'SetWindowOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setworldtransform
    # BOOL SetWorldTransform(_In_       HDC   hdc, _In_ const XFORM *lpXform)
    def self.SetWorldTransform(hdc, lpXform) end
    attach_function 'SetWorldTransform', [:hdc, XFORM.ptr(:in)], :bool
  end
end