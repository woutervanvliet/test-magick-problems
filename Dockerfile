# Works on alpine3.14
FROM mcr.microsoft.com/dotnet/sdk:3.1-alpine3.14
# Fails on alpine3.15
# FROM mcr.microsoft.com/dotnet/sdk:3.1-alpine3.15

WORKDIR /app
COPY magick.csproj /app
RUN dotnet restore

COPY *.* /app

RUN dotnet build
RUN dotnet publish
CMD ["dotnet", "run", "--no-build"]
