/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6C17282B
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 29F9EABC
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
/// @DnDArgument : "steps" "90"
/// @DnDArgument : "alarm" "1"
with(obj_game) {
alarm_set(1, 90);

}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 07002659
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
/// @DnDArgument : "score" "-100"
/// @DnDArgument : "score_relative" "1"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(-100);
}