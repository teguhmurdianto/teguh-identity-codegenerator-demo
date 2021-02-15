#rm -rf Teguh.Identity.Codegen

dotnet new mvc --name Teguh.Identity.Codegen

cd Teguh.Identity.Codegen

dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design --version 3.1.5
dotnet add package Microsoft.EntityFrameworkCore.Design --version 3.1.12
dotnet add package Microsoft.AspNetCore.Identity.EntityFrameworkCore --version 3.1.12
dotnet add package Microsoft.AspNetCore.Identity.UI --version 3.1.12
dotnet add package Microsoft.EntityFrameworkCore.Tools --version 3.1.12
dotnet add package Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore --version 3.1.12

dotnet add package Microsoft.EntityFrameworkCore.InMemory --version 3.1.12
dotnet add package Microsoft.EntityFrameworkCore.Sqlite --version 3.1.12

dotnet aspnet-codegenerator identity --dbContext ApplicationDbContext --useSqLite --force
