#import "template/template.typ": *
#import default-theorems: *
#import constants: *
#import environments: *
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-venn:0.1.4"

= 集合论和基础数论
自从1874年Cantor提出集合论以来, *集合*是研究分析学的基础. 数学家们曾今试图用集合解释一切数学对象. 然而, 我们并不会严格地讨论集合论的公理, 而是以更现代的视角学习集合. 

== 基本逻辑术语
数学是建立在形式逻辑之上的学科. 虽然我们不会用大量的篇幅来介绍形式逻辑, 但是我们需要提前介绍一些逻辑术语来方便讨论. 

你没有必要把这些概念当作单词背下来. 相反, 如果初次对这些概念不熟练, 你应该往下读正文, 然后在不清楚这些概念的时候倒过来看这一部分. 

*命题* (proposition) 是指对事物做出判断的陈述句. 例如, 
- $f$ 是一个函数. 
- $x>3$. 
- 如果 $x$ 是偶数, 那么它能被 $2$ 整除. 

正确的命题称作*真* (true) 的, 不正确的命题称作*假* (false) 的. 

有时, 我们会遇到当命题 $P$ 为真, 则 $Q$ 命题为真的情况. 此时, 我们说 $P$ *蕴含* (implies) $Q$, 记作
$ P ==> Q.  $
我们有很多种方法来表述这个关系, 除了 $P$ 蕴含 $Q$ 之外, 我们有时还会说
- $Q$ 当 $P$ ($Q$ if $P$). 
- $P$ 是 $Q$ 的充分条件 (sufficient condition). 
- $P$ 仅当 $Q$ ($P$ only if $Q$). 
- $Q$ 是 $P$ 的必要条件 (necessary condition). 

在逻辑上, 我们容易知道 $P==>Q$ 和 $not Q==> not P$ 是一个意思 (符号 $not P$ 表示"$P$ 不成立", 即"非 $P$"). 用文字叙述就是*逆否命题和原命题等价*. 上面这些表述的后两条, 就是从逆否命题的角度来描述 $P$ 和 $Q$ 之间的关系的. 

以下的这些表述是一个意思：
- 如果 $n$ 能被 $4$ 整除, 那么它是偶数. 
- "$n$ 能被 $4$ 整除"是"$n$ 是偶数"的充分条件. 
- $n$ 能被 $4$ 整除仅当它是偶数. 
- $n$ 是偶数当它能被 $4$ 整除. 
- "$n$ 是偶数"是"$n$ 能被 $4$ 整除"的必要条件. 
- $n$ 不能被 $4$ 整除, 除非它是偶数. 

有时, 我们会遇到 $P==>Q$ 且 $Q==>P$ 的情况. 此时我们就记 $P<==>Q$, 它意味着 $P$ 和 $Q$ 是同时为真或同时为假, 或者说是在逻辑上*等价* (equivalent) 的. "逆否命题和原命题等价", 用符号可以表述为
$ (P==>Q) <==> (not Q==> not P).  $
同样, 我们也用多种自然语言来描述这种关系：
- $P$ 是 $Q$ 的充分必要条件, 或充要条件. 
- $P$ 当且仅当 $Q$. #footnote[实际上, "当且仅当"是一种不符合汉语语法的表述, 它由 if and only if直接翻译而来, 应当将其看作专业术语. ]
在定义中, 我们约定俗成使用"如果", 但是你要翻译成"当且仅当". 这是在说, 你应该知道以下两种说法相同：
- *定义*#h(1em)$n$ 称为偶数, 如果它能被 $2$ 整除. 
- 我们定义, $n$ 是偶数当且仅当它能被 $2$ 整除. 

#linebreak()

符号 $forall$ 表示"对于每一个" (for all) 或者"对于任意的" (for any). 符号 $exists$ 表示"对于某个" (for some) 或者"存在" (exists). 例如, $exists x,f(x)>2$ 表示存在某个 $x$ 使得 $f(x)>2$. 通常, 你只需要把 $forall$ 和 $exists$ 换成自然语言, 就可以读懂含有这些符号的句子. 

