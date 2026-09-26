import gleam/bytes_tree
import gleam/erlang/process
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}
import mist.{type ResponseData}

pub fn main() -> Nil {
  let assert Ok(_) =
    mist.new(handle)
    |> mist.bind("0.0.0.0")
    |> mist.port(4000)
    |> mist.start
  process.sleep_forever()
}

pub fn handle(_req: Request(a)) -> Response(ResponseData) {
  response.new(200)
  |> response.set_body(mist.Bytes(bytes_tree.from_string("Hello, world!")))
}
