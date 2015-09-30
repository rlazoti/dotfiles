export JENV_HOME=$HOME/.jenv

if [[ "$OSTYPE" = *linux* ]] then
   export SCALA_PATH=$HOME/Programs/scala
	 export M2_HOME=$HOME/Programs/apache-maven

   export PATH=$SCALA_PATH/bin:$PATH
	 export PATH=$M2_HOME/bin:$PATH
fi

export EDITOR="emacs -nw --no-splash"

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.rvm/bin:$PATH
export PATH=$JENV_HOME/bin:$PATH
export PATH=$PATH:~/bin