在数学中, 我们倾向于用文字描述这些词语, 但有时我们也会用符号表示. 

== 基础集合论
*集合* (set) 是一堆无序元素的集体. 

- $A={-1,0,3,4}$ 是一个包含 $-1,0,3,4$ 四个元素的集合. 

- $B={x in A:x>3}$ 是一个集合, 它的元素是 $A$ 中所有大于 $3$ 的元素的集合. 按照我们刚刚定义的 $A$, $B$ 就应该是 ${4}$. 

- $emptyset$ 是一个特殊的集合, 它不包含任何元素, 称作*空集* (empty set). 

- 同时, 集合本身也可以成为其它集合的对象. $C={A,B}$ 是由集合 $A,B$ 构成的一个集合. 也就是说, 它是_集合的集合_. 我们把非空集合构成的集合叫做*族* (family). 

如果一个元素 $x$ 是集合 $A$ 的元素, 我们就写 $x in A$. 

我们规定*两个集合相等当且仅当它们含有相同的元素*. 用符号表示, 即
$ forall X forall Y(X=Y<==> forall u(u in X <==> u in Y)) $

${-1,1}$ 和 ${1,-1}$ 是相等的, 因为它们都恰好含有 $-1$ 和 $1$ 两个元素；但是, ${1,2,3}$ 和 ${1,3}$ 就不是相等的, 因为前者含有元素 $2$, 而后者没有. 这条公理同时也保证了 ${1},{1,1,1},{1,1,1,1}$ 是相等的. 

#definition(alias: [子集])[
  集合 $A$ 称为集合 $B$ 的*子集* (subset), 记作 $A subset B$, 如果任意 $A$ 的元素都是 $B$ 的元素. 用符号表示, 即 $A subset B$ 如果#footnote[逻辑学上, 我们通常认为 $forall x in A, P(x)$ 实际上是 $forall x(x in A ==> P(x))$ 的简写. 所以, 你可能会觉得 $forall x in A, x in B$ 和 $x in A ==> x in B$ 是一个意思. ]
  $ forall x in A, x in B.  $
  $A$ 称作 $B$ 的*真子集* (proper subset), 如果存在一个 $B$ 的元素不属于 $A$. 
]

子集的概念很直观. 它描述了两个集合直接的包含关系. 

#theorem[
  设 $A,B$ 是两个集合, 那么 $A=B$ 当且仅当 $A subset B$ 且 $B subset A$. 
]

#proof[
  取任意一个元素 $x$. 因为 $A subset B$, 所以 $x in A ==> x in B$；因为 $B subset A$, 所以 $x in B ==> x in A$. 于是我们有 $x in A <==> x in B$, 这正是集合相等的定义. 
]

证明两个集合互相包含是证明相等的重要手段. 

#linebreak()
集合之间也有运算, 我们称作交和并. 
#definition[
  给定集合 $A$ 和 $B$. 它们的*交* (intersection) 是指集合
  $ A inter B = {x : x in A "​且" x in B} $

  *并* (union) 是指集合
  $ A union B = {x : x in A "或​" x in B} $
]

#figure(
  grid(
    columns: (auto, auto),
    column-gutter: 12pt,
    row-gutter: 4pt,
    align: center,

    cetz.canvas(
      {
        import cetz.draw: content
        cetz-venn.venn2(
          name: "venn",
          ab-fill: luma(200),
        )
        content("venn.a", $A$)
        content("venn.b", $B$)
      },
      length: .5cm,
    ),

    cetz.canvas(
      {
        import cetz.draw: content
        cetz-venn.venn2(
          name: "venn",
          ab-fill: luma(200),
          a-fill: luma(200),
          b-fill: luma(200),
        )
        content("venn.a", $A$)
        content("venn.b", $B$)
      },
      length: .5cm,
    ),
    [$A inter B$],

    [$A union B$],
  ),
  caption: [用Venn图表示集的并和交],
)

