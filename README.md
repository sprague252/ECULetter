# README - ECULetter LaTeX Class

These files contain the ECULetter LaTeX class, which provides a
personalized ECU letterhead in a LaTeX environment. It also includes
commands for elements of letters and memoranda written on the letterhead.


## Files

ECULetter.dtx - Documented TeX file containing the source code and
    documentation.
ECULetter.ins - LaTeX installer file for the class
ECULetter.pdf - Documentation file gernerated from ECULetter.dtx
ECULetterDefs.cfg - Sample user configuration file for ECULetter documents.
ECULetterTemplate.tex - Document template file for a letter using the
    ECULetter class.
ECUMemoTemplate.tex - Document template file for a memorandum using
    the ECULetter class.
README.txt - This file.


### Other Files Needed

ECULogo2017.pdf - PDF graphics file containing the color ECU logo,
    2017 version; sample available on ECULetter distribution page.
ECULogo2017BW.pdf - PDF graphics file containing the black and white
    ECU logo, 2017 version; sample available on ECULetter
    distribution page.


## Installation

Several of the steps below refer to the texmf directory trees. See the
section below for further explanation of this.

1. Generate the class file by running the following latex command
	from the directory containing the ECULetter files.
   
        latex ECULetter.ins

    This will generate the file ECULetter.cls.

2. Copy the ECULetter.cls file to the appropriate location in the
	latex file search path, such as somewhere in the user texmf
	directory tree or the system-level local texmf tree. 
	Recommended install location: 
	    texmf/tex/latex/ECULetter/ECULetter.cls

3. Copy the files ECULogo2017.pdf and ECULogo2017BW.pdf to a location in the
	latex file search path, such as a location in your user or
	system-local texmf directory tree. Recommended install locations: 
	    texmf/tex/latex/Graphics/ECULogo2017.pdf and 
	    texmf/tex/latex/Graphics/ECULogo2017BW.pdf

4. (Optional) Edit the ECULetterDefs.cfg file to include your user
	information and copy it to a location in the latex file search
	path, such as a location in your user texmf directory tree. 
	Recommended install location:

	    texmf/tex/latex/ECULetter/ECULetterDefs.cfg

5. (Optional) Generate a signature image file in PDF format (or other
	format accessible to the graphicx LaTeX package).  One option is
	to scan a handwritten signature.  Save the file with name
	signature.pdf (or other appropriate extension), and copy it to a
	location in the latex file search path, such as a location in
	your user texmf directory tree.  Note that you will not be able
	to include signatures without this file.
	Recommended install location:

	    texmf/tex/latex/Graphics/signature.pdf

6. (Optional) Edit the document template files ECULetterTemplate.tex
	and ECUMemoTemplate.tex as appropriate and copy them to your
	LaTeX template directory.

7. (Optional) Copy the ECULetter.pdf file to the appropriate location
	(in your preferred texmf directory tree or elsewhere).

8. Update the ls-R database file(s) for the texmf directory trees
	where you copied the various files.


## LaTeX File Search Path and texmf Directory Trees

By default, TeX programs will look for referenced files in the directory
from which the program is run.  If the file is not found, it searches
the various texmf directory trees: the user texmf directory tree, the
system-level local texmf directory tree, and the system-level
distribution texmf directory tree.  The locations of these trees vary by
system-type. 

```
    User texmf Directory
    
        You can determine this directory on your machine with the command

            kpsewhich -var-value=TEXMFHOME
        
        Here are the locations on some systems:

        MacOS (MacTeX/TeXLive): ~/Library/texmf
        Linux (TeXLive): ~/texmf
        Windows (MikTex): C:\Users\<user name>\Appdata\Local\MikTex\<number>

    System-Local texmf Directory

        You can determine this directory on your machine with the command

            kpsewhich -var-value=TEXMFLOCAL
        
        Here are the locations on some systems:
    
        MacOS (MacTeX/TeXLive): /usr/local/texlive/texmf-local
        Linux (TeXLive): /usr/local/share/texmf
```

TeX-related programs search the user texmf directory tree first,
followed by the system-level local texmf directory tree, and then the
system-level distribution texmf directory tree. As a rule, you should
install user-specific items in the user texmf directory tree and items
for all users in the system-level local texmf directory tree.

## Copyright and License

Copyright (C) 2017 by Mark W. Sprague
This file and the TeX files in this disribution may be distributed
and/or modified under the conditions of the LaTeX Project Public
License, either version 1.3 of this license or (at your option) any
later version. The latest version of this license is in:

    http://www.latex-project.org/lppl.txt

and version 1.3 or later is part of all distributions of LaTeX version
2005/12/01 or later.
