$p = simplex(5);

print $p->list_properties;

print join(", ", $p->list_properties);

### es acotado?
print "BOUNDED: ";
print $p->BOUNDED;
print "\n";
### es no vacío?
print "FEASIBLE: ";
print $p->FEASIBLE;
print "\n";
### es polítopo con punta (tiene al menos un vértice)?
print "POINTED: ";
print $p->POINTED;
print "\n";
### tiene centro?
print "CENTERED: ";
print $p->CENTERED;
print "\n";

### vértices del poliedro
print $p->VERTICES;
print("---\n");
### número de vertices del poliedro
print $p->N_VERTICES;

### vértices del poliedro, en formato de matriz densa
print dense($p->VERTICES);

$p->properties;

print $p->FACETS;

print_constraints $p->FACETS;

$p->properties;

print $p->VERTICES_IN_FACETS;

$c = cube(6);
$c->properties;

print_constraints dense($c->FACETS);

print $c->VERTICES;
print("---\n");
print $c->N_VERTICES;

$r= cross(5);
$r->properties;

print dense($r->VERTICES);

print_constraints($r->FACETS);

$cy = cyclic(3, 6);
$cy->properties;
print $cy->VERTICES_IN_FACETS;

$c = cube(3);
$c->VISUAL;
$c->SCHLEGEL;

$s = cross(4);
$s->SCHLEGEL;

$p = cube(2);
$p ->VISUAL;
$q = pyramid($p);
$q -> VISUAL;

$q = bipyramid($p);
print($q->VERTICES_IN_FACETS);
$q -> VISUAL;

$p = simplex(2);
$p -> VISUAL;
$q = prism($p);
$q -> VISUAL;
$r = prism($q);
$r->VISUAL;

$p=new Polytope(POINTS=>[[1,-1,-1],[1,-1,1],[1,1,-1],[1,1,1],[1,0,0]]);

print $p->POINTS;
print "----\n";
print $p->VERTICES;

print $p->DIM;

$p->VISUAL;

print $p->FACETS;

print_constraints($p->FACETS);

print $p->VERTICES_IN_FACETS;

$Pi3 = new Polytope(POINTS=>[[1,1,2,3,4],[1,1,2,4,3],[1,1,3,2,4],[1,1,3,4,2],[1,1,4,2,3],[1,1,4,3,2],
                             [1,2,1,3,4],[1,2,1,4,3],[1,2,3,1,4],[1,2,3,4,1],[1,2,4,1,3],[1,2,4,3,1],
                             [1,3,1,2,4],[1,3,1,4,2],[1,3,2,1,4],[1,3,2,4,1],[1,3,4,1,2],[1,3,4,2,1],
                             [1,4,1,2,3],[1,4,1,3,2],[1,4,2,1,3],[1,4,2,3,1],[1,4,3,1,2],[1,4,3,2,1]]);

print $Pi3->VERTICES;

print($Pi3->DIM);

print_constraints($Pi3->FACETS);

print($Pi3->VERTICES_IN_FACETS);

$q = new Polytope(POINTS=>[[1,1,2,3],[1,1,2,4],[1,1,3,2],[1,1,3,4],[1,1,4,2],[1,1,4,3],
                             [1,2,1,3],[1,2,1,4],[1,2,3,1],[1,2,3,4],[1,2,4,1],[1,2,4,3],
                             [1,3,1,2],[1,3,1,4],[1,3,2,1],[1,3,2,4],[1,3,4,1],[1,3,4,2],
                             [1,4,1,2],[1,4,1,3],[1,4,2,1],[1,4,2,3],[1,4,3,1],[1,4,3,2]]);
$q->VISUAL;

$p = new Polytope(INEQUALITIES=>[[1,1,0],[1,0,1],[1,-1,0],[1,0,-1],[2,1,1]]);

print_constraints($p->INEQUALITIES);

print_constraints($p->FACETS);

print($p->DIM);

$p->VISUAL;

print($p->VERTICES);

print($p->VERTICES_IN_FACETS);

$c4 = new Polytope(INEQUALITIES=>[[1,1,0,0,0],[1,0,1,0,0],[1,0,0,1,0],[1,0,0,0,1],
                                  [1,-1,0,0,0],[1,0,-1,0,0],[1,0,0,-1,0],[1,0,0,0,-1]]);

print_constraints($c4->FACETS);

print($c4->DIM);

$c4->VISUAL;

print($c4->VERTICES);

print($c4->VERTICES_IN_FACETS);
