my_list <- function(item, quantity_home, quantity_needed, price) {
  structure(
    list(
            item = item,
            quantity_home = quantity_home,
            quantity_needed =quantity_needed,
            price = price
  ),
  class = "my_list"
)
}

a <- my_list(
  item = "tej",
  quantity_home = "1 l",
  quantity_needed = "2 l",
  price = "360 ft")

pr