# ���t�t�@�C�����쐬����B
# 
# $Args[0] �t�@�C�����쐬����f�B���N�g���p�X
# $Args[1] �쐬����t�@�C���̊g���q
if ($Args.Count -lt 2) {
	[Void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");
	[System.Windows.Forms.MessageBox]::Show(
		("���̂悤��2�̈�����^���Ă��������B`n`n" + 
		 "`$Args[0]: `"C:\dir\`" <�t�@�C�����쐬����f�B���N�g���p�X>`n" +
		 "`$Args[1]: `"txt`"     <�쐬����t�@�C���̊g���q>`n"), 
		"�����G���[", "OK", "Error");
	return;
}
if (-not(Test-Path $Args[0])) {
	[Void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");
	[System.Windows.Forms.MessageBox]::Show(
		("�w�肵���f�B���N�g���p�X�͑��݂��܂���B`n`n" + 
		 "`$Args[0]: `"" + $Args[0] + "`""), 
		"�����G���[", "OK", "Error");
	return;
}
cd $Args[0]
New-Item -ItemType file ((Get-Date -Format "yyyyMMddHHmmssfff") + "." + $Args[1])
