use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 2. 
my $p = new Polytope(INEQUALITIES=>[
  [1, -1, 1, -1, -1],
  [1, -2, 0, -2, -1],
  [2, -1, 0, -1, -1],
  [3, -1, 1, 0, -1],
  [0, 1, 0, 0, 0],
  [0, 0, 1, 0, 0],
  [0, 0, 0, 1, 0],
  [0, 0, 0, 0, 1]
]);
print "VERTICES DE P:";
print($p->VERTICES);
print "FACETAS DE P:";
print($p->FACETS);
print "INCIDENCIA VERTICE-FACETA DE P:";
print ($p->VERTICES_IN_FACETS);
print "DIMENSION DE P:";
print $p->DIM;
#LITERAl 2)
#print $p->SCHLEGEL;
#LITERAL 3)
$p->HASSE_DIAGRAM->VISUAL;

# LMT: 1/1