# My Dotfiles

Hola a todos en este readme indico las instrucciones para configurar mi terminal.

# Configuración de WT
Al modificar el prompt utilizaremos iconos que no se encuntrar por defecto en las fuentes de Windows, así que descargate una fuente de [`NerdFonts`](https://github.com/ryanoasis/nerd-fonts/releases), yo recomiendo *Hack NF*.  

Para empezar a configurar nuestra terminal yad debe estar descargada la Windows Terminal, esta la puedes conseguir desde la tienda de Microsoft si no la tienenes, los usuarios de windows 11 la traen por defecto.  
Empezaremos actualiando la política de ejecuciónes de escript con el siguiente comando, pegalo y ejecutalo en tú terminal, este comando se ejecuta desde el modo administrador, y te recomiendo que no lo utilices amenos que sepas lo que haces.
   
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted

Por otro lado para los usuarios menos experimentados les recomiendo que ejecuten el siguiente, funcionan para el mimso fin, solo que este ejecuta los cambios para el usuario actual.  

    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

>¡Bien ahora podemos empezar!

En la terminal empezamos por instalar [`Scoop`](https://github.com/ScoopInstaller/Scoop) que en pocas palabras es un instlador de programas desde la línea de comandos. 
Ejecuta el comando desde tu terminal y acepta todo lo solicitado. 

    iwr -useb get.scoop.sh | iex

Una vez tengas instalador Scoop procederemos a instalar [`aria2`](https://github.com/aria2/aria2) que ayuda con las descargas de conexión multiple.

    scoop install aria2 

Ahora instalaremos [`Starship`](https://starship.rs/), para ello ejecutaremos el siguiente comando.  

    scoop install starship

Después de ello debemos de crear un perfil de powershell para ello, haremos lo siguiente.
Escribitemos en la terminal el siguiente comando, que abre el perfil de powershell creado.

    New-Item -Path $PROFILE -Type File -Force

Abriremos el perfil.

    code $profile

Pegaremos lo siguiente.

    Invoke-Expression (&starship init powershell)


Ahora instalaremos [`Terminal-Icons`](https://github.com/devblackops/Terminal-Icons), para ello ejecutaremos los siguientes comandos.

    scoop bucket add extras
    scoop install terminal-icons

Después nos dirigiremos a nuestro perfil nuevamente y pegaremos lo siguiente.

    Import-Module -Name Terminal-Icons

>Estamos listos para ejecutra un ls.

Modificaremos un poco el prompt del CMD.   

Te enseñare a hacer tu bandera y poner tu nombre en el prompt de CMD.
![CMD-Prompt](img/cmd01.png)

Para ello necesitaremos [`ColorTool`](https://github.com/Microsoft/Terminal/tree/main/src/tools/ColorTool) que es la herramienta con la cual veremos los colores. 
Una vez descargado extraeremos el archvio y desde la raíz del archivo ejecutamos el siguiente comando.  

    ColorTool.exe -c

La documentación para hacer esto la encontrarás en el archivo `PromptCMD.pdf`

>Solo queda agraderte por leer :) **Gracias!**
