/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2A603229
/// @DnDArgument : "expr" "room"
var l2A603229_0 = room;
switch(l2A603229_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 69607564
	/// @DnDParent : 2A603229
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 458BEC9C
		/// @DnDParent : 69607564
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "b156da04-a9f8-4983-a97c-35eb66344c1f"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 352B94B7
	/// @DnDParent : 2A603229
	/// @DnDArgument : "const" "rm_gameOver"
	case rm_gameOver:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 6DBE7F8D
		/// @DnDParent : 352B94B7
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 40F96359
	/// @DnDParent : 2A603229
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 143D3759
		/// @DnDParent : 40F96359
		game_restart();
		break;
}