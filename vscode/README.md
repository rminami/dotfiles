# VSCode configuration files

## Install extensions

To install the extension listed in the file, run

```sh
cat extensions | xargs -L 1 echo code --install-extension | sh
```

## Export installed extensions

To list currently installed extensions and save them in the extensions file, run

```sh
code --list-extensions --show-versions > extensions
```
