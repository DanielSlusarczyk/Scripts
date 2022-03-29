# Skrypt do zarządzania folderem z zrzutami ekranu
# Każdy plik jest przenoszony do folderu na podstawie czasu utworzenia

# Daniel Ślusarczyk
# 2022


$PathToFolder = "C:\Users\danie\OneDrive\PlikiGS\"      # Ścieżka do katalogu z rzutami ekranu

$Counter = 0
# Pętla wyłącznie po plikach:
foreach ($File in Get-ChildItem $PathToFolder -Attributes !Directory) {

    $FileCreationTime = $File.LastWriteTime             # Pobranie daty modyfikacji pliku
    $Date = $FileCreationTime.ToString("MM-yyyy")       # Format daty do postaci MM-yyyy
    $AssignedPath = $PathToFolder+$Date                 # Wyznaczenie przypisanej scieżki do pliku

    if( -not (Test-Path $AssignedPath) ){               # Stworzenie katalogu jeśli nie istnieje
        New-Item $AssignedPath -itemType Directory
    }

    # Przeniesienie pliku do odpowiedniego folderu:
    Move-Item -LiteralPath $File.FullName -Destination $AssignedPath
    $Counter = $Counter + 1
}

$Time = Get-Date -Format "dd/MM/yyyy"                  # Aktualna data
$ToDisplay = "["+$Time+"]"                             # Czas do wyświetlenia
Write-Output "$ToDisplay Przeniesionych plikow: $Counter"