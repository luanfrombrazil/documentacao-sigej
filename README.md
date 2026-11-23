# Documentação do SIGEJ

Documentação do Sistema de Gestão de Empresa Júnior (Lab. de Modelagem de Sistemas, CEFET-MG Timóteo).
O compilador LaTeX roda num container Docker descartável (TeX Live 2025 completo), então ninguém precisa instalar LaTeX.

## Pré-requisitos

- Docker Desktop (precisa estar aberto só na hora de compilar)
- VS Code com a extensão **LaTeX Workshop**

## Trabalhando no VS Code

1. Abra esta pasta no VS Code normalmente.
2. Edite os `.tex`. Ao salvar, o LaTeX Workshop sobe um container, compila e o `monografia.pdf` aparece nesta pasta.
   Na primeira compilação a imagem (~5 GB) é baixada.
3. Para ver o PDF ao lado: `Ctrl+Alt+V`.

## Compilando pelo terminal

```powershell
docker run --rm -v "${PWD}:/workdir" -w /workdir texlive/texlive:TL2025-historic latexmk
```

## Estrutura

- `monografia.tex` — arquivo principal; inclui os capítulos `01-…` a `10-…`
- `abntex2-cefetmg-timoteo.sty` — capa e folha de rosto do CEFET-MG Timóteo
- `bibfile.bib` — referências
- `fig/`, `Telas/` e a raiz — imagens (`\graphicspath`)
- `build/` — arquivos auxiliares da compilação (ignorado pelo git)
