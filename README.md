<p align="right">
  <img src="https://img.shields.io/github/stars/diegoulloao/ioquake3-mac-install?color=red&style=for-the-badge" />
</p>

<p align="center">
  <img src="https://github.com/diegoulloao/ioquake3-mac-install/raw/master/logo.png" alt="ioQuake3 Arena" width="560"/>
</p>

---

> [!IMPORTANT]
> This is an [unofficial](#) ioquake3 version.
>
> Please do not report issues in the ioquake3 official repository.</a> This project is not related to them and is totally independent.

<br/>

 **macOs M1 support**

# Requirements 📋

- macOs version `10.9` or later
- Compatible with `arm64` and `x64/32` processors

# Installation ✨

**ioquake3** for macOs is installed by running 1 command:

```sh
curl -L git.io/ioq3mac-dev | sh
```

This is an Universal compilation and it will work for both `arm64` and `x64/32` processors.

# Uninstalling ⭕

The following command will remove all the files:

```sh
rm -rf ~/Library/Application\ Support/Quake3 /Applications/ioquake3
```

# Adding extras 🚀

Open the folder and add your files in:

```sh
open ~/Library/Application\ Support/Quake3
```

<details>
    <summary>Tip: Adding an alias to the system 💡</summary>

<br />

Alternatively you can add an alias to `.bashrc` or `.zshrc`:

```sh
alias q3folder="open ~/Library/Application\ Support/Quake3"
```

Then is available for use:

```sh
q3folder
```

</details>

# Packages 📦

All packages and improvements are listed here:

| package                       | description                                    |
| ----------------------------- | ---------------------------------------------- |
| ioquake3 1.36 for macOs       | Quake3 arena (improved engine) for macOs v1.36 |
| ioquake3 latest pk3 files     | Latest pk3 files (point release patches)       |
| CPMA 1.52                     | Challenge pro mode arena mod v1.52             |
| CPMA Map Pack                 | Set of maps and dependencies for CPMA          |
| High Resolution Textures Pack | High resolution textures                       |
| Complementary HQ Textures     | Complementary textures in high quality         |
| Quake 3 Live Sounds Pack      | Quake3 live audios + high quality sounds       |
| **`NEW`** Quake 3 HD Weapons  | Quake3 new 2019 weapons re-textures            |

# Information 💎

`Last Update: 2023/12/18`

The ioquake3.app here included was **directly compiled** from the [ioquake3 source code](https://github.com/ioquake/ioq3) repository.

It includes commits to date **Nov. 22, 2023**.

["OpenGL2: Fix updating the loading screen with r_cubeMapping 1"](https://github.com/ioquake/ioq3/tree/972635ea5a3d1057d9a958c2cb1815dff05ab33b)

# Troubleshooting ⚡️

#### `1. ioquake3.app can't be opened because it is from an unidentified developer`

Open Privacy and Settings:

`System Preferences > Security & Privacy Settings`

And click the button _"open anyway"_.

**Read more about: [http://support.apple.com/kb/HT5290](http://support.apple.com/kb/HT5290)**

# Q&A ❔

#### What is this?

`ioquake3-mac-install` pretends to be **the one unified and most simply way** to install quake3 arena on mac computers.
This includes **a lot of improvements** like high quality textures, improved sounds, most knowed mods, etc.

#### What is the ioquake3 engine?

Please visit: https://ioquake3.org/

# Development 💻

You can visit my personal website: https://diegoulloa.dev/

# Licence 📄

Licensed **MIT**: [LICENSE](https://github.com/diegoulloao/ioquake3-mac-install/blob/master/LICENSE)

---

**diegoulloao · 2024**
