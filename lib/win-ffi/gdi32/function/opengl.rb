require_relative '../struct/opengl/pixel_format_descriptor'

require_relative '../typedef/henhmetafile'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-choosepixelformat
    # int ChoosePixelFormat( HDC hdc, const PIXELFORMATDESCRIPTOR *ppfd)
    def self.ChoosePixelFormat(hdc, ppfd); end
    attach_function 'ChoosePixelFormat', [:hdc, PIXELFORMATDESCRIPTOR.ptr], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-describepixelformat
    # int DescribePixelFormat( HDC hdc, int iPixelFormat, UINT nBytes, LPPIXELFORMATDESCRIPTOR ppfd)
    def self.DescribePixelFormat(hdc, iPixelFormat, nBytes, ppfd); end
    attach_function 'DescribePixelFormat', [:hdc, :int, :uint, PIXELFORMATDESCRIPTOR.ptr], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpixelformat
    # int WINAPI GetPixelFormat(HDC hdc)
    def self.GetPixelFormat(hdc); end
    attach_function 'GetPixelFormat', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafilepixelformat
    # UINT GetEnhMetaFilePixelFormat(
    #   _In_ HENHMETAFILE hemf,
    #   _In_ UINT cbBuffer,
    #   _Out_writes_bytes_opt_(cbBuffer) PIXELFORMATDESCRIPTOR *ppfd)
    def self.GetEnhMetaFilePixelFormat(hemf, cbBuffer, ppfd); end
    attach_function 'GetEnhMetaFilePixelFormat', [:henhmetafile, :uint, PIXELFORMATDESCRIPTOR.ptr], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpixelformat
    # BOOL SetPixelFormat( HDC hdc, int iPixelFormat, const PIXELFORMATDESCRIPTOR *ppfd)
    def self.SetPixelFormat(hdc, iPixelFormat, ppfd); end
    attach_function 'SetPixelFormat', [:hdc, :int, PIXELFORMATDESCRIPTOR.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-swapbuffers
    # BOOL SwapBuffers(HDC hdc)
    def self.SwapBuffers(hdc); end
    attach_function 'SwapBuffers', [:hdc], :bool
  end
end