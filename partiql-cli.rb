class PartiqlCli < Formula
    desc "PartiQL CLI."
    homepage "https://partiql.org/"
    url "https://github.com/partiql/partiql-lang-kotlin/releases/download/v1.1.0/partiql-cli-1.1.0.tgz"
    sha256 "8aba2e1d9a507906069ec4e00203348c24ede005086623adb98555ba7641258c"
    license "Apache-2.0"
    depends_on "openjdk"
  
    def install
        libexec.install Dir["*"]
        (bin/"partiql").write <<~EOS
            #!/bin/bash
            APP_HOME="#{libexec}"
            CLASSPATH=$(echo $APP_HOME/lib/*.jar | tr ' ' ':')
            JAVA_CMD="java"
            exec "$JAVA_CMD" -classpath "$CLASSPATH" org.partiql.cli.Main "$@"
        EOS
    end 
end
