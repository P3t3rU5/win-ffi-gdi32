require_relative '../enum/transaction_object_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/winddi/ns-winddi-xlateobj
    class XLATEOBJ < FFIAdditions::Struct
      attr_accessor :iUniq, :flXlate, :iSrcType, :iDstType, :cEntries, :pulXlate

      layout iUniq:    :ulong,
             flXlate:  TransactionObjectFlag,
             iSrcType: :ushort,
             iDstType: :ushort,
             cEntries: :ulong,
             pulXlate: :pointer
    end
  end
end