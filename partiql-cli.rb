class PartiqlCli < Formula
    desc "PartiQL CLI."
    homepage "https://partiql.org/"
    url "https://github.com/partiql/partiql-lang-kotlin/releases/download/v1.2.0/partiql-cli-1.2.0.tgz"
    sha256 "d6014ca4b06bd31f4e03850aaf2ba0b01e94bc0f556bbdf9e90615b5883b1f01"
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
