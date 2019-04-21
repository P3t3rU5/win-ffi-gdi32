require 'win-ffi/core/struct/point'

require_relative '../enum/line_curve/point_type'

require_relative '../typedef/hrgn'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-abortpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.AbortPath(hdc) end
    attach_function 'AbortPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-beginpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.BeginPath(hdc) end
    attach_function 'BeginPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-closefigure
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.CloseFigure(hdc) end
    attach_function 'CloseFigure', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-endpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.EndPath(hdc) end
    attach_function 'EndPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-fillpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.FillPath(hdc) end
    attach_function 'FillPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-flattenpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.FlattenPath(hdc) end
    attach_function 'FlattenPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmiterlimit
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] peLimit
    # @return [true, false]
    def self.GetMiterLimit(hdc, peLimit) end
    attach_function 'GetMiterLimit', [:hdc, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getpath
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoints
    # @param [FFI::Pointer] lpTypes
    # @param [Integer] nSize
    # @return [Integer]
    def self.GetPath(hdc, lpPoints, lpTypes, nSize) end
    attach_function 'GetPath', [:hdc, :pointer, :pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-pathtoregion
    # @param [FFI::Pointer] hdc
    # @return [FFI::Pointer]
    def self.PathToRegion(hdc) end
    attach_function 'PathToRegion', [:hdc], :hrgn

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmiterlimit
    # @param [FFI::Pointer] hdc
    # @param [Float] eNewLimit
    # @param [FFI::Pointer] peOldLimit
    # @return [true, false]
    def self.SetMiterLimit(hdc, eNewLimit, peOldLimit) end
    attach_function 'SetMiterLimit', [:hdc, :float, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-strokeandfillpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.StrokeAndFillPath(hdc) end
    attach_function 'StrokeAndFillPath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-strokepath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.StrokePath(hdc) end
    attach_function 'StrokePath', [:hdc], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-widenpath
    # @param [FFI::Pointer] hdc
    # @return [true, false]
    def self.WidenPath(hdc) end
    attach_function 'WidenPath', [:hdc], :bool
  end
end
