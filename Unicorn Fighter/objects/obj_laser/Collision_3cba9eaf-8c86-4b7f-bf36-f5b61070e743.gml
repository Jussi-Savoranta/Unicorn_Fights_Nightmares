/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 4A18BD80
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 704B16FE
/// @DnDApplyTo : other
with(other) instance_destroy();