require 'win-ffi/gdi32/enum/line_curve/point_type'

require 'win-ffi/gdi32/typedef/hrgn'

require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162457(v=vs.85).aspx
    # BOOL AbortPath(_In_ HDC hdc)
    attach_function 'AbortPath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd183363(v=vs.85).aspx
    # BOOL BeginPath(_In_ HDC hdc)
    attach_function 'BeginPath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd183443(v=vs.85).aspx
    # BOOL CloseFigure(_In_ HDC hdc)
    attach_function 'CloseFigure', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd162599(v=vs.85).aspx
    # BOOL EndPath(_In_ HDC hdc)
    attach_function 'EndPath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd162718(v=vs.85).aspx
    # BOOL FillPath(_In_ HDC hdc)
    attach_function 'FillPath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd162725(v=vs.85).aspx
    # BOOL FlattenPath(_In_ HDC hdc)
    attach_function 'FlattenPath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd144900(v=vs.85).aspx
    # BOOL GetMiterLimit(_In_  HDC    hdc, _Out_ PFLOAT peLimit)
    attach_function 'GetMiterLimit', [:hdc, :pointer], :bool

    # https://msdn.microsoft.com/en-us/library/dd144908(v=vs.85).aspx
    # int GetPath(
    #   _In_  HDC     hdc,
    #   _Out_ LPPOINT lpPoints,
    #   _Out_ LPBYTE  lpTypes,
    #   _In_  int     nSize)
    attach_function 'GetPath', [:hdc, :pointer, :pointer, :int], :int

    # https://msdn.microsoft.com/en-us/library/dd162780(v=vs.85).aspx
    # HRGN PathToRegion(_In_ HDC hdc)
    attach_function 'PathToRegion', [:hdc], :hrgn

    # https://msdn.microsoft.com/en-us/library/dd145076(v=vs.85).aspx
    # BOOL SetMiterLimit(
    #   _In_  HDC    hdc,
    #   _In_  FLOAT  eNewLimit,
    #   _Out_ PFLOAT peOldLimit)
    attach_function 'SetMiterLimit', [:hdc, :float, :pointer], :bool

    # https://msdn.microsoft.com/en-us/library/dd145123(v=vs.85).aspx
    # BOOL StrokeAndFillPath(_In_ HDC hdc)
    attach_function 'StrokeAndFillPath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd145124(v=vs.85).aspx
    # BOOL StrokePath(_In_ HDC hdc)
    attach_function 'StrokePath', [:hdc], :bool

    # https://msdn.microsoft.com/en-us/library/dd145200(v=vs.85).aspx
    # BOOL WidenPath(_In_ HDC hdc)
    attach_function 'WidenPath', [:hdc], :bool
  end
end