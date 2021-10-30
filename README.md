# [LPMC](https://github.com/developomp/LPMC)

> **THIS PROJECT IS A WORK IN PROGRESS**

[![LICENSE: MIT](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)
[![SHELL FORMATTER: SHFMT](https://img.shields.io/badge/shell_formatter-shfmt-darkgrey?style=for-the-badge)](https://github.com/mvdan/sh)
[![MARKDOWN & YML FORMATTER: PRETTIER](https://img.shields.io/badge/markdown_&_yml_formatter-pretiier-ff69b4?style=for-the-badge)](https://github.com/prettier/prettier)

## Updating

> **THIS IS NOT A SETUP INSTRUCTION.**

- version: 1.17.1
- seed: `-4172144997902289642` for all worlds (yeah it's 2b2t seed)
- platform: ubuntu 20.04 on ARM processor and username set to ubuntu.
- working directory is project root (`/home/ubuntu/LPMC`).
- scripts are executed with user permission and **NOT** with root permission.
- worlds should already exist in the [servers](./servers) directory.

### 1. Download waterfall

1. [Download](https://papermc.io/downloads#Waterfall) the latest version of waterfall. (latest version as of writing: 451)
2. Put it in project root (no need to rename it)

### 2. Download paper

1. [Download](https://papermc.io/downloads#Paper-1.17) the latest version of paper version 1.17.1. (latest version as of writing: 353)
2. Put it in the [`master`](./master) directory.

### 3. Download plugins

- Put them in the [`master`](./master) directory.

|                                                                                                                Plugin | Documentation                                                         |
| --------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------- |
|                                                      [EssentialsX](https://dev.bukkit.org/projects/essentialsx/files) | [Documentation](https://essentialsx.net/wiki/Home.html)               |
|                                                        [DiscordSRV](https://dev.bukkit.org/projects/discordsrv/files) | [Documentation](https://docs.discordsrv.com)                          |
|                                                     [Core Protect](https://dev.bukkit.org/projects/coreprotect/files) | [Documentation](https://docs.coreprotect.net)                         |
|                                                       [World Guard](https://dev.bukkit.org/projects/worldguard/files) | [Documentation](https://worldguard.enginehub.org/en/latest)           |
|                                                         [World Edit](https://dev.bukkit.org/projects/worldedit/files) | [Documentation](https://worldedit.enginehub.org/en/latest)            |
|                                    [Holographic Displays](https://dev.bukkit.org/projects/holographic-displays/files) | [Documentation](https://filoghost.me/docs/holographic-displays)       |
|                            [Illegal Stack](https://www.spigotmc.org/resources/dupe-fixes-illegal-stack-remover.44411) | [Documentation](https://github.com/dniym/IllegalStack/wiki)           |
|                                                [Skin Restorer](https://www.spigotmc.org/resources/skinsrestorer.2124) | [Documentation](https://github.com/SkinsRestorer/SkinsRestorerX/wiki) |
| [Stack Mob](https://www.spigotmc.org/resources/stackmob-enhance-your-servers-performance-without-the-sacrifice.29999) |                                                                       |

## Commands & Scripts

Create systemd files:

```
./scripts/systemd.sh
```

Start/Stop using systemd:

```
sudo systemctl <start|stop> <lpmc_waterfall|lpmc_lobby|lpmc_smp>
```

Start server manually (<kbd>ctrl</kbd>+<kbd>C</kbd> to stop)

```
./scripts/start.sh <waterfall|lobby|smp>
```

Update plugins and stuff:

```
./scripts/update.sh
```

## Tools

- [Editing chunks](https://github.com/Amulet-Team/Amulet-Map-Editor)
- [Editing NBT files](https://marketplace.visualstudio.com/items?itemName=Misodee.vscode-nbt)
- [World inspection](https://github.com/toolbox4minecraft/amidst)
- [3D model extraction](https://github.com/erich666/Mineways)

## todo

- rules
  - no grief
  - be responsible
  - break rule = ban

## Related projects

- [LPMC website](https://github.com/developomp/lpmc.developomp.com)
