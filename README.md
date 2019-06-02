# Maven Artifacts

This repository is the poor man's maven repository.

It should contains only artifacts that I publish on my own repositories, but for which I don't have an external repository such as Sonatype (I don't want to use it).

## Configuring child pom / settings

Add these lines to the repository:

```
  <repositories>
    <repository>
      <id>github-maven-parent</id>
      <url>https://raw.githubusercontent.com/glhez/maven-repository/master/releases/</url>
    </repository>
  </repositories>
```

## Configuring Nexus repository

This option is better for various reasons: if I take the courage to upload my artifacts on Sonatype or another repository manager, you would have only to change the local repository.

- Create a new proxy repository pointing to `https://raw.githubusercontent.com/glhez/maven-repository/master/releases`
- Disable _Auto blocking_: Github does not list directories.
- Add the new repository to a group (for example, public)
- Ensure the group is used rather than the repository.
