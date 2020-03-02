/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 5DCED05E
/// @DnDInput : 2
/// @DnDArgument : "assignee" "_type"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "assignee_1" "_pindex"
/// @DnDArgument : "assignee_temp_1" "1"
/// @DnDArgument : "var" "async_load"
/// @DnDArgument : "key" ""event_type""
/// @DnDArgument : "key_1" ""pad_index""
var _type = ds_map_find_value(async_load, "event_type");
var _pindex = ds_map_find_value(async_load, "pad_index");

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0444FD25
/// @DnDArgument : "var" "_type_str"
/// @DnDArgument : "value" ""Event = " + _type"
var _type_str = "Event = " + _type;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 6E989ED2
/// @DnDArgument : "msg" "_type_str"
show_debug_message(string(_type_str));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 64AA46B3
/// @DnDArgument : "var" "_pad_str"
/// @DnDArgument : "value" ""Pad =" +string(_pindex)"
var _pad_str = "Pad =" +string(_pindex);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2D60C0E1
/// @DnDArgument : "msg" "_pad_str"
show_debug_message(string(_pad_str));

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6176E0DA
/// @DnDArgument : "expr" "_type"
var l6176E0DA_0 = _type;
switch(l6176E0DA_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 108FACA0
	/// @DnDParent : 6176E0DA
	/// @DnDArgument : "const" ""gamepad discovered""
	case "gamepad discovered":
		/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
		/// @DnDVersion : 1
		/// @DnDHash : 39ABEAC3
		/// @DnDParent : 108FACA0
		/// @DnDArgument : "gp" "_pindex"
		/// @DnDArgument : "deadzone" "0.5"
		gamepad_set_axis_deadzone(_pindex, 0.5);
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 4EF994C7
		/// @DnDParent : 108FACA0
		/// @DnDArgument : "obj" "player[_pindex]"
		/// @DnDArgument : "not" "1"
		var l4EF994C7_0 = false;
		l4EF994C7_0 = instance_exists(player[_pindex]);
		if(!l4EF994C7_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3F7D4679
			/// @DnDDisabled : 1
			/// @DnDParent : 4EF994C7
			/// @DnDArgument : "xpos" "300"
			/// @DnDArgument : "ypos" "20"
			/// @DnDArgument : "objectid" "obj_controller"
			/// @DnDSaveInfo : "objectid" "d1a25810-0325-4e6d-81fd-a72894bb8691"
		
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 45D00014
			/// @DnDApplyTo : player[_pindex]
			/// @DnDParent : 4EF994C7
			with(player[_pindex]) {
				/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
				/// @DnDVersion : 1
				/// @DnDHash : 696062B2
				/// @DnDParent : 45D00014
				/// @DnDArgument : "var" "_num"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "object" "obj_Player"
				var _num = instance_number(obj_Player);
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 0107B9C4
				/// @DnDParent : 45D00014
				/// @DnDArgument : "value" "_num -1"
				/// @DnDArgument : "instvar" "11"
				image_index = _num -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 76961372
				/// @DnDParent : 45D00014
				/// @DnDArgument : "expr" "_pindex"
				/// @DnDArgument : "var" "pad_num"
				pad_num = _pindex;
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6F20C632
	/// @DnDParent : 6176E0DA
	/// @DnDArgument : "const" ""gamepad lost""
	case "gamepad lost":
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 34642691
		/// @DnDParent : 6F20C632
		/// @DnDArgument : "obj" "player[_pindex]"
		/// @DnDArgument : "not" "1"
		var l34642691_0 = false;
		l34642691_0 = instance_exists(player[_pindex]);
		if(!l34642691_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4862A6E3
			/// @DnDApplyTo : player[_pindex]
			/// @DnDParent : 34642691
			with(player[_pindex]) instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7CB3D530
			/// @DnDParent : 34642691
			/// @DnDArgument : "expr" "noone"
			/// @DnDArgument : "var" "player[_pindex]"
			player[_pindex] = noone;
		}
		break;
}