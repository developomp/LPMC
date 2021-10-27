# LPMC

> **THIS PROJECT IS A WORK IN PROGRESS**

[![LICENSE: MIT](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)
[![SHELL FORMATTER: SHFMT](https://img.shields.io/badge/shell_formatter-shfmt-darkgrey?style=for-the-badge)](https://github.com/mvdan/sh)
[![MARKDOWN & YML FORMATTER: PRETTIER](https://img.shields.io/badge/markdown_&_yml_formatter-pretiier-ff69b4?style=for-the-badge)](https://github.com/prettier/prettier)

## Setup

version: 1.17.1

assumptions:

- platform: ubuntu 20.04 on ARM processor and username set to ubuntu.
- working directory is project root.
- scripts are executed with user permission and **NOT** with root permission.

### 1. Download waterfall

1. [Download](https://papermc.io/downloads#Waterfall)
2. Put the .jar file in project root (no need to rename it)

### 2. Download paper

1. [Download](https://papermc.io/downloads#Paper-1.17)
2. Put it in [`master`](./master) directory

### 3. Download plugins

|                                                                                                                Plugin |         Description          | Documentation                                        |
| --------------------------------------------------------------------------------------------------------------------: | :--------------------------: | :--------------------------------------------------- |
|                                                            [EssentialsX](https://dev.bukkit.org/projects/essentialsx) |                              | https://essentialsx.net/wiki/Home.html               |
|                                                                      [Dynmap](https://dev.bukkit.org/projects/dynmap) |                              | https://github.com/webbukkit/dynmap/wiki             |
|                                                     [Core Protect](https://dev.bukkit.org/projects/coreprotect/files) |   Logging & Anti-griefing    | https://docs.coreprotect.net                         |
|                                                       [World Guard](https://dev.bukkit.org/projects/worldguard/files) |                              | https://worldguard.enginehub.org/en/latest           |
|                                    [Holographic Displays](https://dev.bukkit.org/projects/holographic-displays/files) |      Text without signs      | https://filoghost.me/docs/holographic-displays       |
|                            [Illegal Stack](https://www.spigotmc.org/resources/dupe-fixes-illegal-stack-remover.44411) |   patch dupes and exploits   | https://github.com/dniym/IllegalStack/wiki           |
|                                                  [Lock Login](https://www.spigotmc.org/resources/gsa-locklogin.75156) |     user authentication      | https://github.com/KarmaConfigs/LockLoginReborn/wiki |
|                                              [Login Security](https://www.spigotmc.org/resources/loginsecurity.19362) |     user authentication      | https://github.com/lenis0012/LoginSecurity-2/wiki    |
|                                                    [ProtocolLib](https://www.spigotmc.org/resources/protocollib.1997) |                              | https://github.com/dmulloy2/ProtocolLib/wiki         |
|                                                [Skin Restorer](https://www.spigotmc.org/resources/skinsrestorer.2124) | skin in offline-mode servers | https://github.com/SkinsRestorer/SkinsRestorerX/wiki |
| [Stack Mob](https://www.spigotmc.org/resources/stackmob-enhance-your-servers-performance-without-the-sacrifice.29999) |    lower lag due to mobs     |                                                      |
|                                                                 [Multiple worlds](https://ci.md-5.net/job/BungeeCord) |                              |                                                      |
|                                              [Server Monitoring](https://www.spigotmc.org/resources/lagmonitor.21348) |                              |                                                      |
|                                                         [World Edit](https://dev.bukkit.org/projects/worldedit/files) |                              | https://worldedit.enginehub.org/en/latest            |

### 4. Generat worlds

seed: `-4172144997902289642` for all worlds (yeah it's 2b2t seed)

### 5. Start servers

## Tools

|             Usage | URL                                       |
| ----------------: | :---------------------------------------- |
|    Editing chunks | https://github.com/Podshot/MCEdit-Unified |
| Editing NBT files | https://github.com/jaquadro/NBTExplorer   |
|     Editing world | https://www.universalminecrafteditor.com  |

## todo

- destruction protection for main server
  - spawn region
- no escape from hub chunks
- plugin for on member join
- file size monitor
- player count monitor
- tps monitor
- faction to anarchy
- site
  - how to join
  - server guide
  - screen shots (gallery)
  - server stat
    - tps
    - player per world and total
    - status (online/offline)

## Related projects

- [LPMC website](https://github.com/developomp/lpmc.developomp.com)
