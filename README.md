# Documentação do SIGEJ

Documentação do Sistema de Gestão de Empresa Júnior (Lab. de Modelagem de Sistemas, CEFET-MG Timóteo).
O compilador LaTeX roda num container Docker (TeX Live 2025 completo), então ninguém precisa instalar LaTeX.

## Pré-requisitos

- Docker Desktop rodando
- VS Code com a extensão **Dev Containers** (`ms-vscode-remote.remote-containers`)

## Trabalhando no VS Code

1. Abra **esta pasta** (`documentacao-sigej`) no VS Code.
2. Clique em **Reopen in Container** no aviso (ou `F1` → *Dev Containers: Reopen in Container*).
   Na primeira vez a imagem (~5 GB) é baixada.
3. Edite os `.tex`. Ao salvar, o LaTeX Workshop compila e o `monografia.pdf` aparece nesta pasta.
   Para ver o PDF ao lado: `Ctrl+Alt+V`.

## Compilando sem VS Code

```powershell
.\compilar.ps1          # compila uma vez
.\compilar.ps1 -Watch   # recompila a cada alteração
```

## Estrutura

- `monografia.tex` — arquivo principal; inclui os capítulos `01-…` a `09-…`
- `abntex2-cefetmg-timoteo.sty` — capa e folha de rosto do CEFET-MG Timóteo
- `bibfile.bib` — referências
- `fig/`, `Telas/` e a raiz — imagens (`\graphicspath`)
- `build/` — arquivos auxiliares da compilação (ignorado pelo git)
