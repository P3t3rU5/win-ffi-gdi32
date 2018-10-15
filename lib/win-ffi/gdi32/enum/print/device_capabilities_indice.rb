module WinFFI
  module Gdi32
    DeviceCapabilitiesIndice = enum :DeviceCapabilitiesIndice, [
        :FIELDS,             1,
        :PAPERS,             2,
        :PAPERSIZE,          3,
        :MINEXTENT,          4,
        :MAXEXTENT,          5,
        :BINS,               6,
        :DUPLEX,             7,
        :SIZE,               8,
        :EXTRA,              9,
        :VERSION,           10,
        :DRIVER,            11,
        :BINNAMES,          12,
        :ENUMRESOLUTIONS,   13,
        :FILEDEPENDENCIES,  14,
        :TRUETYPE,          15,
        :PAPERNAMES,        16,
        :ORIENTATION,       17,
        :COPIES,            18,
        :BINADJUST,         19,
        :EMF_COMPLIANT,     20,
        :DATATYPE_PRODUCED, 21,
        :COLLATE,           22,
        :MANUFACTURER,      23,
        :MODEL,             24,
    ]

    define_prefix :DC, DeviceCapabilitiesIndice
  end
end