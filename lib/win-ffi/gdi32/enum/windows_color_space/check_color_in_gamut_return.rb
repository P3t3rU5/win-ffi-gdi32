module WinFFI
  module Gdi32
    # ICM Defines for results from CheckColorInGamut()
    CheckColorInGamutReturn = enum :check_color_in_gamut_return, [:OUT_OF_GAMUT, 255, :IN_GAMUT, 0]

    define_prefix(:CM, CheckColorInGamutReturn)
  end
end