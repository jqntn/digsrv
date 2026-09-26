import gleamsrv
import gleeunit

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn greet_test() -> Nil {
  assert gleamsrv.greet("Joe") == "Hello, Joe!"
}
