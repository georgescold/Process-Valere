Add-Type -AssemblyName System.Drawing

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceDir = Join-Path $root 'sources'
$outputDir = Join-Path $root 'exports'
New-Item -ItemType Directory -Force $outputDir | Out-Null

$navy = [System.Drawing.ColorTranslator]::FromHtml('#12365E')
$navyDark = [System.Drawing.ColorTranslator]::FromHtml('#0B2744')
$orange = [System.Drawing.ColorTranslator]::FromHtml('#E8730C')
$red = [System.Drawing.ColorTranslator]::FromHtml('#B02A2A')
$gray = [System.Drawing.ColorTranslator]::FromHtml('#F0F3F6')
$ink = [System.Drawing.ColorTranslator]::FromHtml('#222222')
$white = [System.Drawing.Color]::White

function New-Font([float]$size, [System.Drawing.FontStyle]$style = [System.Drawing.FontStyle]::Regular) {
    return [System.Drawing.Font]::new('Arial', $size, $style, [System.Drawing.GraphicsUnit]::Pixel)
}

function Add-Text($g, [string]$text, [float]$x, [float]$y, [float]$w, [float]$h, $font, $color, [string]$align = 'Near') {
    $brush = [System.Drawing.SolidBrush]::new($color)
    $format = [System.Drawing.StringFormat]::new()
    $format.Trimming = [System.Drawing.StringTrimming]::Word
    $format.FormatFlags = [System.Drawing.StringFormatFlags]::LineLimit
    $format.Alignment = [System.Drawing.StringAlignment]::$align
    $format.LineAlignment = [System.Drawing.StringAlignment]::Near
    $g.DrawString($text, $font, $brush, [System.Drawing.RectangleF]::new($x, $y, $w, $h), $format)
    $format.Dispose()
    $brush.Dispose()
}

function Add-Block($g, $color, [float]$x, [float]$y, [float]$w, [float]$h) {
    $brush = [System.Drawing.SolidBrush]::new($color)
    $g.FillRectangle($brush, $x, $y, $w, $h)
    $brush.Dispose()
}

function Add-Button($g, [string]$text, [float]$x, [float]$y, [float]$w, [float]$h, $fill, $textColor = $white) {
    Add-Block $g $fill $x $y $w $h
    $font = New-Font 31 ([System.Drawing.FontStyle]::Bold)
    $brush = [System.Drawing.SolidBrush]::new($textColor)
    $format = [System.Drawing.StringFormat]::new()
    $format.Alignment = [System.Drawing.StringAlignment]::Center
    $format.LineAlignment = [System.Drawing.StringAlignment]::Center
    $g.DrawString($text, $font, $brush, [System.Drawing.RectangleF]::new($x, $y, $w, $h), $format)
    $format.Dispose(); $brush.Dispose(); $font.Dispose()
}

function New-Canvas([string]$sourceName) {
    $img = [System.Drawing.Image]::FromFile((Join-Path $sourceDir $sourceName))
    $bmp = [System.Drawing.Bitmap]::new(1080, 1080)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit
    $g.DrawImage($img, 0, 0, 1080, 1080)
    $img.Dispose()
    return @($bmp, $g)
}

function Save-Canvas($canvas, [string]$name) {
    $bmp = $canvas[0]; $g = $canvas[1]
    $path = Join-Path $outputDir $name
    $bmp.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
    $g.Dispose(); $bmp.Dispose()
}

# 01. Angle perte, format média natif
$c = New-Canvas '01-maison.png'; $b = $c[0]; $g = $c[1]
Add-Block $g ([System.Drawing.Color]::FromArgb(95, 5, 22, 38)) 0 0 1080 300
Add-Block $g $orange 64 44 290 47
$f = New-Font 21 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'CAS IMMOBILIER' 78 53 265 34 $f $white; $f.Dispose()
$f = New-Font 44 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('UNE MAISON À 400 000 €' + [Environment]::NewLine + 'COMBIEN LES ENFANTS' + [Environment]::NewLine + 'RÉCUPÈRENT-ILS ?') 62 103 955 190 $f $white; $f.Dispose()
$f = New-Font 36 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'DROITS. ABATTEMENTS. DONATIONS.' 70 848 940 76 $f $white 'Center'; $f.Dispose()
$f = New-Font 25; Add-Text $g 'Trois éléments qui peuvent changer le résultat.' 90 928 900 42 $f ([System.Drawing.Color]::FromArgb(225,255,255,255)) 'Center'; $f.Dispose()
Add-Button $g 'VOIR LE CALCUL' 330 990 420 68 $orange
Save-Canvas $c '01-perte-maison.png'

