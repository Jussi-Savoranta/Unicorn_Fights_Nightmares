/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 36A00248
/// @DnDArgument : "btn" "gp_start"
var l36A00248_0 = 0;
var l36A00248_1 = gp_start;
if(gamepad_is_connected(l36A00248_0) && gamepad_button_check_pressed(l36A00248_0, l36A00248_1))
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 1CB5A4C3
	/// @DnDParent : 36A00248
	game_end();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6035E61F
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_win"
if(room == rm_win)
{
	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3B57FC4D
	/// @DnDParent : 6035E61F
	/// @DnDArgument : "btn" "gp_padu"
	var l3B57FC4D_0 = 0;
	var l3B57FC4D_1 = gp_padu;
	if(gamepad_is_connected(l3B57FC4D_0) && gamepad_button_check_pressed(l3B57FC4D_0, l3B57FC4D_1))
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 0D70861D
		/// @DnDParent : 3B57FC4D
		game_restart();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D31B307
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" " rm_gameOver"
if(room ==  rm_gameOver)
{
	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 64358590
	/// @DnDParent : 6D31B307
	/// @DnDArgument : "btn" "gp_padu"
	var l64358590_0 = 0;
	var l64358590_1 = gp_padu;
	if(gamepad_is_connected(l64358590_0) && gamepad_button_check_pressed(l64358590_0, l64358590_1))
	{
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 3888B124
		/// @DnDParent : 64358590
		game_restart();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74314C8D
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_start"
if(room == rm_start)
{
	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 76D7ACA5
	/// @DnDParent : 74314C8D
	/// @DnDArgument : "btn" "gp_padu"
	var l76D7ACA5_0 = 0;
	var l76D7ACA5_1 = gp_padu;
	if(gamepad_is_connected(l76D7ACA5_0) && gamepad_button_check_pressed(l76D7ACA5_0, l76D7ACA5_1))
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 33E2BB74
		/// @DnDParent : 76D7ACA5
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "b156da04-a9f8-4983-a97c-35eb66344c1f"
		room_goto(rm_game);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 08D557DF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 2E633D8D
	/// @DnDParent : 08D557DF
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 15C11BB9
		/// @DnDParent : 2E633D8D
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "5e954ad5-75cd-4b22-a27d-d5bb55ae07e6"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 56904FEE
	/// @DnDParent : 08D557DF
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-500"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score <= -500)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 63913881
		/// @DnDParent : 56904FEE
		/// @DnDArgument : "room" "rm_gameOver"
		/// @DnDSaveInfo : "room" "98082e90-bde9-4cfa-92f1-cb4df764de76"
		room_goto(rm_gameOver);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 6DC6B8A9
	/// @DnDDisabled : 1
	/// @DnDParent : 08D557DF
	/// @DnDArgument : "op" "3"
}

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 54F04F5B
/// @DnDArgument : "var" "_hmove"
/// @DnDArgument : "var_temp" "1"
var _hmove = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 720C0BE8
/// @DnDArgument : "var" "_vmove"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "axis" "gp_axislv"
var _vmove = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45931E25
/// @DnDArgument : "var" "_hmove"
/// @DnDArgument : "not" "1"
if(!(_hmove == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0B09200A
	/// @DnDApplyTo : 7aa3fe41-fee6-4801-83e8-7b2a3a668855
	/// @DnDParent : 45931E25
	/// @DnDArgument : "value" "_hmove * 6"
	/// @DnDArgument : "value_relative" "1"
	with(obj_ship) {
	x += _hmove * 6;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DA04D81
/// @DnDArgument : "var" "_vmove"
/// @DnDArgument : "not" "1"
if(!(_vmove == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 578C626D
	/// @DnDApplyTo : 7aa3fe41-fee6-4801-83e8-7b2a3a668855
	/// @DnDParent : 3DA04D81
	/// @DnDArgument : "value" "_vmove * 6"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	with(obj_ship) {
	y += _vmove * 6;
	}
}

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 352A0446
/// @DnDArgument : "var" "_hdir"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "axis" "gp_axisrh"
var _hdir = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axisrh) : 0;