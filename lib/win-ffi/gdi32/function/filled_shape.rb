require 'win-ffi/core/struct/point'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-chord
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @param [Integer] nXRadial1
    # @param [Integer] nYRadial1
    # @param [Integer] nXRadial2
    # @param [Integer] nYRadial2
    # @return [true, false]
    def self.Chord(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2) end
    attach_function 'Chord', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-ellipse
      # @param [FFI::Pointer] hdc
      # @param [Integer] nLeftRect
      # @param [Integer] nTopRect
      # @param [Integer] nRightRect
      # @param [Integer] nBottomRect
      # @return [true, false]
    def self.Ellipse(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) end
    attach_function 'Ellipse', [:hdc, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-pie
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @param [Integer] nXRadial1
    # @param [Integer] nYRadial1
    # @param [Integer] nXRadial2
    # @param [Integer] nYRadial2
    # @return [true, false]
    def self.Pie(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2) end
    attach_function 'Pie', [:hdc, :int, :int, :int, :int, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polygon
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoints
    # @param [Integer] nCount
    # @return [true, false]
    def self.Polygon(hdc, lpPoints, nCount) end
    attach_function 'Polygon', [:hdc, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-polypolygon
    # @param [FFI::Pointer] hdc
    # @param [FFI::Pointer] lpPoints
    # @param [FFI::Pointer] lpPolyCounts
    # @param [Integer] nCount
    # @return [true, false]
    def self.PolyPolygon(hdc, lpPoints, lpPolyCounts, nCount) end
    attach_function 'PolyPolygon', [:hdc, :pointer, :pointer, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-rectangle
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @return [true, false]
    def self.Rectangle(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) end
    attach_function 'Rectangle', [:hdc, :int, :int, :int, :int], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-roundrect
    # @param [FFI::Pointer] hdc
    # @param [Integer] nLeftRect
    # @param [Integer] nTopRect
    # @param [Integer] nRightRect
    # @param [Integer] nBottomRect
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @return [true, false]
    def self.RoundRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nWidth, nHeight) end
    attach_function 'RoundRect', [:hdc, :int, :int, :int, :int, :int, :int], :bool
  end
end
