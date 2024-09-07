/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EB26409
/// @DnDInput : 2
/// @DnDArgument : "var" "move_count"
/// @DnDArgument : "value" "abs(vel_x)"
/// @DnDArgument : "var_1" "move_amount"
/// @DnDArgument : "value_1" "sign(vel_x)"
var move_count = abs(vel_x);
var move_amount = sign(vel_x);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 0B24865F
/// @DnDArgument : "times" "move_count"
repeat(move_count){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1A96DE1A
	/// @DnDInput : 2
	/// @DnDParent : 0B24865F
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "check_collision"
	/// @DnDArgument : "arg" "move_amount"
	/// @DnDArgument : "arg_1" "0"
	var collision_found = check_collision(move_amount, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36973724
	/// @DnDParent : 0B24865F
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "value" "false"
	if(collision_found == false){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 12E34BE3
		/// @DnDParent : 36973724
		/// @DnDArgument : "value" "move_amount"
		/// @DnDArgument : "value_relative" "1"
		x += move_amount;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 49743DA0
	/// @DnDParent : 0B24865F
	else{	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69C51A23
		/// @DnDParent : 49743DA0
		/// @DnDArgument : "var" "vel_x"
		/// @DnDArgument : "value" "0"
		var vel_x = 0;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 6C5FB4E7
		/// @DnDParent : 49743DA0
		break;}}