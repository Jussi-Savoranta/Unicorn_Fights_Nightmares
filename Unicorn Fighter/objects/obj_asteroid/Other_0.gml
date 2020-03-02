/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 619FD3BB
instance_destroy();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 78D3347F
/// @DnDArgument : "obj" "obj_ship"
/// @DnDSaveInfo : "obj" "7aa3fe41-fee6-4801-83e8-7b2a3a668855"
var l78D3347F_0 = false;
l78D3347F_0 = instance_exists(obj_ship);
if(l78D3347F_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 43F3A233
	/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
	/// @DnDParent : 78D3347F
	/// @DnDArgument : "score" "-10"
	/// @DnDArgument : "score_relative" "1"
	with(obj_game) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(-10);
	}
}