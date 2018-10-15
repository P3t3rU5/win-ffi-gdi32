require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-chord
    # BOOL Chord(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect,
    #   _In_  int nXRadial1,
    #   _In_  int nYRadial1,
    #   _In_  int nXRadial2,
    #   _In_  int nYRadial2)
    def self.Chord(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2); end
    attach_function 'Chord', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-ellipse
    # BOOL Ellipse(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect )
    def self.Ellipse(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'Ellipse', [:hdc, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-pie
    # BOOL Pie(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect,
    #   _In_  int nXRadial1,
    #   _In_  int nYRadial1,
    #   _In_  int nXRadial2,
    #   _In_  int nYRadial2 )
    def self.Pie(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2); end
    attach_function 'Pie', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polygon
    # BOOL Polygon( _In_  HDC hdc, _In_  const POINT *lpPoints, _In_  int nCount )
    def self.Polygon(hdc, lpPoints, nCount); end
    attach_function 'Polygon', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polypolygon
    # BOOL PolyPolygon( _In_  HDC hdc, _In_  const POINT *lpPoints, _In_  const INT *lpPolyCounts, _In_  int nCount )
    def self.PolyPolygon(hdc, lpPoints, lpPolyCounts, nCount); end
    attach_function 'PolyPolygon', [:hdc, :pointer, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-rectangle
    # BOOL Rectangle(_In_ HDC hdc, _In_ int nLeftRect, _In_  int nTopRect, _In_ int nRightRect, _In_ int nBottomRect )
    def self.Rectangle(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect); end
    attach_function 'Rectangle', [:hdc, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-roundrect
    # BOOL RoundRect(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect,
    #   _In_  int nWidth,
    #   _In_  int nHeight )
    def self.RoundRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nWidth, nHeight); end
    attach_function 'RoundRect', [:hdc, :int, :int, :int, :int, :int, :int], :bool
  end
end
