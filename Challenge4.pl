sub p{$i=shift;my $x;@t=split('',$i);map{$x.=$_}(reverse @t);($x eq $i)?$x:0;}
map{$x=$_;push(@z,map{my $i=($x*$_);&p($i)}(100..999));}(100..999);@s=sort{$a<=>$b}@z;print $s[-1];