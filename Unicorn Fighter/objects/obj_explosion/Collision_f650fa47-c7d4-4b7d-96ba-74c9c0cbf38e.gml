/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7F5C1B8E
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3F8C2CDD
	/// @DnDParent : 7F5C1B8E
	/// @DnDArgument : "score" "+10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(+10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5E032870
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 21B51BAD
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E56B930
	/// @DnDParent : 21B51BAD
	instance_destroy();

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 77642B69
	/// @DnDParent : 21B51BAD
	/// @DnDArgument : "times" "50"
	repeat(50)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 56DC10DC
		/// @DnDParent : 77642B69
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "e6e955d6-7e1f-4805-999d-40deb0820268"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}