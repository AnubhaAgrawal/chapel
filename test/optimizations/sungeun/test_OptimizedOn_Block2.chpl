config const n = 10;
config const l = n/2;
use BlockDist;

var Dist = new dist(new Block(boundingBox=[1..n]));
var Dom: domain (1) distributed Dist = [1..n];
record R {
  var r: int;
}
var A: [Dom] R;
A.r = 1;

on Dist.ind2loc(l) do {
  local {
    A(l).r = l;
  }
 }

writeln(A);


