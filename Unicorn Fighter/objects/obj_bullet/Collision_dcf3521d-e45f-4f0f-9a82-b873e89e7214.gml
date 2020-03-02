/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 077A2AB1
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4277DD11
	/// @DnDDisabled : 1
	/// @DnDParent : 077A2AB1
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5DA7D870
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2D9FFDF1
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 356D4827
	/// @DnDParent : 2D9FFDF1
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 269D359E
	/// @DnDParent : 2D9FFDF1
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_nightmare_huge"
	if(sprite_index == spr_nightmare_huge)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 4C41DF35
		/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
		/// @DnDParent : 269D359E
		/// @DnDArgument : "score" "80"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(80);
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 474FD89D
		/// @DnDDisabled : 1
		/// @DnDParent : 269D359E
		/// @DnDArgument : "times" "2"
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 790DD217
		/// @DnDParent : 474FD89D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "a8f244b5-fbae-4350-b35a-49eb5c586492"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7957489D
		/// @DnDParent : 474FD89D
		/// @DnDArgument : "expr" "spr_nightmare_med"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_nightmare_med;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B02AA02
	/// @DnDParent : 2D9FFDF1
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_nightmare_med"
	if(sprite_index == spr_nightmare_med)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3DDD5D7E
		/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
		/// @DnDParent : 1B02AA02
		/// @DnDArgument : "score" "50"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(50);
		}
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 696C3EB7
		/// @DnDDisabled : 1
		/// @DnDParent : 1B02AA02
		/// @DnDArgument : "times" "2"
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 335D24EC
		/// @DnDParent : 696C3EB7
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "a8f244b5-fbae-4350-b35a-49eb5c586492"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1481EA50
		/// @DnDParent : 696C3EB7
		/// @DnDArgument : "expr" "spr_nightmare_small"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_nightmare_small;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 02DAC098
	/// @DnDParent : 2D9FFDF1
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 7FF5218F
		/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
		/// @DnDParent : 02DAC098
		/// @DnDArgument : "score" "20"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(20);
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2DAE4477
	/// @DnDParent : 2D9FFDF1
	/// @DnDArgument : "times" "40"
	repeat(40)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 107A0805
		/// @DnDParent : 2DAE4477
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "e6e955d6-7e1f-4805-999d-40deb0820268"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}