# 02. Angle perte, format diagnostic chiffré
$c = New-Canvas '02-cas-concret.png'; $b = $c[0]; $g = $c[1]
Add-Block $g $navy 598 315 350 52
$f = New-Font 25 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'CAS CONCRET' 620 324 305 38 $f $white 'Center'; $f.Dispose()
$f = New-Font 31 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('MAISON' + [Environment]::NewLine + 'ÉPARGNE' + [Environment]::NewLine + 'ENFANT') 425 404 250 230 $f $navy; $f.Dispose()
$f = New-Font 46 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('380 000 €' + [Environment]::NewLine + '140 000 €' + [Environment]::NewLine + '1') 675 392 320 250 $f $orange; $f.Dispose()
$f = New-Font 49 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'COMBIEN LUI RESTERA-T-IL RÉELLEMENT ?' 430 676 560 170 $f $ink 'Center'; $f.Dispose()
$f = New-Font 23; Add-Text $g 'Les donations des 15 dernières années peuvent compter.' 440 850 540 66 $f $ink 'Center'; $f.Dispose()
Add-Button $g 'DÉCOUVRIR LE CALCUL' 292 950 496 75 $orange
Save-Canvas $c '02-perte-cas-concret.png'

# 03. Angle protection, format projection
$c = New-Canvas '03-protection.png'; $b = $c[0]; $g = $c[1]
Add-Block $g $navy 0 0 1080 315
Add-Block $g $orange 62 42 250 46
$f = New-Font 23 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'PROTECTION' 73 49 230 36 $f $white; $f.Dispose()
$f = New-Font 58 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('LE PATRIMOINE EST PRÊT.' + [Environment]::NewLine + 'ET SA TRANSMISSION ?') 60 111 960 150 $f $white; $f.Dispose()
$f = New-Font 28; Add-Text $g 'Maison. Comptes. Donations. Bénéficiaires. Documents.' 65 267 950 40 $f ([System.Drawing.Color]::FromArgb(225,255,255,255)); $f.Dispose()
Add-Block $g ([System.Drawing.Color]::FromArgb(235, 240, 243, 246)) 610 670 410 252
$f = New-Font 25 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('✓ TOUT RASSEMBLER' + [Environment]::NewLine + '✓ TOUT EXPLIQUER' + [Environment]::NewLine + "✓ ÉVITER L’URGENCE") 650 708 335 170 $f $navy; $f.Dispose()
Add-Button $g 'COMMENCER LE DOSSIER' 610 922 410 75 $orange
Save-Canvas $c '03-protection-dossier.png'

# 04. Angle contrôle, format problème / solution
$c = New-Canvas '04-avant-apres.png'; $b = $c[0]; $g = $c[1]
Add-Block $g $navy 0 0 1080 194
$f = New-Font 52 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('SUCCESSION : DEUX SCÉNARIOS' + [Environment]::NewLine + 'POUR LA FAMILLE') 55 42 970 135 $f $white 'Center'; $f.Dispose()
Add-Block $g ([System.Drawing.Color]::FromArgb(250, 240, 243, 246)) 0 905 1080 175
$f = New-Font 32 ([System.Drawing.FontStyle]::Bold); Add-Text $g "TOUT RETROUVER DANS L’URGENCE" 55 930 440 82 $f $navy 'Center'; $f.Dispose()
$f = New-Font 32 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'TOUT PRÉPARER À SON RYTHME' 585 930 440 82 $f $navy 'Center'; $f.Dispose()
Add-Block $g $red 60 1032 420 8
Add-Block $g $orange 600 1032 420 8
Add-Button $g 'VOIR LA MÉTHODE' 365 830 350 70 $orange
Save-Canvas $c '04-controle-avant-apres.png'

