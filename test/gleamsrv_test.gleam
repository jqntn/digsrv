import gleam/bytes_tree
import gleam/http/request
import gleamsrv
import gleeunit
import mist

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn handle_test() -> Nil {
  let res = gleamsrv.handle(request.new())
  assert res.status == 200
  assert res.body == mist.Bytes(bytes_tree.from_string("Hello, world!"))
}
