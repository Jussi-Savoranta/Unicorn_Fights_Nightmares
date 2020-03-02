/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 52BDBCDC
/// @DnDArgument : "var" "_bulletCount"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_bullet"
/// @DnDSaveInfo : "object" "fd41af3c-ecbd-49fd-bd02-cccbb84ccda7"
var _bulletCount = instance_number(obj_bullet);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BFD6C54
/// @DnDArgument : "var" "_bulletCount"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(_bulletCount <= 10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67653307
	/// @DnDParent : 5BFD6C54
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newBullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "fd41af3c-ecbd-49fd-bd02-cccbb84ccda7"
	var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E59BD1F
	/// @DnDParent : 5BFD6C54
	/// @DnDArgument : "expr" "image_angle"
	/// @DnDArgument : "var" "newBullet.direction"
	newBullet.direction = image_angle;
}