import System.IO

main :: IO ()
main = do
  todoItem <- getLine
  appendFile "src/chap9/sec3/todo.txt" (todoItem ++ "\n")
