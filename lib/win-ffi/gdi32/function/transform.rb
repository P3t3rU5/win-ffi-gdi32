require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/size'

require_relative '../enum/transform/modify_world_transform'
require_relative '../enum/transform/graphic_mode'
require_relative '../enum/transform/mapping_mode'

require_relative '../struct/transform/xform'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-combinetransform
    # @param [FFI::Pointer] lpxformResult
    # @param [FFI::Pointer] lpxform1
    # @param [FFI::Pointer] lpxform2
    # @return [true, false]
    def self.CombineTransform(lpxformResult, lpxform1, lpxform2) end
    attach_function 'CombineTransform', [XFORM.ptr(:out), XFORM.ptr(:in), XFORM.ptr(:in)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-dptolp
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoints
    # @param [Integer] nCount
    # @return [true, false]
    def self.DPtoLP(hdc, lpPoints, nCount) end
    attach_function 'DPtoLP', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getcurrentpositionex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.GetCurrentPositionEx(hdc, lpPoint) end
    attach_function 'GetCurrentPositionEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getgraphicsmode
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetGraphicsMode(hdc) end
    attach_function 'GetGraphicsMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmapmode
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetMapMode(hdc) end
    attach_function 'GetMapMode', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getviewportextex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetViewportExtEx(hdc, lpSize) end
    attach_function 'GetViewportExtEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getviewportorgex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.GetViewportOrgEx(hdc, lpPoint) end
    attach_function 'GetViewportOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getwindowextex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.GetWindowExtEx(hdc, lpSize) end
    attach_function 'GetWindowExtEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getwindoworgex
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.GetWindowOrgEx(hdc, lpPoint) end
    attach_function 'GetWindowOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getworldtransform
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpXform
    # @return [true, false]
    def self.GetWorldTransform(hdc, lpXform) end
    attach_function 'GetWorldTransform', [:hdc, XFORM.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-lptodp
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoints
    # @param [Integer] nCount
    # @return [true, false]
    def self.LPtoDP(hdc, lpPoints, nCount) end
    attach_function 'LPtoDP', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-modifyworldtransform
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpXform
    # @param [Integer] iMode
    # @return [true, false]
    def self.ModifyWorldTransform(hdc, lpXform, iMode) end
    attach_function 'ModifyWorldTransform', [:hdc, XFORM.ptr(:in), ModifyWorldTransform], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetviewportorgex
      # BOOL OffsetViewportOrgEx( _In_  HDC hdc, _In_  int nXOffset, _In_  int nYOffset, _Out_ LPPOINT lpPoint)
    def self.OffsetViewportOrgEx(hdc, nXOffset, nYOffset, lpPoint) end
    attach_function 'OffsetViewportOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-offsetwindoworgex
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXOffset
    # @param [Integer] nYOffset
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.OffsetWindowOrgEx(hdc, nXOffset, nYOffset, lpPoint) end
    attach_function 'OffsetWindowOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-scaleviewportextex
    # @param [FFI::Pointer] hdc
    # @param [Integer] xnum
    # @param [Integer] xdenom
    # @param [Integer] ynum
    # @param [Integer] ydenom
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.ScaleViewportExtEx(hdc, xnum, xdenom, ynum, ydenom, lpSize) end
    attach_function 'ScaleViewportExtEx', [:hdc, :int, :int, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-scalewindowextex
    # @param [FFI::Pointer] hdc
    # @param [Integer] xnum
    # @param [Integer] xdenom
    # @param [Integer] ynum
    # @param [Integer] ydenom
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.ScaleWindowExtEx(hdc, xnum, xdenom, ynum, ydenom, lpSize) end
    attach_function 'ScaleWindowExtEx', [:hdc, :int, :int, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setgraphicsmode
    # @param [FFI::Pointer] hdc
    # @param [Integer] iMode
    # @return [Integer]
    def self.SetGraphicsMode(hdc, iMode) end
    attach_function 'SetGraphicsMode', [:hdc, GraphicMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmapmode
    # @param [FFI::Pointer] hdc
    # @param [Integer] fnMapMode
    # @return [Integer]
    def self.SetMapMode(hdc, fnMapMode) end
    attach_function 'SetMapMode', [:hdc, MappingMode], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setviewportextex
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXExtent
    # @param [Integer] nYExtent
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.SetViewportExtEx(hdc, nXExtent, nYExtent, lpSize) end
    attach_function 'SetViewportExtEx', [:hdc, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setviewportorgex
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.SetViewportOrgEx(hdc, x, y, lpPoint) end
    attach_function 'SetViewportOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setwindowextex
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXExtent
    # @param [Integer] nYExtent
    # @param [FFI::Pointer] lpSize
    # @return [true, false]
    def self.SetWindowExtEx(hdc, nXExtent, nYExtent, lpSize) end
    attach_function 'SetWindowExtEx', [:hdc, :int, :int, SIZE.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setwindoworgex
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.SetWindowOrgEx(hdc, x, y, lpPoint) end
    attach_function 'SetWindowOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setworldtransform
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpXform
    # @return [true, false]
    def self.SetWorldTransform(hdc, lpXform) end
    attach_function 'SetWorldTransform', [:hdc, XFORM.ptr(:in)], :bool
  end
end