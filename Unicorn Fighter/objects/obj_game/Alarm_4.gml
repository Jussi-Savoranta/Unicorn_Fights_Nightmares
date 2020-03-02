/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53EAA88A
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0B08E63E
	/// @DnDParent : 53EAA88A
	/// @DnDArgument : "steps" "90"
	/// @DnDArgument : "alarm" "4"
	alarm_set(4, 90);

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 0B27A8E6
	/// @DnDParent : 53EAA88A
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "var_temp" "1"
	var choice = choose(0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FCF75DF
	/// @DnDParent : 53EAA88A
	/// @DnDArgument : "var" "choice"
	if(choice == 0)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 7A353CEA
		/// @DnDParent : 5FCF75DF
		/// @DnDArgument : "var" "xx"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "room_width"
		var xx = choose(room_width);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 356128AA
		/// @DnDParent : 5FCF75DF
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "room_height *0.05"
		/// @DnDArgument : "max" "room_height * 0.8"
		var yy = floor(random_range(room_height *0.05, room_height * 0.8 + 1));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 15DE017E
	/// @DnDParent : 53EAA88A
	else
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 64C6E14C
		/// @DnDInput : 2
		/// @DnDParent : 15DE017E
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "room_height"
		var yy = choose(room_height, 0);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 3758CE83
		/// @DnDParent : 15DE017E
		/// @DnDArgument : "var" "xx"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "room_width"
		var xx = floor(random_range(0, room_width + 1));
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E948CA7
	/// @DnDParent : 53EAA88A
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj_star"
	/// @DnDSaveInfo : "objectid" "deff3f6a-1ac2-491a-aab9-0e7fcdd18f59"
	instance_create_layer(xx, yy, "Instances", obj_star);
}