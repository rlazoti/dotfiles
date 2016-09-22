# linux
if [[ "$OSTYPE" = *linux* ]] then
   export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
   export SCALA_PATH=$HOME/Programs/scala
   export M2_HOME=$HOME/Programs/apache-maven
   export SWIFT_PATH=$HOME/Programs/swift/usr
   export GRADLE_PATH=$HOME/Programs/gradle
   export FLINK_HOME=$HOME/Programs/flink

   export PATH=$FLINK_HOME/bin:$PATH
   export PATH=$SWIFT_PATH/bin:$PATH
   export PATH=$SCALA_PATH/bin:$PATH
   export PATH=$M2_HOME/bin:$PATH
   export PATH=$HOME/.rvm/bin:$PATH
   export PATH=$GRADLE_PATH/bin:$PATH

# macos
else
    export PATH=$HOME/.rbenv/shims:$PATH
    export PATH=$HOME/.rvm/bin:$PATH
    export PATH=/usr/local/sbin:$PATH
    export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
fi

# shared
export EDITOR="emacs -nw --no-splash"
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin
