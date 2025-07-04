#let width = 5in
#let height = 5in
#set page(width: width, height: height, margin: (top: 1em, rest: 0em))

#align(center)[
  #text(40pt)[
    *BINGO*
  ]
]


#let terms = (
  "Ambrosia",
  "Harpoon",
  "Hammer",
  "Octopus",
)

#let n = 5
#let bingo-function(i) = {
  // set text(20pt)
  align(center + horizon)[
    #if i == calc.floor(n * n / 2) [Free] else [#terms.at(calc.rem(i, terms.len()))]
  ]
}

#v(1em)

#place(center)[
  #table(
    columns: n * (0.8 * width / n,),
    rows: n * (0.8 * width / n,),
    ..range(n * n).map(bingo-function)
  )
]
