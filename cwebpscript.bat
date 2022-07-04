@echo off

 ::cwebp-script allow to use cwebp for many files in a directory
 ::   Copyright (C) 2022  David Bueno Vallejo
::
 ::   This program is free software: you can redistribute it and/or modify
::    it under the terms of the GNU General Public License as published by
::    the Free Software Foundation, either version 3 of the License, any later version.
::
::    This program is distributed in the hope that it will be useful,
::    but WITHOUT ANY WARRANTY; without even the implied warranty of
::    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
::    GNU General Public License for more details.
::
::    The GNU General Public License can be found in <https://www.gnu.org/licenses/>.
:: 
echo Convirtiendo todos los archivos .jpg y .png a Webp
echo --------------------------------------------------------------- 

for %%f in (*.jpg *.png ) do (
    @echo "%%f ->  %%~nf.webp"
    cwebp %%f -o  %%~nf.webp
)
echo --------------------------------------------------------------- 
echo Archivos convertidos...
for %%f in (*.jpg *.png ) do (
    @echo "%%f ->  %%~nf.webp"    
)
echo --------------------------------------------------------------- 

echo Conversion Terminada %i%.
echo Por David Bueno Vallejo (davidbuenov.com)