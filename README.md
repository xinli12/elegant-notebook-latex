# Welcome to the Elegant Notebook LaTeX Template!

This professional and highly customisable LaTeX template is designed to help you create stunning, professional documents for your academic and research work without the fuss. It blends a clean, modern design with powerful theming options to make your notes and papers shine.

## Features

- **Professional Design**: A beautifully balanced layout, optimised for academic writing.
- **Rich Theming**: Choose from over 17 colour schemes and 7 font themes to match your style.
- **Effortless Theming**: Switch between font and colour themes with a single, simple command.
- **Bespoke Environments**: Includes beautifully styled boxes for notes, examples, and code listings.
- **Full Mathematical Support**: Complete AMS-LaTeX integration for all your equations.
- **Seamless Bibliography**: Built-in BibLaTeX support for easy referencing.
- **Diagrams and Illustrations**: Full TikZ integration for creating beautiful diagrams.

## Quick Start

### What You'll Need
- A LaTeX distribution (such as TeX Live, MiKTeX, or MacTeX)
- A LaTeX editor (like Overleaf, TeXStudio, or VS Code)
- `biber` (optional, but recommended for bibliography support)

### Getting Started in Three Simple Steps
1. **Personalise Your Document**: Open `config/metadata.tex` to add your title, author, and institution.
2. **Pick Your Style**: In `elegant-notebook.tex`, use the `\usetheme{font-theme}{colour-theme}` command to select your favourite look.
3. **Compile Your Masterpiece**: Run the provided scripts to bring your document to life.

### Compiling Your Document

**Basic compilation** (without bibliography):
```bash
./simple-compile.sh
```

**Full compilation** (with bibliography):
```bash
./compile.sh
```

## The Theme System

Choosing your theme is as simple as one command in `elegant-notebook.tex`:

```latex
\usetheme{font-theme}{colour-theme}

% Examples
\usetheme{modern}{cambridge-blue}
\usetheme{elegant}{vintage-rose}
```

### Font Themes
- **Modern**: A contemporary pairing of Charter and Bera Sans (our default choice).
- **Classic**: A timeless, traditional look with Palatino and TeX Gyre Heros.
- **Elegant**: A refined and graceful style featuring EB Garamond and Source Sans Pro.
- **Academic**: The cohesive Libertinus family, perfect for academic papers.
- **Scientific**: Crisp STIX Two and Cabin, designed for scientific content.
- **Professional**: A sharp, professional look with an enhanced Palatino and Source Sans Pro.
- **Contemporary**: A clean, modern feel with Fira Sans and matching mathematics.

### Colour Themes

**Cambridge Family**: cambridge-blue (default), cambridge-classic, cambridge-forest, cambridge-sunset, cambridge-river

**Oxford Family**: oxford-blue, oxford-mist, oxford-monochrome

**Sky Family**: summer-skies, aurora-skies, twilight-skies, midnight-skies

**Others**: vintage-rose, emerald, royal-purple, arctic, autumn

## Project Structure

```
├── elegant-notebook.tex    # Main document - your guide and canvas
├── references.bib          # Bibliography file
├── compile.sh              # Full compilation script
├── simple-compile.sh       # Basic compilation script
├── test-themes.tex         # Theme preview tool
└── config/                 # Your customisation hub
    ├── colours.tex         # Colour theme definitions
    ├── metadata.tex        # Document metadata (title, author, etc.)
    ├── settings.tex        # Core package imports and style settings
    ├── theme.tex           # The theme switching system
    └── title-page.tex      # The title page layout
```

## Customisation

This template has been designed with easy customisation in mind:

1. **Metadata**: Pop your details into `config/metadata.tex`.
2. **Themes**: Use the `\usetheme{font}{colour}` command to find your perfect look.
3. **Custom Colours**: Fancy creating your own theme? It's easy to do in `config/colours.tex`.
4. **Layout**: Fine-tune the layout in `config/settings.tex`.
5. **Title Page**: Customise the title page in `config/title-page.tex`.

## Usage Examples

The `elegant-notebook.tex` file itself serves as a comprehensive guide, but here are a few quick examples:

### Custom Environments
```latex
\begin{notetbox}
    This is the perfect place for important information or warnings.
\end{notetbox}

\begin{exampletbox}
    Use this box for examples and demonstrations.
\end{exampletbox}
```

### Code and Mathematics
```latex
Use \inlinecode{code} for short, inline code snippets.

\begin{lstlisting}[language=Python]
def example():
    return "Hello, World!"
\end{lstlisting}

\begin{align}
    f(x) &= (x - 1)^2 \\
    f'(x) &= 2(x - 1)
\end{align}
```

## Creating Custom Themes

You can easily create your own colour themes. Just add a new definition in `config/colours.tex`:

```latex
\ifdefstring{\activetheme}{my-theme}{%
    \definecolor{maincolor}{RGB}{76,40,130}       % Primary colour
    \definecolor{accentcolor}{RGB}{212,175,55}    % Secondary colour
    \definecolor{highlightcolor}{RGB}{220,20,60}  % Highlight colour
    % ... additional colour definitions
}{}
```

Then use it with: `\usetheme{modern}{my-theme}`

## Testing Themes

Want to preview your theme choices? We've included a handy testing tool to make it simple:

```bash
# Edit test-themes.tex to select a theme, then run:
./test-themes.sh
```

## Best Practices

- Keep your work organised with a clear section structure.
- Use the provided environments for a cohesive look and feel.
- Pick a theme that reflects the tone of your document.
- Always use `./compile.sh` for a full compilation, especially when using references.
- Working with others? We recommend using version control.

## Contributing

We welcome contributions! Feel free to open a pull request or raise an issue with your ideas for improvements and bug fixes.

## Licence

This project is released under the MIT Licence. See the `LICENSE` file for more details.