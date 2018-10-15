module WinFFI
  module Gdi32
    # UpdateICMRegKey Constants
    UpdateICMRegKeyCommand = enum :update_icm_reg_key_command, [
        :ADDPROFILE,          1,
        :DELETEPROFILE,       2,
        :QUERYPROFILE,        3,
        :SETDEFAULTPROFILE,   4,
        :REGISTERICMATCHER,   5,
        :UNREGISTERICMATCHER, 6,
        :QUERYMATCH,          7
    ]

    define_prefix(:ICM, UpdateICMRegKeyCommand)
  end
end