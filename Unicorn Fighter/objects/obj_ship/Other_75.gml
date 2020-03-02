/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 288912C9
/// @DnDArgument : "var" "xxx"
/// @DnDArgument : "gp" "4"
xxx = gamepad_is_connected(4) ? gamepad_axis_value(4, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 1C5B5B5E
/// @DnDArgument : "var" "yyy"
/// @DnDArgument : "gp" "4"
/// @DnDArgument : "axis" "gp_axislv"
yyy = gamepad_is_connected(4) ? gamepad_axis_value(4, gp_axislv) : 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7F475344
/// @DnDArgument : "x" "xxx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "yyy"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + xxx, y + yyy);