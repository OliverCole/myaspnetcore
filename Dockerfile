FROM microsoft/aspnetcore-build:1.1.2
ENV ASPNETCORE_URLS=http://+:8001
EXPOSE 8001
COPY . /opt/app
WORKDIR /opt/app
RUN dotnet restore
CMD dotnet run
