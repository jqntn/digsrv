import gleam/io

pub fn main() -> Nil {
  io.println(greet("world"))
}

pub fn greet(name: String) -> String {
  "Hello, " <> name <> "!"
}
