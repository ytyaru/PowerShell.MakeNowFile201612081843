# このソフトウェアについて

PowerShell.MakeNowFile201612081843は私個人が学習目的で作成したソフトウェアである。

日付ファイルを作成するPowerShellスクリプト。

# 開発環境

* Windows XP Pro SP3 32bit
    * cmd.exe(ConEmu/Nyagos)
* [Python 2.7.10](https://www.python.org/downloads/release/python-2710/)
* [Python 3.4.4](https://www.python.org/downloads/release/python-344/)

# 実行

```dosbatch
mknfile.ps1 "C:\" "txt"
```

## 引数が2個より少ないエラー

```dosbatch
powershell ./mknfile.ps1
```

![1](https://cdn-ak.f.st-hatena.com/images/fotolife/y/ytyaru/20161208/20161208192103.png)

## ディレクトリパスが存在しないエラー

```dosbatch
powershell ./mknfile.ps1 "C:\a" "txt"
```

![2](https://cdn-ak.f.st-hatena.com/images/fotolife/y/ytyaru/20161208/20161208192123.png)

# ライセンス #

このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)
