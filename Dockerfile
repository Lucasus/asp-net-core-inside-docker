FROM microsoft/aspnet:1.0.0-rc1-update1-coreclr

ADD /asp-src /app/
WORKDIR /app/src/AspCorePoC
RUN ["dnu", "restore"]

EXPOSE 5000
ENTRYPOINT ["dnx", "-p", "project.json", "web"]