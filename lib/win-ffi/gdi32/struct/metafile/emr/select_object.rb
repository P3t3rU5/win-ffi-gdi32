require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrselectobject
    class EMRSELECTOBJECT < FFIAdditions::Struct
      attr_accessor :emr, :ihObject

      layout emr:      EMR,
             ihObject: :dword
    end

    class EMRDELETEOBJECT < EMRSELECTOBJECT; end
  end
end