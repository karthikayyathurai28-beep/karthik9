$template = Get-Content -Path 'template.html' -Raw -Encoding UTF8

$cities = @(
    @{ file = 'ariyalur.html';        name = 'Ariyalur' },
    @{ file = 'chengalpattu.html';    name = 'Chengalpattu' },
    @{ file = 'chennai.html';         name = 'Chennai' },
    @{ file = 'coimbatore.html';      name = 'Coimbatore' },
    @{ file = 'cuddalore.html';       name = 'Cuddalore' },
    @{ file = 'dharmapuri.html';      name = 'Dharmapuri' },
    @{ file = 'dindigul.html';        name = 'Dindigul' },
    @{ file = 'erode.html';           name = 'Erode' },
    @{ file = 'kallakurichi.html';    name = 'Kallakurichi' },
    @{ file = 'kanchipuram.html';     name = 'Kanchipuram' },
    @{ file = 'kanyakumari.html';     name = 'Kanyakumari' },
    @{ file = 'karur.html';           name = 'Karur' },
    @{ file = 'krishnagiri.html';     name = 'Krishnagiri' },
    @{ file = 'madurai.html';         name = 'Madurai' },
    @{ file = 'mayiladuthurai.html';  name = 'Mayiladuthurai' },
    @{ file = 'nagapattinam.html';    name = 'Nagapattinam' },
    @{ file = 'namakkal.html';        name = 'Namakkal' },
    @{ file = 'nilgiris.html';        name = 'Nilgiris' },
    @{ file = 'perambalur.html';      name = 'Perambalur' },
    @{ file = 'pudukkottai.html';     name = 'Pudukkottai' },
    @{ file = 'ramanathapuram.html';  name = 'Ramanathapuram' },
    @{ file = 'ranipet.html';         name = 'Ranipet' },
    @{ file = 'salem.html';           name = 'Salem' },
    @{ file = 'sivaganga.html';       name = 'Sivaganga' },
    @{ file = 'tenkasi.html';         name = 'Tenkasi' },
    @{ file = 'thanjavur.html';       name = 'Thanjavur' },
    @{ file = 'theni.html';           name = 'Theni' },
    @{ file = 'thoothukudi.html';     name = 'Thoothukudi' },
    @{ file = 'tiruchirappalli.html'; name = 'Tiruchirappalli' },
    @{ file = 'tirunelveli.html';     name = 'Tirunelveli' },
    @{ file = 'tirupathur.html';      name = 'Tirupathur' },
    @{ file = 'tiruppur.html';        name = 'Tiruppur' },
    @{ file = 'tiruvallur.html';      name = 'Tiruvallur' },
    @{ file = 'tiruvannamalai.html';  name = 'Tiruvannamalai' },
    @{ file = 'tiruvarur.html';       name = 'Tiruvarur' },
    @{ file = 'vellore.html';         name = 'Vellore' },
    @{ file = 'viluppuram.html';      name = 'Viluppuram' },
    @{ file = 'virudhunagar.html';    name = 'Virudhunagar' }
)

foreach ($city in $cities) {
    $content = $template -replace '\[District Name\]', $city.name
    $outPath = $city.file
    [System.IO.File]::WriteAllText($outPath, $content, [System.Text.Encoding]::UTF8)
    Write-Host "Generated: $($city.file)"
}

Write-Host "`nDone! $($cities.Count) city pages generated successfully."
