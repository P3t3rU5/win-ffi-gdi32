require 'win-ffi/gdi32/enum/transaction_object_flag'

module WinFFI
  module Gdi32
    class XLATEOBJ < FFIAdditions::Struct
      layout iUniq:                  :ulong,
             flXlate: TransactionObjectFlag,
             iSrcType:              :ushort,
             iDstType:              :ushort,
             cEntries:               :ulong,
             pulXlate:             :pointer
    end
  end
end