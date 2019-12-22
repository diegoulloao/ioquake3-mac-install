Read this in [english](https://github.com/diegoulloao/ioquake3-mac-install/blob/master/README.md) (en)
· · ·

<p align="center">
  <img src="https://github.com/diegoulloao/ioquake3-mac-install/raw/master/logo.png" alt="ioQuake3 Arena"/>
</p>

# Instala ioquake3 en macOS
- [x] **Ahora compatibilidad con Catalina!**

### - **Instala ioquake3 (64-bits) más mejoras con un solo comando!**

## Instalación

**Copia y pega directamente en tu Terminal:**

```
curl -L https://git.io/ioq3mac | sh
```

**Listo!**

Sólo tomará unos minutos. Espera hasta que el proceso se complete ...

**_( Probablemente requiera permisos de administrador)_**

## Para remover
**Sólo ejecuta:**
```
rm -rf ~/Library/Application\ Support/Quake3 /Applications/ioquake3
```

## Cómo extender
**Para extender** ioquake _(con un mod por ej)_ puedes simplemente **ejecutar en terminal:**
```
open ~/Library/Application\ Support/Quake3 /Applications/ioquake3
```
Y luego arrastrar los archivos necesarios.

---

## De qué se trata?
**"ioquake3 mac install"** pretende ser **la solución unificada y más simple** de instalar quake 3 arena (con motor ioquake3 mejorado) en computadoras mac.

Incluye además **cantidad de mejoras** como texturas de alta resolución, sonidos mejorados, mods más conocidos, etc.

**Y puedes tenerlo funcionando con un solo comando!**

---
_**Qué es el motor ioquake3 mejorado?**_

_Para más información acerca de este grandioso proyecto, por favor visita:_

_https://ioquake3.org/_

---

## Requerimientos

* macOS (64-bits)

**_( sólo probado en Mojave y Catalina )_**

## Contenido paquete

* [ioQuake3 1.36 for macOS](https://github.com/diegoulloao/ioquake3-mac-install/raw/master/dependencies/ioquake3-1.36-x64.zip) - Quake3 Arena (con motor ioquake3 mejorado) for macOS, v1.36
* [ioQuake3 latest pk3 files](https://github.com/diegoulloao/ioquake3-mac-install/tree/master/dependencies/baseq3) - Últimos archivos pk3 distribuidos por ioQuake3 (point release patches)
* [CPMA 1.52](https://cdn.playmorepromode.com/files/cpma/cpma-1.52-nomaps.zip) - CPMA: Challenge Pro Mode Arena Mod, v1.52
* [CPMA Map Pack](https://cdn.playmorepromode.com/files/cpma-mappack-full.zip) - Conjunto de mapas y dependencias para CPMA
* [High Resolution Pack](http://ioquake3.org/files/xcsv_hires.zip) - Texturas de alta resolución
* [Complementary HQ Textures](https://github.com/diegoulloao/ioquake3-mac-install/raw/master/extras/extra-pack-resolution.pk3) - Texturas complementarias de alta resolución
* [Quake 3 Live Sounds Pack](https://github.com/diegoulloao/ioquake3-mac-install/raw/master/extras/quake3-live-sounds.pk3) - Quake3 live audio + sonidos en alta calidad
* [(nuevo) Quake 3 HD Weapons](https://github.com/diegoulloao/ioquake3-mac-install/raw/master/extras/hd-weapons.pk3) - Quake3 nuevas armas re-texturizadas 2019

## Problemas frecuentes
1. _**"ioquake3.app no se puede abrir porque proviene de un desarrollador no indentificado"**_

	Al recibir este mensaje **ir a**:
	**_Preferencias del Sistema > Seguridad y Privacidad_**
	
	**Click** en botón: **"_Abrir igualmente_"**
	
	( Leer más: [http://support.apple.com/kb/HT5290](http://support.apple.com/kb/HT5290) )

## Información para los desarrolladores
La aplicación ioquake3.app aquí incluída fue compilada **directamente del repositorio [ioquake3 source code](https://github.com/ioquake/ioq3)**. Esta versión incluye **commits hasta la fecha _Aug 23, 2019_**: ["Create Funding.yml"](https://github.com/ioquake/ioq3/commit/4d82b8b5257675b8010cd59a203d713c33640046)

## Notas de la versión
- Corrige # [macOS Catalina: Only bottom left quarter of the screen is used by the game](https://github.com/ioquake/ioq3/issues/422)
- Corrige # [Mac OS X: App not 64-bit optimized for Mac OS Catalina?](https://github.com/ioquake/ioq3/issues/418)

## Programación

**Diego Ulloa** - [@diegoulloao](https://github.com/diegoulloao)

_Puedes visitar mi sitio web: http://www.diegoulloa.cl/_

## Licencia

**GNU GPLv3**

Lee la [LICENCIA](https://github.com/diegoulloao/ioquake3-mac-install/blob/master/LICENSE)

## Contribuidores

**Gracias a estas personas maravillosas!**

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/bttd"><img src="https://avatars3.githubusercontent.com/u/45686509?v=4" width="100px;" alt="bttd"/><br /><sub><b>bttd</b></sub></a><br /><a href="https://github.com/diegoulloao/ioquake3-mac-install/commits?author=bttd" title="Compiling">📎</a><a href="https://github.com/diegoulloao/ioquake3-mac-install/commits?author=bttd" title="Tests">⚠️</a></td>
    <td align="center"><a href="https://icculus.org/"><img src="https://avatars0.githubusercontent.com/u/673562?v=4" width="100px;" alt="Ryan C. Gordon"/><br /><sub><b>Ryan C. Gordon</b></sub></a><br /><a href="https://github.com/diegoulloao/ioquake3-mac-install/issues?q=author%3Arcgordon" title="Bug reports">🐛</a> <a href="https://github.com/diegoulloao/ioquake3-mac-install/commits?author=rcgordon" title="Code">💻</a></td>
  </tr>
</table>
<!-- ALL-CONTRIBUTORS-LIST:END -->

**Son geniales.**

---

**Desarrollado por [@diegoulloao](https://github.com/diegoulloao)** | 2019.