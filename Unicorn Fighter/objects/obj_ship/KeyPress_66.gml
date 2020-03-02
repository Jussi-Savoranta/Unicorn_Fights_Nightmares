/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2296DC0E
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBomb"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bomb"
/// @DnDSaveInfo : "objectid" "c736400a-3a25-49b5-bd74-535feb49816a"
var newBomb = instance_create_layer(x + 0, y + 0, "Instances", obj_bomb);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0ADA66A3
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "newBomb.direction"
newBomb.direction += image_angle;