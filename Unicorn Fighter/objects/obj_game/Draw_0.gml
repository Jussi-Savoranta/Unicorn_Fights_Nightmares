/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 0DE130C7
/// @DnDArgument : "expr" "room"
var l0DE130C7_0 = room;
switch(l0DE130C7_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1785073D
	/// @DnDParent : 0DE130C7
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 531BD49F
		/// @DnDParent : 1785073D
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3D4BA668
		/// @DnDParent : 1785073D
		/// @DnDArgument : "color" "$FFFFFF14"
		draw_set_colour($FFFFFF14 & $ffffff);
		var l3D4BA668_0=($FFFFFF14 >> 24);
		draw_set_alpha(l3D4BA668_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1E3EDFD3
		/// @DnDParent : 1785073D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU SAVED""
		draw_text_transformed(250, 100, string("YOU SAVED") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 711BB8A6
		/// @DnDParent : 1785073D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "160"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""THE VILLAGE!!""
		draw_text_transformed(250, 160, string("THE VILLAGE!!") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1CA3EEEB
		/// @DnDParent : 1785073D
		draw_set_colour($FFFFFFFF & $ffffff);
		var l1CA3EEEB_0=($FFFFFFFF >> 24);
		draw_set_alpha(l1CA3EEEB_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1C6269A0
		/// @DnDParent : 1785073D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "280"
		/// @DnDArgument : "caption" ""YOUR DREAM POINTS: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 280, string("YOUR DREAM POINTS: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7FA1BC3C
		/// @DnDParent : 1785073D
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l7FA1BC3C_0=($FF00FFFF >> 24);
		draw_set_alpha(l7FA1BC3C_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3FBCF2C6
		/// @DnDParent : 1785073D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">>PRESS UP TO RESTART<< ""
		draw_text(250, 350, string(">>PRESS UP TO RESTART<< ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 29A4DE84
		/// @DnDParent : 1785073D
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 15A5D7B4
	/// @DnDParent : 0DE130C7
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1ACBD5F3
		/// @DnDParent : 15A5D7B4
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		/// @DnDArgument : "caption" ""Dream points: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Dream points: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3D4F5F46
		/// @DnDDisabled : 1
		/// @DnDParent : 15A5D7B4
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
	
	
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
		/// @DnDVersion : 1
		/// @DnDHash : 37B9DCC0
		/// @DnDDisabled : 1
		/// @DnDParent : 15A5D7B4
		/// @DnDArgument : "var" "padconnect"
		/// @DnDArgument : "gp" "i"
	
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17C8D24E
		/// @DnDDisabled : 1
		/// @DnDParent : 15A5D7B4
		/// @DnDArgument : "var" "padconnect"
		/// @DnDArgument : "value" "true"
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 019CA2F8
		/// @DnDDisabled : 1
		/// @DnDParent : 17C8D24E
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "caption" ""Pad connected""
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5A51581A
	/// @DnDParent : 0DE130C7
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6CC8C0B4
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4A2E0525
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "color" "$FFFFFF14"
		draw_set_colour($FFFFFF14 & $ffffff);
		var l4A2E0525_0=($FFFFFF14 >> 24);
		draw_set_alpha(l4A2E0525_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 183F7226
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""UNICORN""
		draw_text_transformed(250, 50, string("UNICORN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5C20838F
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "color" "$FFE60AFF"
		draw_set_colour($FFE60AFF & $ffffff);
		var l5C20838F_0=($FFE60AFF >> 24);
		draw_set_alpha(l5C20838F_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 48E1A0B3
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "110"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""FIGHTS""
		draw_text_transformed(250, 110, string("FIGHTS") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 26845EE0
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""NIGHTMARES""
		draw_text_transformed(250, 150, string("NIGHTMARES") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 315BB60D
		/// @DnDParent : 5A51581A
		draw_set_colour($FFFFFFFF & $ffffff);
		var l315BB60D_0=($FFFFFFFF >> 24);
		draw_set_alpha(l315BB60D_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 09250CE8
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "x" "220"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Save the village from nightmares""
		draw_text(220, 260, string("Save the village from nightmares") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0E5B40D4
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "290"
		/// @DnDArgument : "caption" ""with 1,000 dream points!""
		draw_text(320, 290, string("with 1,000 dream points!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 668EAFD3
		/// @DnDDisabled : 1
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot ""
	
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3D02B6FB
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l3D02B6FB_0=($FF00FFFF >> 24);
		draw_set_alpha(l3D02B6FB_0 / $ff);
	
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
		/// @DnDVersion : 1
		/// @DnDHash : 0A48886E
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "var" "draw_padControls"
		/// @DnDArgument : "var_temp" "1"
		var draw_padControls = gamepad_is_connected(0);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05DE6D7A
		/// @DnDParent : 5A51581A
		/// @DnDArgument : "var" "draw_padControls"
		/// @DnDArgument : "value" "true"
		if(draw_padControls == true)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 3C884C82
			/// @DnDParent : 05DE6D7A
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "340"
			/// @DnDArgument : "caption" "">>PRESS UP TO START<< ""
			draw_text(250, 340, string(">>PRESS UP TO START<< ") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 0D0F428E
			/// @DnDParent : 05DE6D7A
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "370"
			/// @DnDArgument : "caption" ""L-analog/move""
			draw_text(250, 370, string("L-analog/move") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 122B8001
			/// @DnDParent : 05DE6D7A
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "390"
			/// @DnDArgument : "caption" ""R-trigger/tears""
			draw_text(250, 390, string("R-trigger/tears") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 297B8074
			/// @DnDParent : 05DE6D7A
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "410"
			/// @DnDArgument : "caption" ""L-trigger/rainbow sight""
			draw_text(250, 410, string("L-trigger/rainbow sight") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Set_Alignment
			/// @DnDVersion : 1.1
			/// @DnDHash : 299F52A7
			/// @DnDParent : 05DE6D7A
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 113523C4
			/// @DnDParent : 05DE6D7A
			draw_set_colour($FFFFFFFF & $ffffff);
			var l113523C4_0=($FFFFFFFF >> 24);
			draw_set_alpha(l113523C4_0 / $ff);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0C7DBF2F
		/// @DnDParent : 5A51581A
		else
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 1D411138
			/// @DnDParent : 0C7DBF2F
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "340"
			/// @DnDArgument : "caption" "">>PRESS ENTER TO START<< ""
			draw_text(250, 340, string(">>PRESS ENTER TO START<< ") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 57BF3BC8
			/// @DnDParent : 0C7DBF2F
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "370"
			/// @DnDArgument : "caption" ""WASD or ARROWS/move""
			draw_text(250, 370, string("WASD or ARROWS/move") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 32213897
			/// @DnDParent : 0C7DBF2F
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "390"
			/// @DnDArgument : "caption" ""SPACE/tears""
			draw_text(250, 390, string("SPACE/tears") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 26231188
			/// @DnDParent : 0C7DBF2F
			/// @DnDArgument : "x" "250"
			/// @DnDArgument : "y" "410"
			/// @DnDArgument : "caption" ""L or F/rainbow sight""
			draw_text(250, 410, string("L or F/rainbow sight") + "");
		
			/// @DnDAction : YoYo Games.Drawing.Set_Alignment
			/// @DnDVersion : 1.1
			/// @DnDHash : 7ECC8F48
			/// @DnDParent : 0C7DBF2F
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 51D51C20
			/// @DnDParent : 0C7DBF2F
			draw_set_colour($FFFFFFFF & $ffffff);
			var l51D51C20_0=($FFFFFFFF >> 24);
			draw_set_alpha(l51D51C20_0 / $ff);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0A5A1C3D
	/// @DnDParent : 0DE130C7
	/// @DnDArgument : "const" "rm_gameOver"
	case rm_gameOver:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 608D7F4F
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 34F5D0B4
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "color" "$FFA500A5"
		draw_set_colour($FFA500A5 & $ffffff);
		var l34F5D0B4_0=($FFA500A5 >> 24);
		draw_set_alpha(l34F5D0B4_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 687E19BE
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""BETTER LUCK""
		draw_text_transformed(250, 60, string("BETTER LUCK") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 708DC7B6
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "110"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""NEXT TIME!""
		draw_text_transformed(250, 110, string("NEXT TIME!") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 45002954
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "color" "$FFFF7FFF"
		draw_set_colour($FFFF7FFF & $ffffff);
		var l45002954_0=($FFFF7FFF >> 24);
		draw_set_alpha(l45002954_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 76A1A2E0
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "210"
		/// @DnDArgument : "caption" ""The village continues to suffer""
		draw_text(250, 210, string("The village continues to suffer") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1D09EE7B
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""with nightmares""
		draw_text(250, 230, string("with nightmares") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 36375171
		/// @DnDParent : 0A5A1C3D
		draw_set_colour($FFFFFFFF & $ffffff);
		var l36375171_0=($FFFFFFFF >> 24);
		draw_set_alpha(l36375171_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0C8F0EE3
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "290"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 290, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5643F45E
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l5643F45E_0=($FF00FFFF >> 24);
		draw_set_alpha(l5643F45E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1B66E68F
		/// @DnDParent : 0A5A1C3D
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">>PRESS UP TO RESTART<< ""
		draw_text(250, 350, string(">>PRESS UP TO RESTART<< ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A118D30
		/// @DnDParent : 0A5A1C3D
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}