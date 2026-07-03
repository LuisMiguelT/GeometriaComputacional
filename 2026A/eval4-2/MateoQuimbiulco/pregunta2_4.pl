use application "polytope";
#MATEO QUIMBIULCO
#PREGUNTA 4
my $p = new Polytope(INEQUALITIES=>[
  [2, -1, -1],
  [2, 1, -1],
  [2, -1, 1],
  [2, 1, 1],
  [1, 0, 1],
  [1, 0, -1]
]);
my $q = bipyramid($p);
my $r = prism($q);
#LITERAL 1
# LMT: Falta ; al final de la siguiente línea
print "INCIDENCIA VERTICES-FACETAS DE Q:";
print $q->VERTICES_IN_FACETS;
$q->VISUAL;
#LITERAL 2
# LMT: Falta ; al final de la siguiente línea
print "INCIDENCIA VERTICES-FACETAS DE R:";
print $r->VERTICES_IN_FACETS;
print $r->SCHLEGEL;
#LITERAL 3
# LMT: Falta ; al final de la siguiente línea
print "NUMERO DE CARAS DE CADA DIMENSION DE Q:";
print map {$_, ": ", $q->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..3);
# LMT: Falta ; al final de la siguiente línea
print "NUMERO DE CARAS DE CADA DIMENSION DE R:";
print map {$_, ": ", $r->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..4);
#LITERAL 4
print map { $r->HASSE_DIAGRAM->FACES->[$_] } @{$r->HASSE_DIAGRAM->nodes_of_dim(2)};
#Los politopos que conforman las caras de dimension 2 son tanto triangulos como cuadrados, y existen 18 y 24 respectivamente. 
# LMT: Justificar
#LITERAL 5
$r->HASSE_DIAGRAM->VISUAL;

# LMT: No compilaba (faltaban ; al final de algunas líneas)
# LMT : 0,9 / 1



