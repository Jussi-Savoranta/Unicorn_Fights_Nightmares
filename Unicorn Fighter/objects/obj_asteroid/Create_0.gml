/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1559D29B
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_nightmare_huge"
/// @DnDArgument : "option_1" "spr_nightmare_med"
/// @DnDArgument : "option_2" "spr_nightmare_small"
sprite_index = choose(spr_nightmare_huge, spr_nightmare_med, spr_nightmare_small);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 241ABC42
/// @DnDDisabled : 1
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"


/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3B7B62C6
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
image_angle = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 5017144E
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "400"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l5017144E_0 = __dnd_score >= 400;
}
if(l5017144E_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 29D29AF0
	/// @DnDParent : 5017144E
	/// @DnDArgument : "speed" "-4"
	/// @DnDArgument : "type" "1"
	hspeed = -4;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 306972DB
/// @DnDApplyTo : 6876e916-9566-491d-95a7-33de39290f83
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "400"
with(obj_game) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l306972DB_0 = __dnd_score < 400;
}
if(l306972DB_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4638355E
	/// @DnDParent : 306972DB
	/// @DnDArgument : "speed" "-2.5"
	/// @DnDArgument : "type" "1"
	hspeed = -2.5;
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 511A7609
/// @DnDArgument : "instvar" "9"
depth = 0;