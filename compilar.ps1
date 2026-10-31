# Compila a documentação sem VS Code: gera monografia.pdf nesta pasta.
# Uso: .\compilar.ps1          (compila uma vez)
#      .\compilar.ps1 -Watch   (recompila a cada alteração)
param([switch]$Watch)

$imagem = "sigej-latex"
docker build -t $imagem "$PSScriptRoot\.devcontainer"
$args_latexmk = @()
if ($Watch) { $args_latexmk += "-pvc", "-view=none" }
docker run --rm -it -v "${PSScriptRoot}:/workdir" -w /workdir $imagem latexmk @args_latexmk
