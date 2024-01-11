
func = fn
  {:ok, result} -> "Success: #{result}"
  {:error, reason} -> "Error: #{reason}"
end


IO.puts func.({:ok, "%{name: Lucas}"})
IO.puts func.({:error, "User not found!"})
