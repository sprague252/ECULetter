# README - ECULetter LaTeX Class

Version 3.0, released September 18, 2024

These files contain the ECULetter LaTeX class, which provides a
personalized ECU letterhead in a LaTeX environment. It also includes
commands for elements of letters and memoranda written on the letterhead.

## Version Information

* v1.0 2017-03-21 Initial release
* v2.0 2017-09-12 Converted to ECU 2017 letterhead format
* v3.0 2024-09-18
    - Updated references to ECU logo graphics files; 
    - Added converted graphics files from the official [ECU
        Branding](https://brand.ecu.edu) website; 
    - changed the names of the logo files used by the cls file.

## Files

* ECULetter.cls - LaTeX class file generated from ECULetter.dtx (see
    instructions for generating this file below),
* ECULetter.dtx - documented TeX file containing the source code and
    documentation,
* ECULetter.ins - LaTeX installer file for the class, 
* ECULetter.pdf - documentation file gernerated from ECULetter.dtx
    (see instructions for generating this file below),
* ECULetterDefs.cfg - sample user configuration file for ECULetter documents,
* ECULetterTemplate.tex - document template file for a letter using the
    ECULetter class,
* ECUMemoTemplate.tex - document template file for a memorandum using
    the ECULetter class, and
* README.txt - this file.
* ECULogo.pdf - PDF graphics file containing the purple ECU logo.
    This file was converted from the ECU Primary logo Purple (EPS)
    file provided on the [ECU Branding](https://brand.ecu.edu)
    website using Ghostscript with the following command.
```
        gs -sOutputFile=ECULogo.pdf -sDEVICE=pdfwrite -dNOPAUSE \
        -dEPSCrop -dBATCH ECU_lockup_primary_Purple.eps
```
* ECULogoBW.pdf - PDF graphics file containing the black and white
    ECU logo. This file was converted from the ECU Primary logo
    Purple (EPS) file provided on the [ECU
    Branding](https://brand.ecu.edu) website using Ghostscript with
    the following command.
```
        gs -sOutputFile=ECULogoBW.pdf -sDEVICE=pdfwrite \
        -sColorConversionStrategy=Gray \
        -dProcessColorModel=/DeviceGray -dNOPAUSE -dEPSCrop \
        -dBATCH ECU_lockup_primary_Purple.eps
```


## Installation

Several of the steps below refer to the texmf directory trees. See the
section below for further explanation of this.

1. Generate the class file by running the following latex command
    from the directory containing the ECULetter files. 
```   
        latex ECULetter.ins
```
    This will generate the class file ECULetter.cls. **Note**: A copy of
     `ECULetter.cls` is provided with this distribution, so it is not
    necessary to generate it again.

2. Copy the ECULetter.cls file to the appropriate location in the
    latex file search path, such as somewhere in the user texmf
    directory tree or the system-level local texmf tree. Recommended
    install location: `texmf/tex/latex/ECULetter/ECULetter.cls`

3. Copy the files ECULogo.pdf and ECULogoBW.pdf to a location in the
    latex file search path, such as a location in your user or
    system-local texmf directory tree. Recommended install locations:
    `texmf/tex/latex/graphics/ECULogo.pdf` and
    `texmf/tex/latex/graphics/ECULogoBW.pdf`

4. (Optional) Edit the ECULetterDefs.cfg file to include your user
    information and copy it to a location in the latex file search
    path, such as a location in your user texmf directory tree.
    Recommended install location:
    `texmf/tex/latex/ECULetter/ECULetterDefs.cfg`.

5. (Optional) Generate a signature image file in PDF format (or other
    format accessible to the graphicx LaTeX package).  One option is
    to scan a handwritten signature.  Save the file with name
    signature.pdf (or other appropriate extension), and copy it to a
    location in the latex file search path, such as a location in
    your user texmf directory tree. Note that you will not be able to
    include signatures without this file. Recommended install
    location: `texmf/tex/latex/graphics/signature.pdf`

6. (Optional) Edit the document template files ECULetterTemplate.tex
    and ECUMemoTemplate.tex as appropriate and copy them to your
    LaTeX template directory.

7. (Optional) To generate the documentation file `ECULetter.pdf` from
    the `ECULetter.dtx` file, run the following commands.  
```
        pdflatex ECULetter.dtx
        makeindex -s gind.ist -o ECULetter.ind ECULetter.idx
        makeindex -s gglo.ist -o ECULetter.gls ECULetter.glo
        pdflatex ECULetter.dtx
```
    **Note**: A copy of  `ECULetter.pdf` is provided with this
    distribution, so it is not necessary to generate it again.
    
8. (Optional) Move the file `ECULetter.pdf` to the appropriate
    location (in your preferred texmf directory tree or elsewhere).
    Recommended install location:
    `texmf/doc/ECULetter/ECULetter.pdf`.

9. Update the ls-R database file(s) for the texmf directory trees
    where you copied the various files. If you added the files to
    your user texmf directory tree on Mac OS or Linux use the
    following command.
```
        texhash `kpsewhich -var-value=TEXMFHOME`
```


## LaTeX File Search Path and texmf Directory Trees

By default, TeX programs will look for referenced files in the directory
from which the program is run.  If the file is not found, it searches
the various texmf directory trees: the user texmf directory tree, the
system-level local texmf directory tree, and the system-level
distribution texmf directory tree.  The locations of these trees vary by
system-type. 

### User texmf Directory
    
You can determine this directory on your machine with the command
```
            kpsewhich -var-value=TEXMFHOME
```
        
Here are the locations on some systems:

* MacOS (MacTeX/TeXLive): `~/Library/texmf`
* Linux (TeXLive): `~/texmf`
* Windows (MikTex): `C:\Users\<user name>\Appdata\Local\MikTex\<number>`

### System-Local texmf Directory

You can determine this directory on your machine with the command
```
            kpsewhich -var-value=TEXMFLOCAL
```
These are the locations on some systems:

* MacOS (MacTeX/TeXLive): `/usr/local/texlive/texmf-local`
* Linux (TeXLive): `/usr/local/share/texmf`


## Copyright and License

Copyright (C) 2024 by Mark W. Sprague
This file and the TeX files in this disribution may be distributed
and/or modified under the conditions of the LaTeX Project Public
License, either version 1.3 of this license or (at your option) any
later version. The latest version of this license is in:

> https://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of LaTeX version
2005/12/01 or later.
