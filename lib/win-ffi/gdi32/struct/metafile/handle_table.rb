require_relative '../../typedef/hgdiobj'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-handletable
    class HANDLETABLE < FFIAdditions::Struct
      attr_accessor :objectHandle

      layout objectHandle: [:hgdiobj, 1]
    end
  end
end