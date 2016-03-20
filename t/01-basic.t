use v6;
use Test;
use Algorithm::MinMaxHeap;

lives-ok { my $heap = Algorithm::MinMaxHeap.new(); }
lives-ok { my $heap = Algorithm::MinMaxHeap.new(type => Cool); }
lives-ok { my $heap = Algorithm::MinMaxHeap.new(type => Algorithm::MinMaxHeap::Comparable); }

lives-ok { my $heap = Algorithm::MinMaxHeap.new(type => Str); }
lives-ok { my $heap = Algorithm::MinMaxHeap.new(type => Rat); }
lives-ok { my $heap = Algorithm::MinMaxHeap.new(type => Int); }
lives-ok { my $heap = Algorithm::MinMaxHeap.new(type => Num); }
dies-ok { my $heap = Algorithm::MinMaxHeap.new(type => Range); }

done-testing;
