# 日付ファイルを作成する。
# 
# $Args[0] ファイルを作成するディレクトリパス
# $Args[1] 作成するファイルの拡張子
if ($Args.Count -lt 2) {
	[Void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");
	[System.Windows.Forms.MessageBox]::Show(
		("次のように2つの引数を与えてください。`n`n" + 
		 "`$Args[0]: `"C:\dir\`" <ファイルを作成するディレクトリパス>`n" +
		 "`$Args[1]: `"txt`"     <作成するファイルの拡張子>`n"), 
		"引数エラー", "OK", "Error");
	return;
}
if (-not(Test-Path $Args[0])) {
	[Void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");
	[System.Windows.Forms.MessageBox]::Show(
		("指定したディレクトリパスは存在しません。`n`n" + 
		 "`$Args[0]: `"" + $Args[0] + "`""), 
		"引数エラー", "OK", "Error");
	return;
}
cd $Args[0]
New-Item -ItemType file ((Get-Date -Format "yyyyMMddHHmmssfff") + "." + $Args[1])
