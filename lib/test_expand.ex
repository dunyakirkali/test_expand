defmodule TestExpand do
  def hello do
    {result, _} =
      String.__info__(:functions)
      |> Expand.it()
      |> Code.eval_string()

    result
    |> Keyword.keys()
  end
end
