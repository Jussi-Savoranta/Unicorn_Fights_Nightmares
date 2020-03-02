/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Trigger_Value
/// @DnDVersion : 1.1
/// @DnDHash : 2BD2F872
/// @DnDArgument : "var" "_trigrb"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "trigger" "gp_shoulderrb"
var _trigrb = gamepad_is_connected(0) ? gamepad_button_value(0, gp_shoulderrb) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Trigger_Value
/// @DnDVersion : 1.1
/// @DnDHash : 164F0DC0
/// @DnDArgument : "var" "_trigra"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "trigger" "gp_shoulderr"
var _trigra = gamepad_is_connected(0) ? gamepad_button_value(0, gp_shoulderr) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Trigger_Value
/// @DnDVersion : 1.1
/// @DnDHash : 2D7BD1E6
/// @DnDArgument : "var" "_triglb"
/// @DnDArgument : "var_temp" "1"
var _triglb = gamepad_is_connected(0) ? gamepad_button_value(0, gp_shoulderlb) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Trigger_Value
/// @DnDVersion : 1.1
/// @DnDHash : 1BBE6323
/// @DnDArgument : "var" "_trigla"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "trigger" "gp_shoulderl"
var _trigla = gamepad_is_connected(0) ? gamepad_button_value(0, gp_shoulderl) : 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76660435
/// @DnDArgument : "var" "_trigrb"
/// @DnDArgument : "op" "2"
if(_trigrb > 0)
{
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 26EB6D3A
	/// @DnDParent : 76660435
	/// @DnDArgument : "var" "_bulletCount"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "object" "obj_bullet"
	/// @DnDSaveInfo : "object" "fd41af3c-ecbd-49fd-bd02-cccbb84ccda7"
	var _bulletCount = instance_number(obj_bullet);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F17CA99
	/// @DnDParent : 76660435
	/// @DnDArgument : "var" "_bulletCount"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "10"
	if(_bulletCount <= 10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 13458FFD
		/// @DnDParent : 2F17CA99
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newBullet"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "fd41af3c-ecbd-49fd-bd02-cccbb84ccda7"
		var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2496533C
		/// @DnDParent : 2F17CA99
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "var" "newBullet.direction"
		newBullet.direction = image_angle;
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 595A8DAD
/// @DnDDisabled : 1
/// @DnDArgument : "obj" "obj_bomb"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "c736400a-3a25-49b5-bd74-535feb49816a"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DF281DB
/// @DnDDisabled : 1
/// @DnDParent : 595A8DAD
/// @DnDArgument : "var" "_trigla"
/// @DnDArgument : "op" "2"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E59C5CA
/// @DnDDisabled : 1
/// @DnDParent : 0DF281DB
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBomb"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bomb"
/// @DnDSaveInfo : "objectid" "c736400a-3a25-49b5-bd74-535feb49816a"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05C69455
/// @DnDDisabled : 1
/// @DnDParent : 0DF281DB
/// @DnDArgument : "expr" "image_angle+180"
/// @DnDArgument : "var" "newBomb.direction"

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 23600186
/// @DnDArgument : "obj" "obj_laser"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "24fdbc0f-88f6-48e2-925c-0e4ce3082235"
var l23600186_0 = false;
l23600186_0 = instance_exists(obj_laser);
if(!l23600186_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 443DEDE7
	/// @DnDParent : 23600186
	/// @DnDArgument : "var" "_triglb"
	/// @DnDArgument : "op" "2"
	if(_triglb > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 61CD5122
		/// @DnDParent : 443DEDE7
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newLaser"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_laser"
		/// @DnDSaveInfo : "objectid" "24fdbc0f-88f6-48e2-925c-0e4ce3082235"
		var newLaser = instance_create_layer(x + 0, y + 0, "Instances", obj_laser);
	}
}