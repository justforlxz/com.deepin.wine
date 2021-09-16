# com.deepin.wine

deepin-wine flatpak runtime

## 安装依赖

```shell
flatpak install flathub org.freedesktop.Platform/i386/18.08
flatpak install flathub org.freedesktop.Sdk/i386/18.08
```

## 构建运行时

```shell
flatpak-builder --repo=repo --arch=i386 .build com.deepin.wine.json
```

## 测试运行时

```shell
flatpak-builder --run .build com.deepin.wine.json deepin-wine --version
```

## 安装运行时

```shell
flatpak remote-add --user --no-gpg-verify deepin-wine ./repo
flatpak install --user deepin-wine com.deepin.wine.Platform
```
