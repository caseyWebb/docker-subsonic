![subsonic](https://i.goopics.net/lr.png)

# docker-subsonic

[Subsonic](http://www.subsonic.org/pages/index.jsp) organizes music in your personal library and lets you stream it anywhere. This container is packaged as a standalone Subsonic server, and it is based on linuxserver.io's [base image](https://hub.docker.com/r/linuxserver/baseimage/).

## Usage

```bash
$ docker create \
    --name=subsonic \
    -p 4040:4040 \
    -e PUID=<UID> -e PGID=<GID> \
    -v config:/config \
    -v </path/to/music>:/music \
    -v </path/to/podcasts>:/podcasts \
    -v </path/to/playlists>:/playlists \
    caseywebb/subsonic
```

#### User / Group Identifiers
*shamelessly taken from [linuxserver.io](linuxserver.io)*

Sometimes when using data volumes (-v flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user PUID and group PGID. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" TM.

In this instance PUID=1001 and PGID=1001. To find yours use id user as below:

```bash
$ id <dockeruser>
  uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```
