require 'win-ffi/core/struct/point'

require_relative '../enum/line_curve/point_type'

require_relative '../typedef/hrgn'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-abortpath
    # BOOL AbortPath(_In_ HDC hdc)
    def self.AbortPath(hdc) end
    attach_function 'AbortPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-beginpath
    # BOOL BeginPath(_In_ HDC hdc)
    def self.BeginPath(hdc) end
    attach_function 'BeginPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-closefigure
    # BOOL CloseFigure(_In_ HDC hdc)
    def self.CloseFigure(hdc) end
    attach_function 'CloseFigure', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-endpath
    # BOOL EndPath(_In_ HDC hdc)
    def self.EndPath(hdc) end
    attach_function 'EndPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-fillpath
    # BOOL FillPath(_In_ HDC hdc)
    def self.FillPath(hdc) end
    attach_function 'FillPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-flattenpath
    # BOOL FlattenPath(_In_ HDC hdc)
    def self.FlattenPath(hdc) end
    attach_function 'FlattenPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmiterlimit
    # BOOL GetMiterLimit(_In_  HDC    hdc, _Out_ PFLOAT peLimit)
    def self.GetMiterLimit(hdc, peLimit) end
    attach_function 'GetMiterLimit', [:hdc, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpath
    # int GetPath( _In_  HDC     hdc, _Out_ LPPOINT lpPoints, _Out_ LPBYTE  lpTypes, _In_  int     nSize)
    def self.GetPath(hdc, lpPoints, lpTypes, nSize) end
    attach_function 'GetPath', [:hdc, :pointer, :pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-pathtoregion
    # HRGN PathToRegion(_In_ HDC hdc)
    def self.PathToRegion(hdc) end
    attach_function 'PathToRegion', [:hdc], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmiterlimit
    # BOOL SetMiterLimit( _In_  HDC    hdc, _In_  FLOAT  eNewLimit, _Out_ PFLOAT peOldLimit)
    def self.SetMiterLimit(hdc, eNewLimit, peOldLimit) end
    attach_function 'SetMiterLimit', [:hdc, :float, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-strokeandfillpath
    # BOOL StrokeAndFillPath(_In_ HDC hdc)
    def self.StrokeAndFillPath(hdc) end
    attach_function 'StrokeAndFillPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-strokepath
    # BOOL StrokePath(_In_ HDC hdc)
    def self.StrokePath(hdc) end
    attach_function 'StrokePath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-widenpath
    # BOOL WidenPath(_In_ HDC hdc)
    def self.WidenPath(hdc) end
    attach_function 'WidenPath', [:hdc], :bool
  end
end
