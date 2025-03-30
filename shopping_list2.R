shopping_list <- function(item, quantity_home, quantity_needed, price) {
  structure(
    list(
      item = as.character(item),
      quantity_home = as.numeric(quantity_home),
      quantity_needed = as.numeric(quantity_needed),
      price = as.numeric(price)
    ),
    class = "shopping_list"
  )
}

mylist <- shopping_list(
  item = c("tej", "kenyér", "tojás", "tészta", "pesto"),
  quantity_home = c(0, 0, 0, 1, 0),
  quantity_needed = c(3, 1, 6, 1, 2),
  price = c(360, 950, 640, 400, 850)
)

buynext <- function(x) {
  UseMethod("buynext")
}

buynext.shopping_list <- function(x) {
  min_qty_home <- min(x$quantity_home)
  items_min_qty <- x$item[x$quantity_home == min_qty_home]
  if (length(items_min_qty) > 1) {
    if (all(x$quantity_home == x$quantity_needed)) {
      min_price <- min(x$price)
      items_min_price <- x$item[x$price == min_price]
      return(items_min_price)
    }
  }
  return(items_min_qty)
}  

buynext(mylist)