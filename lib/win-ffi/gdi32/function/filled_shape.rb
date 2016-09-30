require 'win-ffi/gdi32'

require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183428(v=vs.85).aspx
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
    attach_function 'Chord', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162510(v=vs.85).aspx
    # BOOL Ellipse(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect )
    attach_function 'Ellipse', [:hdc, :int, :int, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162799(v=vs.85).aspx
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
    attach_function 'Pie', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162814(v=vs.85).aspx
    # BOOL Polygon(
    #   _In_  HDC hdc,
    #   _In_  const POINT *lpPoints,
    #   _In_  int nCount )
    attach_function 'Polygon', [:hdc, POINT.ptr(:in), :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162818(v=vs.85).aspx
    # BOOL PolyPolygon(
    #   _In_  HDC hdc,
    #   _In_  const POINT *lpPoints,
    #   _In_  const INT *lpPolyCounts,
    #   _In_  int nCount )
    attach_function 'PolyPolygon', [:hdc, POINT.ptr(), :pointer, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162898(v=vs.85).aspx
    # BOOL Rectangle(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect )
    attach_function 'Rectangle', [:hdc, :int, :int, :int, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd162944(v=vs.85).aspx
    # BOOL RoundRect(
    #   _In_  HDC hdc,
    #   _In_  int nLeftRect,
    #   _In_  int nTopRect,
    #   _In_  int nRightRect,
    #   _In_  int nBottomRect,
    #   _In_  int nWidth,
    #   _In_  int nHeight )
    attach_function 'RoundRect', [:hdc, :int, :int, :int, :int, :int, :int], :bool
  end
end