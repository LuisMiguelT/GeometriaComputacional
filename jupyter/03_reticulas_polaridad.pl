$p = bipyramid(cube(3));
$p->SCHLEGEL;

print "Dimensión: ";
print $p->DIM;
print "\n\nVértices:\n";
print $p->VERTICES;
print "\nFacetas:\n";
print_constraints($p->FACETS);
print "Incidencia vértices-facetas:\n";
print ($p->VERTICES_IN_FACETS);

$p->HASSE_DIAGRAM->VISUAL;

print $p->HASSE_DIAGRAM->FACES;

print $p->HASSE_DIAGRAM->FACES->[2];

print $p->HASSE_DIAGRAM->nodes_of_dim(2);
print "\n---\n";
print map { $p->HASSE_DIAGRAM->FACES->[$_] } @{$p->HASSE_DIAGRAM->nodes_of_dim(2)};

print $p->HASSE_DIAGRAM->nodes_of_dim(1)->size;

print map {$_, ": ", $p->HASSE_DIAGRAM->nodes_of_dim($_)->size,"\n" } (-1..4);

print $p->HASSE_DIAGRAM->INVERSE_RANK_MAP;

$HD_partial = lower_hasse_diagram($p->VERTICES_IN_FACETS,2);
$HD_partial->VISUAL;

print $HD_partial->FACES;

$reticula = $p->HASSE_DIAGRAM;
print $reticula->FACES;

$q = polarize($p);
$q->HASSE_DIAGRAM->VISUAL;

$q2 = new Polytope(POINTS=>$q->VERTICES);
$q2->VISUAL;

$p = pyramid(cube(3));
print $p->VERTICES;
print "\n---\n";
### la función polarize no retorna un polítopo, porque el cero no es punto interior de $p
$q = polarize($p);
$q2 = new Polytope(POINTS=>$q->VERTICES);
print($q2->VERTICES);
### la función VISUAL genera un error
$q2->VISUAL;

$p = pyramid(cube(3));
print $p->VERTICES;
print "\n---\n";
### empleando translate, movemos a $p para que cero sea punto interior 
$t = new Vector(0,0,0,-1/2);
$p2 = translate($p,$t);
print $p2->VERTICES;
print "\n---\n";
$q = polarize($p2);
$q2 = new Polytope(POINTS=>$q->VERTICES);
### ahora $q2 es un polítopo...
print($q2->VERTICES);
### ... y la función VISUAL se puede ejecutar
$q2->VISUAL;

$h = prism( n_gon( 6 ) );
$h->VISUAL;

print map{ $_, ": ", $h->HASSE_DIAGRAM->nodes_of_dim( $_ )->size, "\n" } (0..2);

print map{$h->HASSE_DIAGRAM->FACES->[$_], "\n"}@{$h->HASSE_DIAGRAM->nodes_of_dim(2)};


$h->HASSE_DIAGRAM->VISUAL;

### verifiquemos primero que el cero es punto interior de $h
print $h->VERTICES;

$m = polarize($h);

print map{ $_, ": ", $m->HASSE_DIAGRAM->nodes_of_dim( $_ )->size, "\n" } (0..2);

print map{$m->HASSE_DIAGRAM->FACES->[$_], "\n"}@{$m->HASSE_DIAGRAM->nodes_of_dim(2)};

$m->HASSE_DIAGRAM->VISUAL;

$m2=new Polytope(POINTS=>$m->VERTICES);
$m2->VISUAL;


