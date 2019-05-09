FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch AS build
WORKDIR /src
COPY ["src/MyCoreWebTest/MyCoreWebTest.csproj", "MyCoreWebTest/"]
RUN dotnet restore "MyCoreWebTest/MyCoreWebTest.csproj"
COPY src/MyCoreWebTest/ .


FROM build AS publish
RUN dotnet publish  -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "MyCoreWebTest.dll"]