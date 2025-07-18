$p=new Polytope(POINTS=>[[1,-1,-1],[1,-1,1],[1,1,-1],[1,1,1],[1,0,0]]);
### mostrar las propiedades de $p
$p->properties;

### mostrar una representación gráfica de $p
$p->VISUAL;

print $p->VERTICES;

print $p->DIM;

prefer "lrs";
print_constraints($p->FACETS);

print ($p->VERTICES_IN_FACETS);

$q = new Polytope(POINTS=>[[1,-1,-1],[1,-1,1],[1,1,-1],[1,1,1],[1,0,0],[0,1,1]]);
$q -> VISUAL;

print($q->VERTICES);

### mostrar facetas de $q
print_constraints($q->FACETS);
print("---\n");

### mostrar incidencia de vértices en facetas
print ($q->VERTICES_IN_FACETS);

$r = new Polytope(INEQUALITIES=>[[4,-1,-1],[7,-1,-2],[2,-1,0],[3,0,-1],[0,1,0], [0,0,1]]);
### mostrar las propiedades de $r
$r->properties;


print_constraints($r->INEQUALITIES);

print_constraints($r->FACETS);

$r->VISUAL;

### mostrar vértices y rayos de $r
print($r->VERTICES);

$p=new Polytope(POINTS=>[[1,1,1],[1,2,1],[1,1,2]]);
$p->VISUAL;

$q=new Polytope(POINTS=>[[1,0,0],[0,10,9],[0,9,10]]);
$q->VISUAL;

$m = minkowski_sum($p, $q);
$m -> VISUAL;

print ($m->VERTICES);

print_constraints($m->FACETS);

print($m->VERTICES_IN_FACETS);

$m->VISUAL;

$q2= recession_cone($m);
$q2 -> VISUAL;

print($q2->RAYS);

### $h := conv({(1,0,0), (1/2,2/3,0), (-1/2,2/3,0), (-1,0,0), (1/2,-2/3,0), (-1/2,-2/3,0)})
$h=new Polytope(POINTS=>[[1,1,0,0],[1,1/2,2/3,0],[1,-1/2,2/3,0],[1,-1,0,0],
[1,1/2,-2/3,0],[1,-1/2,-2/3,0]]);
$h->VISUAL;

### $c:= cone({(0,1,10), (2/3,-1/2,10), (-2/3,-1/2,10)})
$c=new Polytope(POINTS=>[[1,0,0,0],[0,0,1,10],[0,2/3,-1/2,10],[0,-2/3,-1/2,10]]);
$c->VISUAL;

$p=minkowski_sum($h,$c);
$p->VISUAL;

print_constraints($p->FACETS);

print($p->VERTICES);

print($p->VERTICES_IN_FACETS);

$c2=recession_cone($p);
$c2->VISUAL;


