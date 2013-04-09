#!/usr/bin/perl

# Perl Insertion Sort

my @list = qw(l a m i d a); 

sub swap{
    my ($a, $b, $list) = @_; 
    (@$list[$a], @$list[$b]) = (@$list[$b], @$list[$a]);
}

sub selectionSort{
    my ($list) = @_;

    my $min;
    my $i;
    for($i = 0; $i < scalar @$list; $i++){
        $min = $i;
        my $j;
        for($j=$i+1; $j < scalar @$list; $j++){
            if(@$list[$j] lt @$list[$min]){
                $min = $j;
            }
        }
        swap($i, $min,$list);
    }

}

selectionSort(\@list);

print "@list\n";

