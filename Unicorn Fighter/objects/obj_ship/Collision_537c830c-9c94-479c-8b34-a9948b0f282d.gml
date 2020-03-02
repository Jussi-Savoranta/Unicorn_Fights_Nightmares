/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5703C5D0
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6DA195E9
	/// @DnDParent : 5703C5D0
	/// @DnDArgument : "steps" "90"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 90);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5DE2DB3E
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 17BDC8C7
	/// @DnDParent : 5DE2DB3E
	/// @DnDArgument : "score" "-100"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(-100);
}

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 5753CB05
/// @DnDArgument : "objind" "obj_fallingShip"
/// @DnDSaveInfo : "objind" "5716c175-0240-4d9e-8e88-cd39bc7d8e65"
instance_change(obj_fallingShip, true);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6D921908
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2B4877F0
/// @DnDDisabled : 1
/// @DnDArgument : "times" "10"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 26B43EAE
/// @DnDDisabled : 1
/// @DnDParent : 2B4877F0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_debris"
/// @DnDSaveInfo : "objectid" "e6e955d6-7e1f-4805-999d-40deb0820268"