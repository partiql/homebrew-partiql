class PartiqlCli < Formula
    desc "PartiQL CLI."
    homepage "https://partiql.org/"
    url "https://github.com/partiql/partiql-lang-kotlin/releases/download/v1.0.0/partiql-cli-1.0.0.tgz"
    sha256 "e9ec5f3dce7d81566f61af76e0ebe09fce698b9c5d4a9ab22e575509a44006b3"
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
