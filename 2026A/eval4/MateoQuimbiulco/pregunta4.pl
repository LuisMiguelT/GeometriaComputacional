use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 4. 
my $p1 =  new Polytope(INEQUALITIES=>[[4,3,-2],[4,-3,-2],[1,0,1]]);
my $p2 = prism($p1);
my $p3 = pyramid($p2);
print "CARACTERISTICAS P1";
print $p1->VERTICES;
print $p1->FACETS;
print $p1->VERTICES_IN_FACETS;
print "CARACTERISTICAS P2";
print $p2 -> VERTICES;
print $p2->FACETS;
print $p2->VERTICES_IN_FACETS;
print "CARACTERISTICAS P3";
print $p3 -> VERTICES;
print $p3 ->FACETS;
print $p3->VERTICES_IN_FACETS;

