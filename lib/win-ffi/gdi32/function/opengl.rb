require 'win-ffi/gdi32'

require 'win-ffi/gdi32/struct/opengl/pixel_format_descriptor'

require 'win-ffi/gdi32/typedef/henhmetafile'

module WinFFI
  module Gdi32

    # https://msdn.microsoft.com/en-us/library/dd318284(v=vs.85).aspx
    # int ChoosePixelFormat(
    #   HDC hdc,
    #   const PIXELFORMATDESCRIPTOR *ppfd)
    attach_function 'ChoosePixelFormat', [:pointer, PIXELFORMATDESCRIPTOR.ptr], :int

    # https://msdn.microsoft.com/en-us/library/dd318302(v=vs.85).aspx
    # int DescribePixelFormat(
    #   HDC hdc,
    #   int iPixelFormat,
    #   UINT nBytes,
    #   LPPIXELFORMATDESCRIPTOR ppfd)
    attach_function 'DescribePixelFormat', [:hdc, :int, :uint, PIXELFORMATDESCRIPTOR.ptr], :int

    # https://msdn.microsoft.com/en-us/library/dd318349(v=vs.85).aspx
    # int WINAPI GetPixelFormat(HDC hdc)
    attach_function 'GetPixelFormat', [:hdc], :int

    # UINT GetEnhMetaFilePixelFormat(
    #   _In_ HENHMETAFILE hemf,
    #   _In_ UINT cbBuffer,
    #   _Out_writes_bytes_opt_(cbBuffer) PIXELFORMATDESCRIPTOR *ppfd)
    attach_function 'GetEnhMetaFilePixelFormat', [:henhmetafile, :uint, PIXELFORMATDESCRIPTOR.ptr], :uint

    # https://msdn.microsoft.com/en-us/library/dd369049(v=vs.85).aspx
    # BOOL SetPixelFormat(
    #   HDC                   hdc,
    #   int                   iPixelFormat,
    #   const PIXELFORMATDESCRIPTOR *ppfd)
    attach_function 'SetPixelFormat', [:hdc, :int, PIXELFORMATDESCRIPTOR.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd369060(v=vs.85).aspx
    # BOOL SwapBuffers(HDC hdc)
    attach_function 'SwapBuffers', [:hdc], :bool

  end
end