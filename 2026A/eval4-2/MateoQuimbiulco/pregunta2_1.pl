use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 1. 
my $v = new Polytope(POINTS=>[[1,1,0,0,0],[1,0,1,0,0],[1,0,0,1,0],[1,0,0,1,1],[1,0,0,0,0],[1,0,0,1,0.5]]);
my $y = new Polytope(POINTS =>[[1,0,0,0,0],[0,1,1,0,0],[0,1,0,1,0],[0,0,1,1,0],[0,3,2,1,0]]);
my $p = minkowski_sum($v,$y);
print "VERTICES DE P:";
print ($p->VERTICES);
print "RAYOS DE P:";
print ($p->RAYS);
print "FACETAS DE P"
print_constraints($p->FACETS);
my $rc = recession_cone($p);
print "RAYOS:";
print ($rc->RAYS);
print "FACETAS"
print_constraints($rc->FACETS);


