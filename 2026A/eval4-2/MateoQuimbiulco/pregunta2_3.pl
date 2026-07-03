use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 3
my $p = new Polytope(INEQUALITIES=>[
  [2, 2, -1, -1], 
  [2, -2, -1, -1],
  [7, 2, -3, -3],
  [1, 1, 0, 0],
  [1, -1, 0, 0],
  [1, 0, 1, 0],
  [1, 0, -1, 0],
  [1, 0, 0, 1],
  [1, 0, 0, -1]
]);
my $q = bipyramid($p);
#LITERAL 1)
print "VERTICES DE P:";
print($p->VERTICES);
print "FACETAS DE P:";
print($p->FACETS);
print "INCIDENCIA VERTICE-FACETA DE P:";
print ($p->VERTICES_IN_FACETS);
#LITERAl 2)
$p -> VISUAL;
#LITERAL 3)
print "INCIDENCIA VERTICE-FACETA DE Q:";
print ($q->VERTICES_IN_FACETS);
#LITERAL 4)
print $q->SCHLEGEL;
#LITERAL 5)
print map {$_, ": ", $q->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..4);

#RESPUESTA PREGUNTA:
#En total existen 16 facetas, de donde 12 de ellas son tetraedros, mientras que las otras 4 son piramides de base cuadrada.

# LMT : 1/1