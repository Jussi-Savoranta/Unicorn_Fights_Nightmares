/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0D3F259B
	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 482181C1
	/// @DnDParent : 0D3F259B
	randomize();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 0F3E3757
	/// @DnDParent : 0D3F259B
	
	__dnd_score = real(0);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1A878D13
	/// @DnDDisabled : 1
	/// @DnDParent : 0D3F259B
	/// @DnDArgument : "lives" "3"


	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 03D8EBBC
	/// @DnDParent : 0D3F259B
	/// @DnDArgument : "font" "fnt_text"
	/// @DnDSaveInfo : "font" "bb81cb5a-4584-4752-afd5-397c171abfad"
	draw_set_font(fnt_text);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 50DD9708


/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1FE0A015
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 12"
for(var i = 0; i < 12; i += 1) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06543557
	/// @DnDParent : 1FE0A015
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "player[i]"
	player[i] = noone;
}