require 'win-ffi/gdi32/enum/line_curve/arc_direction'

require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183354(v=vs.85).aspx
    # BOOL AngleArc(
    #   _In_ HDC   hdc,
    #   _In_ int   X,
    #   _In_ int   Y,
    #   _In_ DWORD dwRadius,
    #   _In_ FLOAT eStartAngle,
    #   _In_ FLOAT eSweepAngle)
    attach_function 'AngleArc', [:hdc, :int, :int, :dword, :float, :float], :bool

    # https://msdn.microsoft.com/en-us/library/dd183357(v=vs.85).aspx
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
    attach_function 'Arc', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd183358(v=vs.85).aspx
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
    attach_function 'ArcTo', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd144848(v=vs.85).aspx
    # int GetArcDirection(_In_ HDC hdc)
    attach_function 'GetArcDirection', [:hdc], :int

    # VOID CALLBACK LineDDAProc(
    #   _In_ int    X,
    #   _In_ int    Y,
    #   _In_ LPARAM lpData)
    LineDDAProc = callback :LineDDAProc, [:int, :int, :lparam], :void

    # https://msdn.microsoft.com/en-us/library/dd145025(v=vs.85).aspx
    # BOOL LineDDA(
    #   _In_ int         nXStart,
    #   _In_ int         nYStart,
    #   _In_ int         nXEnd,
    #   _In_ int         nYEnd,
    #   _In_ LINEDDAPROC lpLineFunc,
    #   _In_ LPARAM      lpData)
    attach_function 'LineDDA', [:int, :int, :int, :int, LineDDAProc, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/dd145029(v=vs.85).aspx
    # BOOL LineTo(
    #   _In_ HDC hdc,
    #   _In_ int nXEnd,
    #   _In_ int nYEnd)
    attach_function 'LineTo', [:hdc, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd145069(v=vs.85).aspx
    # BOOL MoveToEx(
    #   _In_  HDC     hdc,
    #   _In_  int     X,
    #   _In_  int     Y,
    #   _Out_ LPPOINT lpPoint)
    attach_function 'MoveToEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool


    # https://msdn.microsoft.com/en-us/library/dd162811(v=vs.85).aspx
    # BOOL PolyBezier(
    #   _In_       HDC   hdc,
    #   _In_ const POINT *lppt,
    #   _In_       DWORD cPoints)
    attach_function 'PolyBezier', [:hdc, :pointer, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/dd162812(v=vs.85).aspx
    # BOOL PolyBezierTo(
    #   _In_       HDC   hdc,
    #   _In_ const POINT *lppt,
    #   _In_       DWORD cCount)
    attach_function 'PolyBezierTo', [:hdc, :pointer, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/dd162813(v=vs.85).aspx
    # BOOL PolyDraw(
    #   _In_       HDC   hdc,
    #   _In_ const POINT *lppt,
    #   _In_ const BYTE  *lpbTypes,
    #   _In_       int   cCount)
    attach_function 'PolyDraw', [:hdc, :pointer, :pointer, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162815(v=vs.85).aspx
    # BOOL Polyline(
    #   _In_       HDC   hdc,
    #   _In_ const POINT *lppt,
    #   _In_       int   cPoints)
    attach_function 'Polyline', [:hdc, :pointer, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162816(v=vs.85).aspx
    # BOOL PolylineTo(
    #   _In_       HDC   hdc,
    #   _In_ const POINT *lppt,
    #   _In_       DWORD cCount)
    attach_function 'PolylineTo', [:hdc, :pointer, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/dd162819(v=vs.85).aspx
    # BOOL PolyPolyline(
    #   _In_       HDC   hdc,
    #   _In_ const POINT *lppt,
    #   _In_ const DWORD *lpdwPolyPoints,
    #   _In_       DWORD cCount)
    attach_function 'PolyPolyline', [:hdc, :pointer, :pointer, :dword], :bool

    # https://msdn.microsoft.com/en-us/library/dd162961(v=vs.85).aspx
    # int SetArcDirection(_In_ HDC hdc, _In_ int ArcDirection)
    attach_function 'SetArcDirection', [:hdc, ArcDirection], :int
  end
end