设 $A={1,2,3}$, $B={3,4,5}$, 那么显然有 $A union B = {1,2,3,4,5}$ 和 $A inter B = {3}$. 

#linebreak()

#definition(alias: [补集])[
  给定集合 $A$ 和 $B$ (不要求 $A subset B$), 则 $B$ 相对于 $A$ 的*补集* (complementary set), 记作 $A subset B$, 是那些在 $A$ 中但不在 $B$ 中的元素构成的集合. 即, 
  $ A without B = {x in A: x in.not B}.  $

  有时, 根据上下文可以确定一整个空间 $X$. 此时, 对于 $E subset X$, 我们可以将它的补集简记为 $E^complement = X without E$. 有的地方也记作 $∁ E$. 
]

#theorem(alias: [de Morgan律])[
  在全集 $X$ 中, 设 ${E_alpha}$ 是一族 $X$ 的子集. 那么, 
  $
    & (union.big_alpha E_alpha)^complement = inter.big_alpha E_alpha^complement, \
    & (inter.big_alpha E_alpha)^complement = union.big_alpha E_alpha^complement. 
  $
]

#figure(
  cetz.canvas({
    import cetz.draw: content
    cetz-venn.venn2(
      name: "venn",
      not-ab-fill: luma(200),
    )
  }),
  caption: [
    对于两个 $E_alpha$ 的情况, $(union.big_alpha E_alpha)^complement$ 和 $inter.big_alpha E_alpha^complement$ 都是图中的填色部分
  ],
)

#proof[
  为了证明 $(union.big_alpha E_alpha)^complement subset inter.big_alpha E_alpha^complement$, 我们先取任意一个 $x in (union.big_alpha E_alpha)^complement$. 我们有 $x in.not union.big_alpha E_alpha$, 也就是说, 对任意的 $alpha$ 都有 $x in.not E_alpha$, 而 $x in.not E_alpha$ 意味着 $x in E_alpha^complement$, 所以 $x in inter.big_alpha E_alpha^complement$. 因为 $x$ 是任意, 这样就证明了 $(union.big_alpha E_alpha)^complement subset inter.big_alpha E_alpha^complement$. 

  接下来, 我们要证明 $inter.big_alpha E_alpha^complement subset (union.big_alpha E_alpha)^complement$. 同样任取一个 $x in inter.big_alpha E_alpha^complement$, 对任意 $alpha$ 都有 $x in E_alpha^complement$, 即 $x in.not E_alpha$. 所以 $x in.not union.big_alpha E_alpha$, 即 $x in (union.big_alpha E_alpha)^complement$. 因为 $x$ 是任意, 这样就证明了 $inter.big_alpha E_alpha^complement subset (union.big_alpha E_alpha)^complement$. 

  综上所述, $(union.big_alpha E_alpha)^complement = inter.big_alpha E_alpha^complement$. 对于另一个式子, 以 $E_alpha^complement$ 替换 $E_alpha$, 再在式子两端取补集, 根据 $(E^complement)^complement=E$ 得证. 
]



== 函数和双射
从小到大的数学学习中, "函数"这两个字你应该已经看得不厌其烦了. 但是函数是如此重要, 我们必须要再重申一遍. 

#definition(alias: [函数])[
  集合 $A$ 和 $B$ 之间的一个*函数* (function) 或*映射* (mapping) $f$, 为每个 $x in A$ 都唯一、确定地对应一个 $y = f(x) in B$. 这个函数记作
  $ f:A->B,x|-> f(x).  $

  集合 $A$ 称作 $f$ 的*定义域* (domain), $B$ 称作 $f$ 的*上域* (codomain). 
]

虽然我们还没有定义实数, 但让我们先借用一下. 

example

