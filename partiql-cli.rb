class PartiqlCli < Formula
    desc "PartiQL CLI."
    homepage "https://partiql.org/"
    url "https://github.com/partiql/partiql-lang-kotlin/releases/download/v1.4.0/partiql-cli-1.4.0.tgz"
    sha256 "9765c59a9f2977890585a8c4c5d698264bf85344c504e2079576822b2eee7b1f"
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