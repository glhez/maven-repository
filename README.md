# Maven Artifacts

This repository is the poor man's maven repository.

It should contains only artifacts that I publish on my own repositories, but for which I don't have an external repository such as Sonatype (I don't want to use it).

## Before reading more...

I advise you to clone this repositories rather than depends on it. While it is fine for test, it is bad for long term build as changes here may break your build and you don't want that.

## Configuring child pom / settings

For artifacts, you may add this repository to your existing repositories:

```
  <repositories>
    <repository>
      <id>github-maven-parent</id>
      <url>https://glhez.github.io/maven-repository/releases/</url>
    </repository>
  </repositories>
```

For plugins, such as my fork of [eclipse-settings-maven-plugin][3], you must add them to `pluginRepository`:

```

  <pluginRepositories>
    <pluginRepository>
      <id>github-maven-parent</id>
      <url>https://glhez.github.io/maven-repository/releases/</url>
    </pluginRepository>
  </pluginRepositories>
```

More information here:

- [settings.xml][1]
- [Plugin Repositories][2]

## Configuring Nexus repository

This option is better for various reasons: if I take the courage to upload my artifacts on Sonatype or another repository manager, you would have only to change the local repository.

- Create a new proxy repository pointing to `https://glhez.github.io/maven-repository/releases`
- Disable _Auto blocking_: Github does not list directories.
- Add the new repository to a group (for example, public)
- Ensure the group is used rather than the repository.

## Site

You may also browse site generated during project release:

- [com.github.glhez.parent](site/com.github.glhez.parent)
- [eclipse-settings-maven-plugin](site/eclipse-settings-maven-plugin)

[1]: http://maven.apache.org/settings.html#Plugin_Repositories
[2]: https://maven.apache.org/pom.html#Plugin_Repositories
[3]: https://github.com/glhez/eclipse-settings-maven-plugin

