// Enable the sbt-dependency-graph plugin
// net.virtualvoid.sbt.graph.Plugin.graphSettings

// Ensime global configs
import org.ensime.EnsimeKeys._
ensimeIgnoreMissingDirectories in ThisBuild := true

// You always want the console cleaned at the the start of each run:
triggeredMessage in ThisBuild := Watched.clearWhenTriggered

// When you run an application and CTRL-C it, it’s annoying if that exits sbt. Prevent that with:
cancelable in Global := true

// Add Twitter repo to resolvers
externalResolvers := {
  ("Twitter Repo" at "https://maven.twttr.com") +:
  externalResolvers.value
}

credentials += Credentials(Path.userHome / ".sbt" / ".credentials")
