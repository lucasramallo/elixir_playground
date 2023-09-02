users = ["Lucas", "Maria", "João", "Carlos", "Sophia", "Jonas"]

mappingUsers = Enum.map(users, fn user -> "Name: " <> user end)

IO.inspect(mappingUsers)
