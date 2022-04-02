# Description:
# Iterates over every single byte inside the file and applys a bit mask to flip the last bit in the byte. Run it again to reverse the process.

$SourceFile = "./boxicons.eot.txt"
$beforeFileHash = (Get-FileHash $SourceFile).Hash
$SourceBytes = [System.IO.File]::ReadAllBytes($SourceFile)

Write-Host "Now flipping every 8th bit in" $SourceBytes.Length "bytes. Please wait..."
for($i=0; $i -lt $SourceBytes.count ; $i++)
{
    # Apply a bit mask. 1 in Hex is Binary for 00000001. BXOR with that mask will flip the last bit in the byte.
    $SourceBytes[$i] = $SourceBytes[$i] -bxor 1
}
Write-Host "Finished."

[System.IO.File]::WriteAllBytes($SourceFile , $SourceBytes)

Write-Host "File Hash Before: " $beforeFileHash
$afterFileHash = (Get-FileHash $SourceFile).Hash
Write-Host "File Hash After: " $afterFileHash