#definition(alias: [像])[
  给定函数 $f:A->B$. 设 $E subset A$, $E$ 关于 $f$ 的*像* (image) 是指
  $ f(E)={f(x):x in E}； $
  设 $G subset B$, $G$ 关于 $f$ 的*原像* (preimage) 是指
  $ f^(-1)(G)={x:f(x) in G}.  $

  对于 $y in B$, 我们也考虑 $y$ 的原像 $f^(-1)(y)=f^(-1)({y})$. 
]

example

#definition(alias: [一对一映射])[
  函数 $f:A->B$ 称为*一对一* (one-to-one) 的, 如果对任意 $y in B$, $f^(-1)(y)$ 都*至多*包含 $A$ 中的一个元素. 一对一函数也叫单射 (injective) 函数或*单射* (injection)
]

example

#definition(alias: [映上映射])[
  函数 $f:A->B$ 称为*映上* (onto) 的, 如果对任意 $y in B$, $f^(-1)(y)$ 都*至少*包含 $A$ 中的一个元素. 映上函数也叫满射 (surjective) 函数或*单射* (surjection)
]

example

#definition(alias: [一一对应])[
  函数 $f:A->B$ 称为*一一对应* (1-1 correspondence), 如果它既映上也一对一. 一一对应也叫双射 (bijective) 函数或*双射* (bijection). 
]

example

双射的作用很多. 之后我们就会介绍它的作用之一——比较集合的元素. 

== 再谈自然数

为了构造一个严格的数系, 我们需要回到数学的开端——自然数系 $NN$. 

我们学习数学是从数数开始的. 数数的行为, 具体表示为给定一个数, 我们可以数出下一个唯一、确定的数, 所以"数数"可以视作一个函数 $s:NN->NN$, 这个函数称为*后继* (successor). 为了使得后继真的可以满足数数的性质, 它需要满足：

+ $0$ 的下一个数不是 $0$. \
  $arrow.hook$ $s(0)!=0$. 

+ 任何一个数的下一个数都不等于它自身. \
  $arrow.hook$ $s$ 是一对一映射. 

+ 从 $0$ 开始一直数数, 可以得到任意自然数. \
  $arrow.hook$ 若 $A subset NN$ 满足 $0 in A$ 且 $forall n in A, s(n) in A$, 那么 $A = NN$. 

到目前为止 $NN$ 还是一个抽象的集合. 为了方便, 我们用我们熟知的记号来描述它的元素——
$ 1=s(0), 2=s(1), 3=s(2),... $

现在, 我们把这个定义更严谨地写出来：

#definition(alias: [Peano--Dedekind自然数系])[
  自然数系由一个集合 $NN$、元素 $0$ 和其上的运算 $s: NN->NN$ 构成, 满足：
  + $s(0)!=0$. 
  + $s$ 一对一. 
  + 若 $0 in A subset NN$ 且 $n in A==> s(n) in A$, 那么 $A = NN$. 
]

其中, 最后一条性质断言了*数学归纳法* (mathematical induction) 的正确性. 数学归纳法指出, 对于某个依赖于自然数 $k$ 的命题, 我们可以
+ 先证明 $k=0$ 的基本情形. 
+ 然后, 假设 $k=n$ 时命题成立 (归纳假设, induction hypothesis, 通常缩写为 $"I.H."$), 证明 $k=n+1$ 时命题成立. 
+ 所以, 命题对任意 $k in NN$ 成立. 

在关于自然数的研究中, 我们会多次用到归纳法. 

为了方便, 我们把 $s(n)$ 记为 $n^+$, 然后开始研究自然数的运算. 

#definition(alias: [$NN$ 上的加法])[
  $NN$ 上的加法由以下性质确定：
  + $n+0=n$. 
  + $n+(m^+) = (n+m)^+$
]

嗯, 这很符合我们的直觉. 现在我们可以写出
$ 1+1=1+0^+ = (1+0)^+=1^+=2.  $

但是, 要只用它们证明加法的性质就没那么简单了. 我们慢慢来, 先证明加法交换律. 

