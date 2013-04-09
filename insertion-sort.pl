#!/usr/bin/perl

# Perl Insertion Sort

my @list = qw(l a m i d a); 

sub swap{
    my ($a, $b, $list) = @_; 
    (@$list[$a], @$list[$b]) = (@$list[$b], @$list[$a]);
}

sub insertionSort{
    my ($list) = @_;

    my $i;
    for($i = 1; $i < scalar @$list; $i++){
        my $j = $i;
        while($j > 0 && @$list[$j] lt @$list[$j-1]){
            swap($j, $j-1, $list);
            $j--;
        }
    }

}

insertionSort(\@list);

print "@list\n";

