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

 **apple silicon support**

![cover](https://github.com/diegoulloao/ioquake3-mac-install/blob/master/screenshots/cover.png?raw=true)

# Requirements 📋

- macOs version `10.9` or later
- Compatible with `arm64` and `x64/32` processors

# Installation ✨

**ioquake3** for macOs is installed by running 1 command:

```sh
curl -L git.io/ioq3mac | sh
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

| package                                | description                              |
| -------------------------------------- | ---------------------------------------- |
| ioquake3 for macOs                     | Quake3 arena (improved engine) for macOs |
| ioquake3 latest pk3 files              | Latest pk3 files (point release patches) |
| **`NEW`** CPMA 1.53                    | Challenge pro mode arena mod v1.53       |
| CPMA Map Pack                          | Set of maps and dependencies for CPMA    |
| High Resolution Textures Pack          | High resolution textures                 |
| Complementary HQ Textures              | Complementary textures in high quality   |
| Quake 3 Live Sounds Pack               | Quake3 live audios + high quality sounds |
| **`NEW`** Quake 3 HD Weapons           | Quake3 new 2019 weapons re-textures      |
| **`NEW`** Quake 3 Weapons Replacements | Replacements for RL, RG and GL weapons   |

# Information 💎

`Last Update: 2023/12/18`

The ioquake3 app here included was **compiled directly** from the [ioquake3 source code](https://github.com/ioquake/ioq3) repository.

It includes commits to date **Nov. 22, 2023**.

["OpenGL2: Fix updating the loading screen with r_cubeMapping 1"](https://github.com/ioquake/ioq3/tree/972635ea5a3d1057d9a958c2cb1815dff05ab33b)

# Troubleshooting ⚡️

### `1. ioquake3.app can't be opened`

You may face this warning:

> ioquake3.app can't be opened because it is from an unidentified developer

Open Privacy and Settings:

`System Preferences > Security & Privacy Settings`

And click the button "open anyway".

**Read more about: [http://support.apple.com/kb/HT5290](http://support.apple.com/kb/HT5290)**

### `2. fullscreen does not fill the screen`

Try running the following commands inside the quake3 console:

```
/seta r_customwidth "screen_width"
/seta r_customheight "screen_height"
/seta r_fullscreen "1"
/seta r_mode "-1"
/vid_restart
```

# Q&A ❔

### What is this?

`ioquake3-mac-install` pretends to be **the one unified and most simply way** to install quake3 arena on mac computers.
This includes **a lot of improvements** like high quality textures, improved sounds, most knowed mods, etc.

### What is the ioquake3 engine?

Please visit: https://ioquake3.org/

# Development 💻

You can visit my personal website: https://diegoulloa.dev/

# Related projects 🔥

### `ioquake3-server-gcloud`

"The fastest way to deploy your own ioquake3 server using docker, kubernetes and google cloud".
https://github.com/diegoulloao/ioquake3-server-gcloud

**Deploy a quake3 server to Google Cloud in 1 command!**

# Licence 📄

Licensed **MIT**: [LICENSE](https://github.com/diegoulloao/ioquake3-mac-install/blob/master/LICENSE)

---

**diegoulloao · 2024**
