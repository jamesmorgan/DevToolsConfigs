$env:MAVEN_OPTS = "-Xms768m -Xmx1024m -XX:MaxPermSize=512m -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=400,server=y,suspend=n";
echo "Added Debug Variable"
[Environment]::GetEnvironmentVariable("MAVEN_OPTS","User")
mvncs.bat