# 05. Angle curiosité, format timeline
$c = New-Canvas '05-dates.png'; $b = $c[0]; $g = $c[1]
$f = New-Font 61 ([System.Drawing.FontStyle]::Bold); Add-Text $g ('3 DATES PEUVENT CHANGER' + [Environment]::NewLine + 'LA TRANSMISSION') 55 70 970 155 $f $white 'Center'; $f.Dispose()
$f = New-Font 29; Add-Text $g 'Les connaître avant de franchir un seuil change les questions à poser.' 90 242 900 75 $f ([System.Drawing.Color]::FromArgb(225,255,255,255)) 'Center'; $f.Dispose()
$f = New-Font 42 ([System.Drawing.FontStyle]::Bold); Add-Text $g '70 ANS' 182 590 190 60 $f $navy 'Center'; Add-Text $g '71 ANS' 423 590 190 60 $f $navy 'Center'; Add-Text $g '15 ANS' 665 590 190 60 $f $navy 'Center'; $f.Dispose()
$f = New-Font 19 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'UN REPÈRE' 190 647 175 35 $f $orange 'Center'; Add-Text $g 'UN BARÈME' 430 647 175 35 $f $orange 'Center'; Add-Text $g 'UN DÉLAI' 672 647 175 35 $f $orange 'Center'; $f.Dispose()
Add-Block $g $orange 0 917 1080 163
$f = New-Font 27 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'AVANT DE LAISSER PASSER UN SEUIL' 55 936 970 40 $f $white 'Center'; $f.Dispose()
Add-Button $g 'COMPRENDRE CES DATES' 295 990 490 68 $navy
Save-Canvas $c '05-curiosite-dates.png'

# 06. Angle urgence réelle, format actualité
$c = New-Canvas '06-actualite.png'; $b = $c[0]; $g = $c[1]
Add-Block $g $navy 310 70 455 43
$f = New-Font 23 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'ACTUALITÉ TRANSMISSION' 330 77 415 35 $f $white 'Center'; $f.Dispose()
Add-Block $g ([System.Drawing.Color]::FromArgb(238, 250, 250, 248)) 310 120 610 288
$f = New-Font 27 ([System.Drawing.FontStyle]::Bold); Add-Text $g 'FIN PRÉVUE DE' 337 143 555 42 $f $ink 'Center'; $f.Dispose()
$f = New-Font 38 ([System.Drawing.FontStyle]::Bold); Add-Text $g ("L’EXONÉRATION" + [Environment]::NewLine + 'TEMPORAIRE') 337 185 555 102 $f $ink 'Center'; $f.Dispose()
$f = New-Font 46 ([System.Drawing.FontStyle]::Bold); Add-Text $g '31 DÉCEMBRE 2026' 337 292 555 62 $f $red 'Center'; $f.Dispose()
Add-Block $g $red 340 374 550 8
Add-Block $g ([System.Drawing.Color]::FromArgb(236, 250, 250, 248)) 380 475 500 245
$f = New-Font 28 ([System.Drawing.FontStyle]::Bold); Add-Text $g ("JUSQU’À 100 000 €" + [Environment]::NewLine + 'PAR DONATEUR ET PAR BÉNÉFICIAIRE') 405 505 450 105 $f $navy 'Center'; $f.Dispose()
$f = New-Font 21; Add-Text $g 'Sous conditions. Logement neuf ou certains travaux de rénovation énergétique.' 415 620 430 80 $f $ink 'Center'; $f.Dispose()
Add-Button $g 'VOIR LES CONDITIONS' 355 742 420 70 $orange
Save-Canvas $c '06-urgence-actualite.png'

# Planche de contrôle 3 x 2
$sheet = [System.Drawing.Bitmap]::new(1080, 720)
$sheetGraphics = [System.Drawing.Graphics]::FromImage($sheet)
$sheetGraphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$names = @(
    '01-perte-maison.png', '02-perte-cas-concret.png', '03-protection-dossier.png',
    '04-controle-avant-apres.png', '05-curiosite-dates.png', '06-urgence-actualite.png'
)
for ($i = 0; $i -lt $names.Count; $i++) {
    $thumb = [System.Drawing.Image]::FromFile((Join-Path $outputDir $names[$i]))
    $x = ($i % 3) * 360
    $y = [Math]::Floor($i / 3) * 360
    $sheetGraphics.DrawImage($thumb, $x, $y, 360, 360)
    $thumb.Dispose()
}
$sheet.Save((Join-Path $outputDir '00-planche-contact.png'), [System.Drawing.Imaging.ImageFormat]::Png)
$sheetGraphics.Dispose(); $sheet.Dispose()

Write-Output ('6 créations exportées dans ' + $outputDir)
