require 'win-ffi/core/struct/point'

require_relative '../enum/line_curve/arc_direction'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-anglearc
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] dwRadius
    # @param [Float] eStartAngle
    # @param [Float] eSweepAngle
    # @return [true, false]
    def self.AngleArc(hdc, x, y, dwRadius, eStartAngle, eSweepAngle) end
    attach_function 'AngleArc', [:hdc, :int, :int, :dword, :float, :float], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-arc
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @param [Integer] nXStartArc
    # @param [Integer] nYStartArc
    # @param [Integer] nXEndArc
    # @param [Integer] nYEndArc
    # @return [true, false]
    def self.Arc(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXStartArc, nYStartArc, nXEndArc, nYEndArc) end
    attach_function 'Arc', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-arcto
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @param [Integer] nXRadial1
    # @param [Integer] nYRadial1
    # @param [Integer] nXRadial2
    # @param [Integer] nYRadial2
    # @return [true, false]
    def self.ArcTo(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2) end
    attach_function 'ArcTo', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getarcdirection
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetArcDirection(hdc) end
    attach_function 'GetArcDirection', [:hdc], :int

    # VOID CALLBACK LineDDAProc( _In_ int    X, _In_ int    Y, _In_ LPARAM lpData)
    LineDDAProc = callback :LineDDAProc, [:int, :int, :lparam], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-linedda
    # @param [Integer] nXStart
    # @param [Integer] nYStart
    # @param [Integer] nXEnd
    # @param [Integer] nYEnd
    # @param [LineDDAProc] lpLineFunc
    # @param [Integer] lpData
    # @return [true, false]
    def self.LineDDA(nXStart, nYStart, nXEnd, nYEnd, lpLineFunc, lpData) end
    attach_function 'LineDDA', [:int, :int, :int, :int, LineDDAProc, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-lineto
    # @param [FFI::Pointer] hdc
    # @param [Integer] nXEnd
    # @param [Integer] nYEnd
    # @return [true, false]
    def self.LineTo(hdc, nXEnd, nYEnd) end
    attach_function 'LineTo', [:hdc, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-movetoex
    # @param [FFI::Pointer] hdc
    # @param [Integer] x
    # @param [Integer] y
    # @param [FFI::Pointer] lpPoint
    # @return [true, false]
    def self.MoveToEx(hdc, x, y, lpPoint) end
    attach_function 'MoveToEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polybezier
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @param [Integer] cPoints
    # @return [true, false]
    def self.PolyBezier(hdc, lppt, cPoints) end
    attach_function 'PolyBezier', [:hdc, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polybezierto
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @param [Integer] cPoints
    # @return [true, false]
    def self.PolyBezierTo(hdc, lppt, cPoints) end
    attach_function 'PolyBezierTo', [:hdc, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polydraw
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @param [FFI::Pointer] lpbTypes
    # @param [Integer] cCount
    # @return [true, false]
    def self.PolyDraw(hdc, lppt, lpbTypes, cCount) end
    attach_function 'PolyDraw', [:hdc, :pointer, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polyline
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @param [Integer] cPoints
    # @return [true, false]
    def self.Polyline(hdc, lppt, cPoints) end
    attach_function 'Polyline', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polylineto
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @param [Integer] cCount
    # @return [true, false]
    def self.PolylineTo(hdc, lppt, cCount); end
    attach_function 'PolylineTo', [:hdc, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polypolyline
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lppt
    # @param [FFI::Pointer] lpdwPolyPoints
    # @param [Integer] cCount
    # @return [true, false]
    def self.PolyPolyline(hdc, lppt, lpdwPolyPoints, cCount); end
    attach_function 'PolyPolyline', [:hdc, :pointer, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setarcdirection
    # @param [FFI::Pointer] hdc
    # @param [Integer] arcDirection
    # @return [Integer]
    def self.SetArcDirection(hdc, arcDirection); end
    attach_function 'SetArcDirection', [:hdc, ArcDirection], :int
  end
end
