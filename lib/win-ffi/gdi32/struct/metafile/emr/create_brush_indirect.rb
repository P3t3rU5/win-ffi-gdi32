require_relative '../emr'
require_relative '../../brush/log'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrcreatebrushindirect
    class EMRCREATEBRUSHINDIRECT < FFIAdditions::Struct
      attr_accessor :emr, :ihBrush, :lb

      layout emr:     EMR,
             ihBrush: :dword,
             lb:      LOGBRUSH32
    end
  end
end