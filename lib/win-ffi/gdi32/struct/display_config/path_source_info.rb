require 'win-ffi/core/struct/luid'

require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class DPSISTRUCTNAME < FFIAdditions::Struct
      layout cloneGroupId:      :uint32,
             sourceModeInfoIdx: :uint32
    end

    class DPSIUNIONNAME < FFIAdditions::Union
      layout modeInfoIdx: :uint32,
             s:    DPSISTRUCTNAME
    end

    class DISPLAYCONFIG_PATH_SOURCE_INFO < FFIAdditions::Struct
      layout adapterId:      LUID,
             id:          :uint32,
             u:     DPSIUNIONNAME,
             statusFlags: :uint32
    end
  end
end