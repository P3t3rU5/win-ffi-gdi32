require_relative '../typedef/henhmetafile'

require_relative '../struct/opengl/pixel_format_descriptor'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-choosepixelformat
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] ppfd
    # @return [Integer]
    def self.ChoosePixelFormat(hdc, ppfd) end
    attach_function 'ChoosePixelFormat', [:hdc, PIXELFORMATDESCRIPTOR.ptr], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-describepixelformat
    # @param [FFI::Pointer] hdc
    # @param [Integer] iPixelFormat
    # @param [Integer] nBytes
    # @param [FFI::Pointer] ppfd
    # @return [Integer]
    def self.DescribePixelFormat(hdc, iPixelFormat, nBytes, ppfd) end
    attach_function 'DescribePixelFormat', [:hdc, :int, :uint, PIXELFORMATDESCRIPTOR.ptr], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpixelformat
    # @param [FFI::Pointer] hdc
    # @return [Integer]
    def self.GetPixelFormat(hdc) end
    attach_function 'GetPixelFormat', [:hdc], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafilepixelformat
    # @param [FFI::Pointer] hemf
    # @param [Integer] cbBuffer
    # @param [FFI::Pointer] ppfd
    # @return [Integer]
    def self.GetEnhMetaFilePixelFormat(hemf, cbBuffer, ppfd) end
    attach_function 'GetEnhMetaFilePixelFormat', [:henhmetafile, :uint, PIXELFORMATDESCRIPTOR.ptr], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setpixelformat
    # @param [FFI::Pointer] hdc
    # @param [Integer] iPixelFormat
    # @param [FFI::Pointer] ppfd
    # @return [true, false]
    def self.SetPixelFormat(hdc, iPixelFormat, ppfd) end
    attach_function 'SetPixelFormat', [:hdc, :int, PIXELFORMATDESCRIPTOR.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-swapbuffers
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.SwapBuffers(hdc) end
    attach_function 'SwapBuffers', [:hdc], :bool
  end
end