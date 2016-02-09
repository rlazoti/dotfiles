# linux
if [[ "$OSTYPE" = *linux* ]] then
   export SCALA_PATH=$HOME/Programs/scala
   export M2_HOME=$HOME/Programs/apache-maven

   export PATH=$SCALA_PATH/bin:$PATH
   export PATH=$M2_HOME/bin:$PATH
	 export PATH=$HOME/.rvm/bin:$PATH

# macos
else
		export PATH=$HOME/.rbenv/shims:$PATH
fi

# shared
export EDITOR="emacs -nw --no-splash"
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin
