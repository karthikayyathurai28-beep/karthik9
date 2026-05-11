
$pages = @(
    @{
        File = "modular-kitchen.html"
        Title = "Modern Modular Kitchen Designs"
        Category = "MODULAR KITCHEN"
        ImgPrefix = "line2img"
    },
    @{
        File = "wardrobe.html"
        Title = "Elegant Wardrobe Solutions"
        Category = "WARDROBE DESIGN"
        ImgPrefix = "line3img"
    },
    @{
        File = "living-room.html"
        Title = "Modern Living Room Interiors"
        Category = "LIVING ROOM"
        ImgPrefix = "line4img"
    }
)

$template = Get-Content -Path "tv-units.html" -Raw

foreach ($page in $pages) {
    $content = $template
    $content = $content -replace "TV Units \| Our Works", ($page.Title + " | Our Works")
    $content = $content -replace "Premium TV Unit Designs", $page.Title
    $content = $content -replace "TV UNIT DESIGN IDEAS", ($page.Category + " IDEAS")
    $content = $content -replace "line1img", $page.ImgPrefix
    $content = $content -replace "TV Unit", $page.Category
    
    if ($page.File -eq "modular-kitchen.html") {
        $content = $content -replace "Trendy TV Unit Design Ideas", "Trendy Modular Kitchen Design Ideas"
        $content = $content -replace "Best TV Unit Furniture Design Ideas", "Best Kitchen Furniture Design Ideas"
    }
    
    Set-Content -Path $page.File -Value $content -Encoding utf8
    Write-Host "Created $($page.File)"
}
