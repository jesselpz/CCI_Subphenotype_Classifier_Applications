## ----cool, results='asis'-----------------------------------------------------
library(knitr)
kable(mtcars, 'html', table.attr='id="mtcars_table"')

## -----------------------------------------------------------------------------
options(markdown.html.header = system.file('misc', 'datatables.html', package = 'knitr'))

## ----boring, results='asis'---------------------------------------------------
kable(head(mtcars), 'html')

