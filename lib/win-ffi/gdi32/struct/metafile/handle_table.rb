require_relative '../../typedef/hgdiobj'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-taghandletable
    class HANDLETABLE < FFIAdditions::Struct
      layout objectHandle: [:hgdiobj, 1]
    end
  end
end