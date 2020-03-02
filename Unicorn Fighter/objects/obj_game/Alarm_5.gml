/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22B0C7D1
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0A5F8050
	/// @DnDParent : 22B0C7D1
	/// @DnDArgument : "xpos" "500"
	/// @DnDArgument : "ypos" "320"
	/// @DnDArgument : "objectid" "obj_mountains"
	/// @DnDSaveInfo : "objectid" "3dd0d1d3-5204-45ff-bfeb-d1101ebfc7e5"
	instance_create_layer(500, 320, "Instances", obj_mountains);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 00EB58F4
	/// @DnDParent : 22B0C7D1
	/// @DnDArgument : "steps" "60*27.7"
	/// @DnDArgument : "alarm" "5"
	alarm_set(5, 60*27.7);
}