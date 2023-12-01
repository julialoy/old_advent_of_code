my $raw_input = "2015_day_05_input.txt".IO.slurp;
my @puzzle_input = $raw_input.split("\n");
my $num_nice = 0;

for @puzzle_input {
    my $curr_str = $_;
    if $curr_str ~~ rx/[ab|cd|pq|xy]/ { next; }
    if $curr_str ~~ m:g/<[aeiou]>/ {
        if $/.elems < 3 { next; }
    } else {
        next;
    }
    if not $curr_str ~~ rx/[aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz]/ { next; }
    $num_nice++;
}

say $num_nice;