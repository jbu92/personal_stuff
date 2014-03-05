#!/usr/bin/perl -w
#James Haight
#Tic-Tac-Toe bot based on XKCD's tic-tac-toe optimal move chart. XKCD 832

#Board is laid out as follows:
#  0 # 1 # 2
# ###########
#  3 # 4 # 5
# ###########
#  6 # 7 # 8

#X and O will be used when a space is filled, _ for empty

#initialize the board to underscores
my @board = (qw/_ _ _ _ _ _ _ _ _/);

#win will be set to X, O, or TIE on game end
my $win = 0;
my $turn = 0;
my $x_index;
my $o_index;
my $prev_move;

my %moves = {qw//};



print "Board is as follows:\n 0 # 1 # 2\n###########\n 3 # 4 # 5\n###########\n 6 # 7 # 8\n";

#for now let us assume player is X
while($win==0){ #until someone wins...
	print "Enter your move, X: ";
	$x_index = <STDIN>;
	$board[$x_index] = 'X';
	$turn++;
	$prev_move = $x_index;
	$o_index = o_logic($turn, $prev_move);
	$board[$o_index] = 'O';
	$turn++;
}

sub checkwin{ #checks the board against win. usage: $win = checkwin(@board);
	my $board = @_;
	if($board[0] != '_'){
		if($board[0] == $board [1]){
			if($board[0] == $board[2]){
				$win = $board[0];
			}
		}
		elsif($board[0] == $board[4]){
			if($board[0] == $board[8]){
				$win = $board[0];
			}
		}
		elsif($board[0] == $board[3]){
			if($board[0] == $board[6]){
				$win = $board[0];
			}
		}
	}
	if($board[1] != '_'){
		if($board[1] == $board[4]){
			if($board[1] == $board[7]){
				$win = $board[1];
			}
		}
	}
	if($board[2] != '_'){
		if($board[2] == $board[5]){
			if($board[2] == $board[8]){
				$win = $board[2];
			}
		}
		elsif($board[2] == $board[4]){
			if($board[2] == $board[6]){
				$win = $board[2];
			}
		}
	}
	elsif($board[3] == $board[4]){
		if($board[3] == $board[5]){
			$win = $board[3];
		}
	}
	elsif($board[6] == $board[7]){
		if($board[6] == $board[8]){
			$win = $board[6];
		}
	}
	
	#tie game code
	my $count = 0;
	foreach my $i (@board){
		if($i != '_'){
			$count++;
		}
	}
	if($count == 9){
		if ($win == 0){
			$win = "TIE";
		}
	}
	return $win;
}

sub o_logic{ #returns the best o move. usage: $move = o_logic($turn, $prev_move);
	$turn = shift(@_);
	$prev_move = shift(@_);
}

sub x_logic{ #returns the best x move. usage: $move = x_logic($turn, $prev_move);
	$turn = shift(@_);
	$prev_move = shift(@_);
}

sub print_board{
	my @board = @_;
}