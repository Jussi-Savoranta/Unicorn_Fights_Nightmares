/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3FE2A031
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_shipLaser"
/// @DnDSaveInfo : "objectid" "21f97fa4-7c7c-43f6-bdc1-35f14f14d0cd"
instance_create_layer(x + 0, y + 0, "Instances", obj_shipShield);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6C1B876E
/// @DnDApplyTo : 21f97fa4-7c7c-43f6-bdc1-35f14f14d0cd
/// @DnDArgument : "angle" "spr_ship.image_angle"
/// @DnDArgument : "angle_relative" "1"
with(obj_shipShield) image_angle += spr_ship.image_angle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04EDF200
/// @DnDArgument : "expr" "obj_ship.direction"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_shipLaser.direction"
obj_shipShield.direction += obj_ship.direction;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 6C01BD70
/// @DnDApplyTo : 21f97fa4-7c7c-43f6-bdc1-35f14f14d0cd
/// @DnDArgument : "value" "spr_ship.image_speed"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "3"
with(obj_shipShield) {
speed += spr_ship.image_speed;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5268A0EE
/// @DnDApplyTo : 7aa3fe41-fee6-4801-83e8-7b2a3a668855
with(obj_ship) instance_destroy();