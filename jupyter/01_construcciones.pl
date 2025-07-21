$p= cube(2);
$p->VISUAL;

$p = cross(3);
print ($p->VERTICES);
$p->VISUAL;

$p = simplex(4);
print $p->VERTICES;
print $p->DIM;
$p->VISUAL;

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

$p = cyclic(3, 6);
$p -> VISUAL;

print($p->VERTICES_IN_FACETS);


