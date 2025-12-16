#import "template/template.typ": *
#show: pot-math.with()
#import default-theorems: *

== 范畴论初步
\
#let ob=$"ob" $
#let hom(cat,x,y)=$"Hom"_#cat (#x,#y)$

#definition(alias:[范畴])[
  一个*范畴*(category) $frak(C)$是由:

  1. 一个类$ob frak(C)$, 称为范畴$frak(C)$的*对象*(object).
  2. 任意一对对象$x,y$对应一个集合$hom(frak(C),x,y)$, 其元素称为*态射*(morphism), 并且满足当$x != x'$或$y != y'$时, $hom(frak(C),x,y) inter hom(frak(C),x',y') = nothing$. ※不引起歧义的情况下, 可记作$hom(,x,y)$.

  并且态射需要满足条件:

  1. *复合运算*: 对于任意$a,b,c in ob frak(C)$以及$f in hom(,a,b)$, $g in hom(,b,c)$, 那么存在唯一的$g f in hom(,a,c)$, 称之为态射$f,g$的*复合*(composition).
  2. *结合律*: 对于任意$a,b,c,d in ob frak(C)$以及$f in hom(,a,b)$, $g in hom(,b,c)$, $h in hom(,c,d)$, 则
  $ (f g)h=f(g h) $
  3. *单位态射*: 对于每个对象$a in ob frak(C)$都存在一个态射$1_a in hom(,a,a)$使得对任意$f in hom(,a,b)$以及$g in hom(,c,a)$都有$f 1_a=f$, $1_a g=g$.

  范畴$frak(C)$中态射的全体记作$"Mor"frak$
]