#theorem[
  设 $n in NN$, 那么 $n+0=0+n=n$. 
] <natural-number-addition-identity>

需要注意的是, *我们还没有证明交换律*, 因此我们不能随意交换加数的顺序. 

这是使用数学归纳法的第一个例子. 让我们演示一下数学归纳法是如何工作的：

#proof[
  当 $n=0$ 时, $0+0=0+0=0$ 根据定义显然成立. 

  接下来我们要进行归纳步骤——*归纳假设* ($n=k$)：假设 $k+0=0+k=k$. *求证* ($n=k^+$)：$k^+ + 0=0+k^+=k^+$. 

  根据归纳假设, 
  $ 0+k^+=(0+k)^+=(k+0)^+=k^+=k^++0,  $

  那么, $n=0$ 时命题成立, $n=0^+=1$ 时也成立, $n=1^+=2$ 时也成立……因此, 对所有 $n in NN$, 命题都成立. 
]

#theorem[
  设 $n in NN$, 那么 $n+1=1+n=n^+$. 
]

我们同样使用归纳法完成. 

#proof[
  根据定义, $n+1=n+0^+=(n+0)^+=n^+$. 所以, 我们证明 $1+n=n^+$. 我们同样使用数学归纳法. 当 $n=0$ 时, $1+0=1$ 又 $0^+=1$, 命题成立. 

  *归纳步骤*. 假设 $1+k=k^+(=k+1)$. 我们需要证明 $1+k^+ = k^(++)$. 实际上, 我们有
  $ 1+k^+=(1+k)^+=(k+1)^+=(k^+)^+=k^(++).  $
]

#theorem(alias: [加法结合律])[
  设 $x,y,z in NN$, 则 $(x+y)+z=x+(y+z)$. 
] <natural-number-addition-associativity>

这里我们要用到另一个技巧——对两个变量中的一个使用数学归纳法. 

#proof[
  对变量 $z$ 用数学归纳法. $z=0$ 时根据定义显然. 

  假设 $(x+y)+k=x+(y+k)$ 成立, 我们想要证明 $(x+y)+k^+ = x+(y+k^+)$. 根据加法的定义, 
  $
    (x+y) + k^+ & = ((x+y)+k)^+ \
                & = (x+(y+k))^+ = x+(y+k)^+ = x + (y+k^+). 
  $
]

我们终于可以证明交换律：

#theorem(alias: [加法交换律])[
  设 $x,y in NN$, 则 $x+y=y+x$. 
] <natural-number-addition-communicativity>



#proof[
  对 $y$ 使用数学归纳法. 当 $y=0$ 时, @natural-number-addition-identity 已经给出了证明. 

  现在假设 $y=k$ 时成立, 证明 $y=k^+$ 时的情况. 
  $
       k^++x 
    = & k+1+x \
    = & k+(1+x) \
    = & k+x^+ \
    = & (k+x)^+ \
    = & (x+k)^+=x+k^+. 
  $
]

#remark[
  @natural-number-addition-identity、@natural-number-addition-associativity、@natural-number-addition-communicativity 给出的三条性质使得 $NN$ 连同加法成为一个交换幺半群 (communicative monoid). 其中, 元素 $0$ 因为满足 $n+0=0+n=n$, 我们叫它*单位元* (identity). 
]

#linebreak()

#remark[
  到此, 我们已经详细地描述了自然数集的大部分性质, 却并未定义自然数集的具体构造. 这实际上反映出现代数学的一种趋势：从集合论式的"底层构造"中抽离, 转而去关注对象所具备的泛性质. 曾经Hilbert风趣地说"没有人能把我们赶出Cantor创造的天堂" (Aus dem Paradies, das Cantor uns geschaffen, soll uns niemand vertreiben können.) 然而在一百年后, 情况似乎发生了一些变化. 我们不再在"天堂"里面盖静止的房子, 而是动态地以更大的视角审视整个"天堂". 
]
