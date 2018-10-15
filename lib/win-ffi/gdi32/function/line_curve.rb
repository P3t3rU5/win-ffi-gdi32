require 'win-ffi/core/struct/point'

require_relative '../enum/line_curve/arc_direction'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-anglearc
    # BOOL AngleArc(
    #   _In_ HDC   hdc,
    #   _In_ int   X,
    #   _In_ int   Y,
    #   _In_ DWORD dwRadius,
    #   _In_ FLOAT eStartAngle,
    #   _In_ FLOAT eSweepAngle)
    def self.AngleArc(hdc, x, y, dwRadius, eStartAngle, eSweepAngle); end
    attach_function 'AngleArc', [:hdc, :int, :int, :dword, :float, :float], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-arc
    # BOOL Arc(
    #   _In_ HDC hdc,
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect,
    #   _In_ int nXStartArc,
    #   _In_ int nYStartArc,
    #   _In_ int nXEndArc,
    #   _In_ int nYEndArc)
    def self.Arc(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXStartArc, nYStartArc, nXEndArc, nYEndArc); end
    attach_function 'Arc', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-arcto
    # BOOL ArcTo(
    #   _In_ HDC hdc,
    #   _In_ int nLeftRect,
    #   _In_ int nTopRect,
    #   _In_ int nRightRect,
    #   _In_ int nBottomRect,
    #   _In_ int nXRadial1,
    #   _In_ int nYRadial1,
    #   _In_ int nXRadial2,
    #   _In_ int nYRadial2)
    def self.ArcTo(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2); end
    attach_function 'ArcTo', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getarcdirection
    # int GetArcDirection(_In_ HDC hdc)
    def self.GetArcDirection(hdc); end
    attach_function 'GetArcDirection', [:hdc], :int

    # VOID CALLBACK LineDDAProc( _In_ int    X, _In_ int    Y, _In_ LPARAM lpData)
    LineDDAProc = callback :LineDDAProc, [:int, :int, :lparam], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-linedda
    # BOOL LineDDA(
    #   _In_ int         nXStart,
    #   _In_ int         nYStart,
    #   _In_ int         nXEnd,
    #   _In_ int         nYEnd,
    #   _In_ LINEDDAPROC lpLineFunc,
    #   _In_ LPARAM      lpData)
    def self.LineDDA(nXStart, nYStart, nXEnd, nYEnd, lpLineFunc, lpData); end
    attach_function 'LineDDA', [:int, :int, :int, :int, LineDDAProc, :lparam], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-lineto
    # BOOL LineTo( _In_ HDC hdc, _In_ int nXEnd, _In_ int nYEnd)
    def self.LineTo(hdc, nXEnd, nYEnd); end
    attach_function 'LineTo', [:hdc, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-movetoex
    # BOOL MoveToEx( _In_  HDC     hdc, _In_  int     X, _In_  int     Y, _Out_ LPPOINT lpPoint)
    def self.MoveToEx(hdc, x, y, lpPoint); end
    attach_function 'MoveToEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polybezier
    # BOOL PolyBezier( _In_       HDC   hdc, _In_ const POINT *lppt, _In_       DWORD cPoints)
    def self.PolyBezier(hdc, lppt, cPoints); end
    attach_function 'PolyBezier', [:hdc, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polybezierto
    # BOOL PolyBezierTo( _In_       HDC   hdc, _In_ const POINT *lppt, _In_       DWORD cCount)
    def self.PolyBezierTo(hdc, lppt, cPoints); end
    attach_function 'PolyBezierTo', [:hdc, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polydraw
    # BOOL PolyDraw( _In_       HDC   hdc, _In_ const POINT *lppt, _In_ const BYTE  *lpbTypes, _In_       int   cCount)
    def self.PolyDraw(hdc, lppt, lpbTypes, cCount); end
    attach_function 'PolyDraw', [:hdc, :pointer, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polyline
    # BOOL Polyline( _In_       HDC   hdc, _In_ const POINT *lppt, _In_       int   cPoints)
    def self.Polyline(hdc, lppt, cPoints); end
    attach_function 'Polyline', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polylineto
    # BOOL PolylineTo( _In_       HDC   hdc, _In_ const POINT *lppt, _In_       DWORD cCount)
    def self.PolylineTo(hdc, lppt, cCount); end
    attach_function 'PolylineTo', [:hdc, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polypolyline
    # BOOL PolyPolyline( _In_ HDC   hdc, _In_ const POINT *lppt, _In_ const DWORD *lpdwPolyPoints, _In_ DWORD cCount)
    def self.PolyPolyline(hdc, lppt, lpdwPolyPoints, cCount); end
    attach_function 'PolyPolyline', [:hdc, :pointer, :pointer, :dword], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setarcdirection
    # int SetArcDirection(_In_ HDC hdc, _In_ int ArcDirection)
    def self.SetArcDirection(hdc, arcDirection); end
    attach_function 'SetArcDirection', [:hdc, ArcDirection], :int
  end
end
