# Manu <img src="man/figures/LOGO.jpg" align="right" width="180"/>
***
New Zealand is home to a great number of native bird species, a majority being endemic to the islands. Many of these species are notable for their bright and beautiful plumage. 

Using photos of birds native to New Zealand, this `R` package contains a selection of colour palettes constructed by extracting distinct colours characteristic of these birds. 

This package was the idea of Dr Tara McAllister ([@taramcallister4](https://twitter.com/taramcallister4)) and is implemented like the<br/> [`wesanderson`](https://github.com/karthik/wesanderson) colour palette package, created by Karthik Ram ([@_inundata](https://twitter.com/_inundata)).  

<img src="man/figures/In_a_tree.jpg" width=75%/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/60164380@N03/48549024571/in/album-72157647281732710/">"Kererū"</a> contributed by <a href="https://www.flickr.com/photos/60164380@N03/albums/72157647281732710/with/48549024571/">Tony Stoddard</a> of <a href="https://kererudiscovery.org.nz/">KererūDiscovery</a> (<a href="https://twitter.com/KereruDiscovery">@KereruDiscovery</a>)</p>

## Installation
***
This package is hosted on Github and can install it using the `devtools` (>= v2.3.2) package:

``` r
# install.packages("devtools")
devtools::install_github("G-Thomson/Manu")
```
(Note: If this doesn't work, update `devtools` as Github recently changed the term it uses for the primary version of a source code repository)
## Usage
***
The colour palettes are stored as a list named `manu_palettes`. Thus you can see a list of the available palettes like so:
```r
library(Manu)
names(manu_palettes)
 [1] "Hihi"         "Hoiho"        "Kaka"         "Kakapo"       "Kakariki"     "Kea"          "Kereru"       "Kereru_orig"  "Korimako"    
[10] "Korora"       "Kotare"       "Putangitangi" "Takahe"       "Takapu"       "Titipounamu"  "Tui"          "Pepetuna"     "Pohutukawa"  
```

A helper function `get_pal()` returns the desited colour palette as a vector: For example:
```r
get_pal("Hihi")
[1] "#070604" "#F9E211" "#797A87" "#A8ACAD" "#D6CBB5"
```
There is also a helper function called `print_pal()` which displays the palette in the graphics window.
```r
hoiho <- get_pal("Hoiho")
print_pal(hoiho)
```
<img src="man/figures/hoiho_palette.jpeg" width=75%/>

Since the `get_pal()` function returns the colour palettes as a character vector they can easily be used in the graphics package of your choice. Here are examples in both base `R` and [`ggplot2`](https://ggplot2.tidyverse.org/).
```r
# Base R implementation
plot(mtcars$disp, mtcars$hp, col = get_pal("Hoiho")[factor(mtcars$carb)], pch = 19, cex = 3 )

# ggplot2 implementation
library(ggplot2)
ggplot(mtcars, aes(disp, hp, colour = factor(carb))) +
   geom_point(size = 3) +
   scale_colour_manual(values = get_pal("Hoiho"))
```
<img src="man/figures/implementation.jpeg" width=75%/>
## Colour palettes
***
Graphs shown below used to illustrate the colour templates use data from the [`nzcensr`](https://www.spatialanalytics.co.nz/packages/nzcensr/), [`palmerpenguins`](https://allisonhorst.github.io/palmerpenguins/) and [`gapminder`](https://github.com/jennybc/gapminder) packages.

### Hihi - *Notiomystis cincta* - Stichbird
```r
c("#070604", "#F9E211", "#797A87", "#A8ACAD", "#D6CBB5")
```
<img src="man/figures/Hihi.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/16520061@N08/5211267422">"Stitchbird (Notiomystis cincta)"</a><span> by <a href="https://www.flickr.com/photos/16520061@N08">David Cook Wildlife Photography</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nc/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-NC 2.0</a></p>

### Hoiho - *Megadyptes antipodes* - Yellow-eyed penguin
```r
c("#CABEE9", "#7C7189", "#FAE093", "#D04E59", "#BC8E7D", "#2F3D70")
```
<img src="man/figures/Hoiho.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/88123769@N02/29063661044">"Yellow-eyed penguin (Megadyptes antipodes)"</a><span> by <a href="https://www.flickr.com/photos/88123769@N02">Bernard Spragg</a></span> is licensed under <a href="https://creativecommons.org/licenses/cc0/1.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC0 1.0</a></p>

### Kākā  - *Nestor meridionalis*
```r
c("#A7473A", "#4B5F6C", "#B09B37", "#955F47", "#A8B9CB")
```
<img src="man/figures/Kaka.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://twitter.com/Thoughtfulnz/status/1316520927752986626?s=20">"Kākā"</a> contributed by <a href="https://twitter.com/Thoughtfulnz">David Hood</a></p>

### Kākāpō - *Strigops habroptilus*
```r
c("#7D9D33", "#CED38C", "#DCC949", "#BCA888", "#CD8862", "#775B24")
```
<img src="man/figures/Kakapo.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://twitter.com/takapodigs/status/1318318044167372800?s=20">"Kākāpō"</a> contributed by <a href="https://twitter.com/takapodigs">Dr Andrew Digby</a></p>

### Kākāriki - *Cyanoramphus Spp.*
```r
c("#44781E", "#A1B654", "#2C3B75", "#B8321A", "#565052")
```
<img src="man/figures/Kakariki.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/22357152@N02/5840424985">"Kākāriki"</a><span> by <a href="https://www.flickr.com/photos/22357152@N02">SidPix</a></span> is licensed under <a href="https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY 2.0</a></p>

### Kea - *Nestor notabilis*
```r
c("#6C803A", "#7B5C34", "#AB7C47", "#CCAE42", "#D73202",  "#272318", "#D3CDBF")
```
<img src="man/figures/Kea.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/88123769@N02/9112326315">"Kea. New Zealand Alpine Parrot. (Nestor notabilis)"</a><span> by <a href="https://www.flickr.com/photos/88123769@N02">Bernard Spragg</a></span> is licensed under <a href="https://creativecommons.org/licenses/cc0/1.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC0 1.0</a></p>

### Kererū - *Hemiphaga novaeseelandiae* - NZ wood pigeon
```r
c("#325756", "#7d9fc2", "#C582B2", "#51806a", "#4d5f8e", "#A092B7")
```
<img src="man/figures/Kereru.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://twitter.com/edufk/status/1316594859373813760?s=20">"Kererū"</a> contributed by <a href="https://twitter.com/edufk">Gir</a></p>

The original mock-up of a NZ bird colour palettes posted on [Twitter](https://twitter.com/GojThomson/status/1316407456092893186?s=20) included a Kererū palette which many said they liked. It was ultimately deemed to have too much green in it, but it remains in the package as `"Kereru_orig"` if people still wish to use it.
```r
c("#5a8b8a", "#337166", "#2C5F44", "#c47c94", "#43394C")
```
### Korimako - *Anthornis melanura* - NZ bellbird
```r
c("#757b16","#4F651D",  "#798C8B", "#2F638F", "#091A26", "#490B0A")
```
<img src="man/figures/Korimako.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://twitter.com/edufk/status/1316594859373813760?s=20">"Korimako"</a> contributed by <a href="https://twitter.com/edufk">Gir</a></p>

### Kororā - *Eudyptula minor* - Little blue penguin
```r
c("#85BEDC",  "#3A383F", "#A6B0BB", "#CCBBCD", "#647588")
```
<img src="man/figures/Korora.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/17251154@N00/14317774458">"Blue Penguin"</a><span> by <a href="https://www.flickr.com/photos/17251154@N00">Syd3r</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-NC-SA 2.0</a></p>

### Kōtare - *Todiramphus sanctus* - Kingfisher
```r
c("#214d65", "#287DAB", "#E5BF86", "#B09771", "#624B27", "#CACFD0")
```
<img src="man/figures/Kotare.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/7725552@N06/39520482181">"Sacred Kingfisher (Todiramphus sanctus)"</a><span> by <a href="https://www.flickr.com/photos/7725552@N06">Wade Tregaskis</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nc/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-NC 2.0</a></p>

### Pūtangitangi - *Tadorna variegata* -paradise shelduck
```r
c("#AA988A", "#B66A40", "#2F414B", "#2B4B3C", "#7A3520", "#7B8BA5")
```
<img src="man/figures/Putangitangi.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://commons.wikimedia.org/w/index.php?curid=4209145">"File:Paradise-Shelduck-pair.jpg"</a><span> by <a href="https://www.flickr.com/photos/68608379@N00">Michael Hamilton</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-sa/2.0?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-SA 2.0</a></p>

### Takahē - *Porphyrio hochstetteri*
```r
c("#DD3C51", "#313657", "#1F6683", "#6C90B9", "#D1C7B5")
```
<img src="man/figures/Takahe.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/43309517@N08/33913464651">"Takahē"</a><span> by <a href="https://www.flickr.com/photos/43309517@N08">Kathrin & Stefan</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nc-nd/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-NC-ND 2.0</a></p>

### Takapu - *Morus serrator* - Australasian gannet
```r
c("#DEB478", "#976533", "#D3D5D0","#76716E","#272623")
```
<img src="man/figures/Takapu.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/73162606@N00/777082140">"New Zealand 2006/2007"</a><span> by <a href="https://www.flickr.com/photos/73162606@N00">Travelling Pooh</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nc-nd/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-NC-ND 2.0</a></p>

### Titipounamu - *Acanthisitta chloris* - Rifleman
```r
c("#3E4331", "#AD6B17", "#66743B", "#D0C471", "#CCB62F", "#BAC4C2")
```
<img src="man/figures/Titipounamu.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/38053299@N08/46535373755">"Rifleman (Titipounamu)"</a><span> by <a href="https://www.flickr.com/photos/38053299@N08">vil.sandi</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nd/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-ND 2.0</a></p>

### Tūī - *Prosthemadera novaeseelandiae*
```r
c("#7ACCD7", "#115896", "#7C6C65", "#4C4C53", "#BA2F00", "#21282F")
```
<img src="man/figures/Tui.png"/>

<p style="font-size: 0.9rem;font-style: italic;">Photo (left):<a href="https://twitter.com/temihinga/status/1316522196928393216?s=20">"Tūī"</a> contributed by <a href="https://twitter.com/temihinga?s=20">Te Mihinga</a><; Photo (right):<a href="https://www.flickr.com/photos/22357152@N02/6570554993">"Tūī feeding on Harakeke nectar"</a><span> by <a href="https://www.flickr.com/photos/22357152@N02">SidPix</a></span> is licensed under <a href="https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY 2.0</a></p>

## Non-avian additions
***
### Pepetuna - *Aenetus virescens* - Puriri moth
```r
c("#719E56", "#71702F", "#947163", "#623711", "#425266")
```
<img src="man/figures/Pepetuna.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/87615810@N00/2900862167">"Puriri Moth - closeup"</a><span> by <a href="https://www.flickr.com/photos/87615810@N00">Stefan Marks</a></span> is licensed under <a href="https://creativecommons.org/licenses/by-nc-nd/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY-NC-ND 2.0</a></p>

### Pōhutukawa - *Metrosideros excelsa*
```r
c("#5FA1F7", "#83A552", "#3D4928", "#9B1F1A", "#B19F8E", "#4E0B0C")
```
<img src="man/figures/Pohutukawa.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/26231603@N06/5243000365">"Pohutukawa"</a><span> by <a href="https://www.flickr.com/photos/26231603@N06">iainurquhart</a></span> is licensed under <a href="https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=html" style="margin-right: 5px;">CC BY 2.0</a></p>

### *Tambja kushimotoensis* - Gloomy nudibranch
```r
c("#3399ff", "#666600", "#003399", "#999900", "#000000")
```
<img src="man/figures/Gloomy_Nudi.png"/>
<p style="font-size: 0.9rem;font-style: italic;">Photo:<a href="https://www.flickr.com/photos/anna-barnett/4329688360/">"Tambja nudibranch pair"</a><span> by <a href="https://www.flickr.com/photos/anna-barnett/">Anna Barnett</a></span> is licensed under <a href="https://creativecommons.org/licenses/by/2.0/" style="margin-right: 5px;">CC BY 2.0</a></p>

## Continuous colour palettes
***
The colour palettes in this package are designed for discrete variables. However if your data is continuous and needs to be plotted as such (e.g. heatmaps) you can use the `colorRampPalette()` already part of your `R` installation to create a colour gradient.

For example, if you would like to create a colour gradient between the 2nd and 3rd colours from the `Kotare` palette you could do the following.
```r
# Select 2nd and 3rd colours
selected_colours <- get_pal("Kotare")[c(2,3)]
# Create a gradient of 100 colours between the selected colours
colorRampPalette(selected_colours)(100)
```
<img src="man/figures/continuous_1.jpeg" width=75%/>

This can be done with more than two colours too! For example, with three:
```r
# Select 3 colours from the Kākā palette 
selected_colours <- get_pal("Kaka")[c(1,3,5)]
# Create a gradient of 100 colours between the selected colours
colorRampPalette(selected_colours)(100)
```

<img src="man/figures/continuous_2.jpeg" width=75%/>

## Accessibility
***
This package is intended to be a fun addition tool for `R` data visualisation and was limited to colours which could be extracted from the selected photos. Efforts were made to make these usable as colour palettes, but they do not conform to the Web Content Accessibility Guidelines (WCAG) with regards to levels of colour contrast. 

The developer also does not experience colour vision deficiency but checked simulated palettes using the [Prismatic](https://emilhvitfeldt.github.io/prismatic/) package. If this is a consideration in your visualisation then the `Hihi`, `Kotare`, `Takapu` or `Tui` palettes might be the most suitable. 

## Acknowledgements
***

Thanks go to Dr Tara McAllister ([@taramcallister4](https://twitter.com/taramcallister4)) for conceiving of this idea and for helping to collect photos. Thank you also to all those on Twitter who shared their photos or expressed interest and support.

The [`wesanderson`](https://github.com/karthik/wesanderson) colour palette package, created by Karthik Ram ([@_inundata](https://twitter.com/_inundata)) should also be acknowledged as this package draws heavily from it. 

The logo is adapted from the [Pigeon](https://thenounproject.com/term/pigeon/136533/) icon by [Nicole Macdonald](https://www.behance.net/nicolemacdonald) and made available under a Creative Commons CCBY license. Here colour and the title have been added.

## Contribute
***
If you would like to improve or add to this package feel free to file an issue or pull request on [Github](https://github.com/G-Thomson/Manu/) or contact [@GojThomson](https://twitter.com/GojThomson) on Twitter.
