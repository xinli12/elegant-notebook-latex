# Elegant Notebook LaTeX Template

A professional, customisable LaTeX template for academic and research work. This template provides a clean, modern design with flexible theming options and seamless document styling.

![Elegant Notebook Template](https://via.placeholder.com/800x400?text=Elegant+Notebook+Preview)

## Features

- **Elegant Design**: Clear typography and balanced layout for academic and technical writing
- **Comprehensive Theming**: 17+ professionally designed colour schemes and 7 font themes
- **Simple One-Step Theming**: Change both font and colour themes with a single command
- **Custom Environments**: Professional note boxes, example blocks, and highlighted sections
- **Code Listings**: Beautiful code blocks with syntax highlighting
- **Mathematical Support**: Comprehensive mathematics typesetting with AMS-LaTeX
- **Reference Management**: Built-in bibliography support with BibLaTeX
- **TikZ Integration**: Support for creating diagrams and illustrations
- **Responsive Design**: Optimised for both print and screen reading

## Getting Started

### Prerequisites

- A LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- A LaTeX editor (Overleaf, TeXStudio, VS Code with LaTeX Workshop, etc.)
- For bibliography support: `biber` package (optional but recommended)

### Quick Start

1. Clone or download this repository
2. Edit the metadata in `config/metadata.tex` to personalise your document
3. Choose a theme with the `\usetheme{font-theme}{colour-theme}` command near the top of `elegant-notebook.tex`
4. Start writing your content in `elegant-notebook.tex`
5. Compile using one of the provided scripts

### Compilation

#### Basic Compilation (without bibliography)

For quick testing and previewing without bibliography processing:

```bash
./simple-compile.sh
```

#### Full Compilation (with bibliography)

For complete compilation with bibliography support (requires `biber`):

```bash
./compile.sh
```

Or manually:

```bash
pdflatex elegant-notebook
biber elegant-notebook
pdflatex elegant-notebook
pdflatex elegant-notebook
```

## Theme System

The template features a simplified theme switching system. To change both font and colour themes at once, use the `\usetheme` command near the top of your main document:

```latex
% Select your theme - first parameter is font theme, second is color theme
\usetheme{font-theme}{color-theme}

% Example: Modern fonts with Oxford Blue theme
\usetheme{modern}{oxford-blue}

% Example: Elegant fonts with Vintage Rose theme
\usetheme{elegant}{vintage-rose}
```

### Font Themes

The template includes seven professionally designed font pairings:

- **modern**: Contemporary look with Charter and Bera Sans (default)
- **classic**: Traditional academic style with Palatino and TeX Gyre Heros
- **elegant**: Refined style with EB Garamond and Source Sans Pro
- **academic**: Cohesive Libertinus family for academic papers
- **scientific**: STIX Two and Cabin optimised for scientific content
- **professional**: Enhanced Palatino clone with Source Sans Pro for a business look
- **contemporary**: Modern Fira Sans with matching mathematics support

### Colour Themes

The template comes with 17+ built-in colour themes:

- **Cambridge family**:
  - **cambridge-blue** (default): The official University of Cambridge blue
  - **cambridge-classic**: Cambridge blue with dark blue and gold accents
  - **cambridge-forest**: Cambridge blue with forest green and autumn gold accents
  - **cambridge-sunset**: Cambridge blue with sunset orange and golden accents
  - **cambridge-river**: Cambridge blue with river blue and mist accents

- **Oxford family**:
  - **oxford-blue**: Deep Oxford blue with Oxford red and gold accents
  - **oxford-mist**: Oxford blue with dusty blue and mist lavender
  - **oxford-monochrome**: Oxford blue with charcoal and subtle violet tones

- **Sky family**:
  - **summer-skies**: Bright sky blue with sunshine yellow accents
  - **aurora-skies**: Northern blue with aurora green and purple
  - **twilight-skies**: Twilight blue with purple and sunset gold
  - **midnight-skies**: Deep midnight blue with starlight accents

- **Other themes**:
  - **vintage-rose**: Dusty rose with muted berry and peach highlights
  - **emerald**: Rich emerald green with ocean blue and golden accents
  - **royal-purple**: Royal purple with gold and crimson accents
  - **arctic**: Arctic blue with ice blue highlights
  - **autumn**: Warm sienna and burnt orange tones with cream backgrounds

### Custom Themes

You can create your own theme by defining a new theme in `config/colours.tex`:

```latex
% In config/colours.tex:
\ifdefstring{\activetheme}{my-custom-theme}{%
    \definecolor{maincolor}{RGB}{76,40,130}       % Royal Purple
    \definecolor{accentcolor}{RGB}{212,175,55}    % Gold
    \definecolor{highlightcolor}{RGB}{220,20,60}  % Crimson
    \definecolor{codebg}{RGB}{245,240,255}        % Light purple background
    \definecolor{codefg}{RGB}{50,30,80}           % Dark purple foreground
    \definecolor{softgray}{RGB}{200,190,210}      % Purple-tinted grey
    \definecolor{titlepagebg}{RGB}{240,235,250}   % Soft purple background
    \definecolor{inlinecodebg}{RGB}{235,230,250}  % Richer purple for inline code
    \definecolor{inlinecodefg}{RGB}{90,50,150}    % Deeper royal purple for inline code
}{}

% Then in elegant-notebook.tex:
\usetheme{modern}{my-custom-theme}
```

## Project Structure

```
├── elegant-notebook.tex    # Main document
├── references.bib          # Bibliography file
├── README.md               # Documentation
├── compile.sh              # Full compilation script
├── simple-compile.sh       # Basic compilation script
├── test-themes.tex         # Theme preview tool
├── test-themes.sh          # Script to test themes
├── LICENSE                 # MIT Licence
└── config/                 # Configuration files
    ├── colours.tex         # Colour themes
    ├── metadata.tex        # Document metadata
    ├── settings.tex        # Package imports and settings
    ├── theme.tex           # Theme switching functionality
    └── title-page.tex      # Title page layout
```

## Customisation

The template is designed to be easily customisable without extensive LaTeX knowledge:

1. Edit `config/metadata.tex` to set your document title, author, and other details
2. Choose a theme with `\usetheme{font-theme}{colour-theme}` at the top of your document
3. Modify `config/colours.tex` to create your own colour scheme
4. Adjust page layout, margins, and other settings in `config/settings.tex`
5. Customise the title page design in `config/title-page.tex`

## Usage Examples

### Using Note Boxes

```latex
\begin{notetbox}
    Important information goes here.
    
    Multiple paragraphs are supported.
\end{notetbox}
```

### Using Example Boxes

```latex
\begin{exampletbox}
    This is an example that demonstrates a concept.
    
    You can include equations: $E = mc^2$
\end{exampletbox}
```

### Inline Code

```latex
Use \inlinecode{code} for inline code snippets.
```

### Code Listings

```latex
\begin{lstlisting}[language=Python, caption={Example code}, label={lst:example}]
def hello_world():
    print("Hello, world!")
\end{lstlisting}
```

### Mathematics Support

```latex
\begin{align}
    f(x) &= x^2 - 2x + 1 \\
    f'(x) &= 2x - 2
\end{align}
```

### TikZ Diagrams

```latex
\begin{tikzpicture}[node distance=2cm, auto, >=Latex]
    \tikzstyle{block} = [rectangle, draw, fill=maincolor!20, rounded corners]
    \tikzstyle{line} = [draw, -{Stealth}, thick, color=accentcolor]

    \node [block] (init) {Initialise};
    \node [block, right=of init] (process) {Process Data};
    \node [block, right=of process] (output) {Output Results};

    \path [line] (init) -- (process);
    \path [line] (process) -- (output);
\end{tikzpicture}
```

## Testing Themes

The template includes a theme testing tool to help you visualize different theme options:

```bash
# Open test-themes.tex and uncomment the theme combination you want to test
# Then run:
./test-themes.sh
```

This will generate a PDF that showcases the selected theme, including typography, code blocks, and custom boxes.

## Best Practices

- Keep your document structure organised with clear section hierarchy
- Use the provided environments consistently for better visual coherence
- Choose a colour and font theme that matches the tone of your document
- Compile with `./compile.sh` for the best results, especially when using references
- For collaborative work, consider using version control for your LaTeX files

## Contributing

Contributions are welcome! If you have improvements or bug fixes, please feel free to submit a pull request or open an issue.

## Licence

This template is released under the MIT Licence - see the LICENSE file for details.