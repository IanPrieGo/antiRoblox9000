# "C:/Users/Ian Prieto Gomez/Desktop/Programacion/PablitoPablo/antiRoblox9000.ps1"

function findkill($path){
	
	$isArray=$false

	$owo=(
		gci -Path $path -fi "*roblox*.*" -Recurse
	)

	if ($owo -eq $null){
		echo "No Items"
		return 25
	}

	if ($owo.GetType().Name -eq "Object[]"){
		echo "Array"
		$isArray=$true
	} elseif ($owo.GetType().Name -eq "FileInfo"){
		echo "One Item"
	} 

	if ($isArray){
		for ($i=0;$i -lt $owo.length;$i++){
			echo $owo[$i].Name
			if ($owo[$i].Name -ne "antiRoblox9000.ps1"){
				Remove-Item -Path $owo[$i].FullName
			}
			
		}
	} else {
		echo $owo.Name
		if ($owo.Name -ne "antiRoblox9000.ps1"){
				Remove-Item -Path $owo.FullName
		}
	}
	
}



while($true){ 

	findkill "C:/XboxGames/"
	findkill "C:/Users/"
	
	Start-Sleep -Seconds 10
}