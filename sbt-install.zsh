echo "remove old sbt files..."
rm -rf ~/.sbt/0.13/plugins
rm ~/.sbt/0.13/global.sbt

echo "install sbt files..."
ln -s ~/.terminal/sbt/plugins ~/.sbt/0.13/plugins
ln -s ~/.terminal/sbt/global.sbt ~/.sbt/0.13/global.sbt

echo "done. Have fun! :)"
