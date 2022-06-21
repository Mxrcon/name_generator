function Get-Aminoacid {
    param([parameter(Mandatory)][String]$DatabasePath)

    $Table = Invoke-SqliteQuery -Database $DatabasePath -Query "SELECT Aminoacids FROM Aminoacids ORDER BY RANDOM() LIMIT 1"

    $Aminoacid = $Table.Aminoacids
    return $Aminoacid
}

