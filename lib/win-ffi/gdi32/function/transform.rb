require 'win-ffi/gdi32/enum/transform/modify_world_transform'
require 'win-ffi/gdi32/enum/transform/graphic_mode'
require 'win-ffi/gdi32/enum/transform/mapping_mode'

require 'win-ffi/gdi32/struct/transform/xform'

require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/size'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183466(v=vs.85).aspx
    # BOOL CombineTransform(
    #   _Out_       LPXFORM lpxformResult,
    #   _In_  const XFORM   *lpxform1,
    #   _In_  const XFORM   *lpxform2)
    attach_function 'CombineTransform', [XFORM.ptr(:out), XFORM.ptr(:in), XFORM.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162474(v=vs.85).aspx
    # BOOL DPtoLP(
    #   _In_    HDC     hdc,
    #   _Inout_ LPPOINT lpPoints,
    #   _In_    int     nCount)
    attach_function 'DPtoLP', [:hdc, :pointer, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd144870(v=vs.85).aspx
    # BOOL GetCurrentPositionEx(_In_  HDC     hdc, _Out_ LPPOINT lpPoint)
    attach_function 'GetCurrentPositionEx', [:hdc, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd144892(v=vs.85).aspx
    # int GetGraphicsMode(_In_ HDC hdc)
    attach_function 'GetGraphicsMode', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd144897(v=vs.85).aspx
    # int GetMapMode(_In_ HDC hdc)
    attach_function 'GetMapMode', [:hdc], :int

    # https://msdn.microsoft.com/en-us/library/dd144945(v=vs.85).aspx
    # BOOL GetViewportExtEx(_In_  HDC    hdc, _Out_ LPSIZE lpSize)
    attach_function 'GetViewportExtEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd144946(v=vs.85).aspx
    # BOOL GetViewportOrgEx(_In_  HDC     hdc, _Out_ LPPOINT lpPoint)
    attach_function 'GetViewportOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd144948(v=vs.85).aspx
    # BOOL GetWindowExtEx(_In_  HDC    hdc, _Out_ LPSIZE lpSize)
    attach_function 'GetWindowExtEx', [:hdc, SIZE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd144949(v=vs.85).aspx
    # BOOL GetWindowOrgEx(_In_  HDC     hdc, _Out_ LPPOINT lpPoint)
    attach_function 'GetWindowOrgEx', [:hdc, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd144953(v=vs.85).aspx
    # BOOL GetWorldTransform(_In_  HDC     hdc, _Out_ LPXFORM lpXform)
    attach_function 'GetWorldTransform', [:hdc, XFORM.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145042(v=vs.85).aspx
    # BOOL LPtoDP(
    #   _In_    HDC     hdc,
    #   _Inout_ LPPOINT lpPoints,
    #   _In_    int     nCount)
    attach_function 'LPtoDP', [:hdc, :pointer, :int], :bool

    # https://msdn.microsoft.com/en-us/library/dd145060(v=vs.85).aspx
    # BOOL ModifyWorldTransform(
    #   _In_       HDC   hdc,
    #   _In_ const XFORM *lpXform,
    #   _In_       DWORD iMode)
    attach_function 'ModifyWorldTransform', [:hdc, XFORM.ptr(:in), ModifyWorldTransform], :bool

    # https://msdn.microsoft.com/en-us/library/dd162748(v=vs.85).aspx
    # BOOL OffsetViewportOrgEx(
    #   _In_  HDC     hdc,
    #   _In_  int     nXOffset,
    #   _In_  int     nYOffset,
    #   _Out_ LPPOINT lpPoint)
    attach_function 'OffsetViewportOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162749(v=vs.85).aspx
    # BOOL OffsetWindowOrgEx(
    #   _In_  HDC     hdc,
    #   _In_  int     nXOffset,
    #   _In_  int     nYOffset,
    #   _Out_ LPPOINT lpPoint)
    attach_function 'OffsetWindowOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162947(v=vs.85).aspx
    # BOOL ScaleViewportExtEx(
    #   _In_  HDC    hdc,
    #   _In_  int    Xnum,
    #   _In_  int    Xdenom,
    #   _In_  int    Ynum,
    #   _In_  int    Ydenom,
    #   _Out_ LPSIZE lpSize)
    attach_function 'ScaleViewportExtEx', [:hdc, :int, :int, :int, :int, SIZE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162948(v=vs.85).aspx
    # BOOL ScaleWindowExtEx(
    #   _In_  HDC    hdc,
    #   _In_  int    Xnum,
    #   _In_  int    Xdenom,
    #   _In_  int    Ynum,
    #   _In_  int    Ydenom,
    #   _Out_ LPSIZE lpSize)
    attach_function 'ScaleWindowExtEx', [:hdc, :int, :int, :int, :int, SIZE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162977(v=vs.85).aspx
    # int SetGraphicsMode(_In_ HDC hdc, _In_ int iMode)
    attach_function 'SetGraphicsMode', [:hdc, GraphicMode], :int

    # https://msdn.microsoft.com/en-us/library/dd162980(v=vs.85).aspx
    # int SetMapMode(_In_ HDC hdc, _In_ int fnMapMode)
    attach_function 'SetMapMode', [:hdc, MappingMode], :int

    # https://msdn.microsoft.com/en-us/library/dd145098(v=vs.85).aspx
    # BOOL SetViewportExtEx(
    #   _In_  HDC    hdc,
    #   _In_  int    nXExtent,
    #   _In_  int    nYExtent,
    #   _Out_ LPSIZE lpSize)
    attach_function 'SetViewportExtEx', [:hdc, :int, :int, SIZE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145099(v=vs.85).aspx
    # BOOL SetViewportOrgEx(
    #   _In_  HDC     hdc,
    #   _In_  int     X,
    #   _In_  int     Y,
    #   _Out_ LPPOINT lpPoint)
    attach_function 'SetViewportOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145100(v=vs.85).aspx
    # BOOL SetWindowExtEx(
    #   _In_  HDC    hdc,
    #   _In_  int    nXExtent,
    #   _In_  int    nYExtent,
    #   _Out_ LPSIZE lpSize)
    attach_function 'SetWindowExtEx', [:hdc, :int, :int, SIZE.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145101(v=vs.85).aspx
    # BOOL SetWindowOrgEx(
    #   _In_  HDC     hdc,
    #   _In_  int     X,
    #   _In_  int     Y,
    #   _Out_ LPPOINT lpPoint)
    attach_function 'SetWindowOrgEx', [:hdc, :int, :int, POINT.ptr(:out)], :bool

    # https://msdn.microsoft.com/en-us/library/dd145104(v=vs.85).aspx
    # BOOL SetWorldTransform(_In_       HDC   hdc, _In_ const XFORM *lpXform)
    attach_function 'SetWorldTransform', [:hdc, XFORM.ptr(:in)], :bool
  end
end