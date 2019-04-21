require_relative '../enum/pen/style'

require_relative '../struct/pen/log'
require_relative '../struct/brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpen
    # @param [Integer] fnPenStyle
    # @param [Integer] nWidth
    # @param [Integer] crColor
    # @return [Integer]
    def self.CreatePen(fnPenStyle, nWidth, crColor); end
    attach_function 'CreatePen', [PenStyle, :int, :colorref], :hpen

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createpenindirect
    # @param [FFI::Pointer] lplgpn
    # @return [FFI::Pointer]
    def self.CreatePenIndirect(lplgpn); end
    attach_function 'CreatePenIndirect', [LOGPEN.ptr(:in)], :hpen

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-extcreatepen
    # @param [Integer] dwPenStyle
    # @param [Integer] dwWidth
    # @param [FFI::Pointer] lplb
    # @param [Integer] dwStyleCount
    # @param [Integer] lpStyle
    # @return [FFI::Pointer]
    def self.ExtCreatePen(dwPenStyle, dwWidth, lplb, dwStyleCount, lpStyle); end
    attach_function 'ExtCreatePen', [:dword, :dword, LOGBRUSH.ptr(:in), :dword, :pointer], :hpen
  end
end