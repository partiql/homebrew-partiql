class PartiqlCli < Formula
    desc "PartiQL CLI."
    homepage "https://partiql.org/"
    url "https://github.com/partiql/partiql-lang-kotlin/releases/download/v1.2.2/partiql-cli-1.2.2.tgz"
    sha256 "fc4b1508f1caec6522993e83d626ae0da619f42132f73c1f9ef389437862681b"
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