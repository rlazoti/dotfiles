echo "remove old sbt files..."
rm -rf ~/.sbt/1.0/plugins
rm ~/.sbt/1.0/global.sbt

echo "install sbt files..."
ln -s ~/.terminal/sbt/plugins ~/.sbt/1.0/plugins
ln -s ~/.terminal/sbt/global.sbt ~/.sbt/1.0/global.sbt

echo "done. Have fun! :)"
