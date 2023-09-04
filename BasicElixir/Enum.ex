users = [
  {"Lucas", "Developer"},
  {"Maria", "Developer"},
  {"João", "Developer"},
  {"Carlos", "Developer"},
  {"Sophia", "Developer"},
  {"Jonas", "Developer"}
]

mapping = Enum.map(mappingDeveloperers, fn {dev, job} -> IO.puts("#{dev} #{job}") end)


IO.inspect(mappingDeveloperers)

name = users |> hd()
IO.puts(name)
