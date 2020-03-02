/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E086418
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 32358519
	/// @DnDParent : 2E086418
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0DF38353
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 18797489
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "var_temp" "1"
var choice = choose(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25663EEF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "choice"
/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 20E09847
/// @DnDParent : 25663EEF
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "room_width"
var xx = choose(room_width);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5E475E14
/// @DnDParent : 25663EEF
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "room_height *0.1"
/// @DnDArgument : "max" "room_height * 0.9"
var yy = floor(random_range(room_height *0.1, room_height * 0.9 + 1));

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7E93CF82
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 04D6149E
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDParent : 7E93CF82
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "room_height"


/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 068051C7
/// @DnDDisabled : 1
/// @DnDParent : 7E93CF82
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "room_width"

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4A3F7C8B
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "a8f244b5-fbae-4350-b35a-49eb5c586492"
instance_create_layer(xx, yy, "Instances", obj_asteroid);