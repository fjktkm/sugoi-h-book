import System.IO

main :: IO ()
main = do
  todoItem <- getLine
  appendFile "src/sec9/subsec3/todo.txt" (todoItem ++ "\n")
