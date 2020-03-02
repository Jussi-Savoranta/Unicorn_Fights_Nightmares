/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FF1E307
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 70993008
	/// @DnDDisabled : 1
	/// @DnDParent : 6FF1E307
	/// @DnDArgument : "times" "6"
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 75BEC3E9
	/// @DnDInput : 2
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "1"
	
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F5AB4EF
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDArgument : "var" "choice"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 45B542BC
	/// @DnDDisabled : 1
	/// @DnDParent : 5F5AB4EF
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width*0.3"
	
	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3B5C3508
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 03C57A4D
	/// @DnDDisabled : 1
	/// @DnDParent : 3B5C3508
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "room_width*0.7"
	/// @DnDArgument : "max" "room_width"
	
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 77D0B9CB
	/// @DnDInput : 2
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "1"
	
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 117046A6
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDArgument : "var" "choice"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 01DE1685
	/// @DnDDisabled : 1
	/// @DnDParent : 117046A6
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height*0.3"
	
	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0FE07849
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 707A6533
	/// @DnDDisabled : 1
	/// @DnDParent : 0FE07849
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "room_height*0.7"
	/// @DnDArgument : "max" "room_height"
	
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 549AA780
	/// @DnDDisabled : 1
	/// @DnDParent : 70993008
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj_asteroid"
	/// @DnDSaveInfo : "objectid" "a8f244b5-fbae-4350-b35a-49eb5c586492"

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21CBA406
	/// @DnDParent : 6FF1E307
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "rm_game"
	if(room == rm_game)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5D24730D
		/// @DnDParent : 21CBA406
		/// @DnDArgument : "steps" "60"
		alarm_set(0, 60);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0D446061
		/// @DnDParent : 21CBA406
		/// @DnDArgument : "alarm" "4"
		alarm_set(4, 30);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7E68CA6D
		/// @DnDParent : 21CBA406
		/// @DnDArgument : "steps" "60*27.7"
		/// @DnDArgument : "alarm" "5"
		alarm_set(5, 60*27.7);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 14D43FEA
		/// @DnDParent : 21CBA406
		/// @DnDArgument : "xpos" "500"
		/// @DnDArgument : "ypos" "320"
		/// @DnDArgument : "objectid" "obj_mountains"
		/// @DnDSaveInfo : "objectid" "3dd0d1d3-5204-45ff-bfeb-d1101ebfc7e5"
		instance_create_layer(500, 320, "Instances", obj_mountains);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6482B9CB
		/// @DnDParent : 21CBA406
		/// @DnDArgument : "xpos" "450"
		/// @DnDArgument : "ypos" "120"
		/// @DnDArgument : "objectid" "obj_star"
		/// @DnDSaveInfo : "objectid" "deff3f6a-1ac2-491a-aab9-0e7fcdd18f59"
		instance_create_layer(450, 120, "Instances", obj_star);
	}
}