
#import "@preview/grape-suite:3.1.0": exercise
#import exercise: project


#show: project.with(
    title: [Assignment 1],
    seminar: [Math136],
    faculty: [George McNinch],
    semester: [Spring 2026, Tufts University],
    date: [due: 2026-01-23]
)

#import "@preview/ctheorems:1.1.3": *
#show: thmrules


#let st(content) = context {
  let width = measure(content).width
  box[
    #content
    #place(
      dy: -3pt,
      line(stroke: .5pt, length: width)
    )
  ]
}

#let fitz = [[Fitzpatrick]]

// #let problem = thmbox("problem", "Problem", base_level: 0, fill: rgb("#4d9bdb25"))
#let problem = thmbox("problem", "Problem", base_level: 0, fill: rgb("#155DFC33"))

#let vec(x) = $arrow(#x)$

#let solution(id,arg) = box(
    fill: rgb("#faebd7"),
    width: 100%,
    inset: 15pt,
    [*Solution for #id*:] +
    linebreak() + 
    arg
  )




// #let problem = thmbox("problem", "Problem", base_level: 0, fill: rgb("#4d9bdb25"))
#let problem = thmbox("problem", "Problem", base_level: 0, fill: rgb("#155DFC33"))



#set enum(numbering: "a.")  

sections of [Fitzpatrick] covered: $section: 13.1, 13.2, 13.3$

#problem[ Let $f:RR^2 -> RR$ be defined by $ f(x,y) = cases(x y slash
    (x^2 + y^2) "if" (x,y) eq.not (0,0), 0 "else"). $

    We saw in the lecture that $f_x = partial f slash partial x$ and
    $f_y = partial f slash partial y$ exist. Show that neither $f_x$
    nor $f_y$ is continuous at the point $(0,0)$.  ]

#problem[ Suppose that $g:RR^3 -> RR$ has the property that $
    abs(g(x,y,z) ) <= x^2 + y^2 + z^2 "for all" (x,y,z) in RR^3. $
    Prove that $partial g slash partial x$, $partial g slash partial
    y$ and $partial g slash partial z$ all exist at $(0,0,0)$.  ]

#problem[ Let $U$ be an open subset of $RR^3$ and let $g:U -> RR$ be a
    function which has first-order partial derivatives at each point
    $arrow(x) in U$. Recall that the _gradient_ of $g$ is the function
    $ nabla g:U -> RR^3 "given by" (nabla g)(x,y,z)= (g_x (x,y,z), g_y
    (x,y,z), g_z (x,y,z) ); $ more succinctly, $nabla g =
    (g_x,g_y,g_z).$

    Let’s just consider the case $U = RR^3$, so $g:RR^3 -> RR$ has
    first order partial derivatives at every point $vec(x) in RR^3$.
    
    Prove: if $(nabla g)(arrow(x))= 0$ for every $arrow(x) in RR^3$
    then $g$ is _constant_; i.e. there is $c in RR$ with $g(arrow(x))
    = c$ for every  $arrow(x) in RR^3$.  ]

#problem[*(Chain Rule)* Let $U$ an open subset of $RR^3$ containing
    the point $arrow(x)$, and $f:U -> RR$ a function for which the
    partial derivative $f_x (arrow(x))$ exists.

    Suppose that $g:RR -> RR$ is differentiable at the point
    $f(arrow(x))$.

    Prove that the function $g compose f:U -> RR$ has a partial
    derivative with respect to $x$ and that $ (partial )/(partial x)
    (g compose f) ( arrow(x)) = g'(f(arrow(x))) dot f_x (arrow(x)). $
    ]


    
#problem[ Find the gradient $nabla f$ for each of the following
    functions.

    + $f:RR^n -> RR$ given by $f(arrow(x)) = e^abs(arrow(x))^2 =
      exp(abs(arrow(x))^2)$
    
    + $f:RR^2 -> RR$ given by $f(arrow(x)) = sin( x y) slash sqrt(x^2
      + y^2 + 1). $ ]

#problem[ Assume that $U$ is an open subset of $RR^3$ and that $f,g:U
    -> RR$ are continuously differentiable. For $arrow(x) in U$, find
    a formula for $nabla (f g)(arrow(x))$ in terms of $nabla
    f(arrow(x))$ and $nabla g(arrow(x))$.  ]

#problem[ Assume that $U$ is an open subset of $RR^3n$, that $f:U ->
    RR$ and $g:RR -> RR$ are continuously differentiable. For
    $arrow(x) in U$ find a formula for $nabla (g compose f)(arrow(x))$
    in terms of $nabla f(arrow(x))$ and $g'(f(arrow(x)))$.  ]

#problem[ Let $ f:RR^2 -> RR "be given by" f(x,y) = cases((x slash
    abs(y)) dot sqrt(x^2 + y^2) "if" y eq.not 0, 0 "if" y = 0). $

    + Prove that $f$ is not continuous at $arrow(0)$.

    + Prove that the directional derivative $display((partial f)/(partial vec(p))(0,0))$
      is defined for all $vec(0) eq.not vec(p) in RR^2$.

    + Prove that for each $c in RR$ there is a vector $arrow(p) in
      RR^2$ with $abs(arrow(p)) = 1$ such that $ (partial f) /
      (partial arrow(p)) (arrow(0)) = c. $


      Explain why this observation does not contradict Corollary 13.18
      in [Fitzpatrick].

]
