users = ["Lucas", "Maria", "João", "Carlos", "Sophia", "Jonas"]
jobs = ["Developer", "Developer", "Developer", "Developer", "Developer", "Developer", ]

mappingDeveloperers = Enum.zip(users, jobs)
mapping = Enum.map(mappingDeveloperers, fn {user, job} -> "Name: #{user}, Job: #{job}" end)

#mappingDeveloperers = Enum.zip(users, jobs)
#|> Enum.map(fn {user, job} -> "Name: #{user}, Job: #{job}" end)

IO.inspect(mapping)
