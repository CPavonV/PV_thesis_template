+# PhD Thesis LaTeX Template

**Original Author:** Carlos Pavon.

**Created:** January 2020.

**Last Modified:** 26 May 2025.

[View the PDF](./Phd_thesis_template.pdf)

---

## Description

This is a customizable LaTeX template for PhD theses at the **Università degli Studi di Salerno**, designed specifically for candidates enrolled in the **National PhD on Photovoltaics**.

It includes institutional branding, recommended formatting, and pre‑configured environments to simplify the thesis writing and submission process.

---

## Usage

* **Free for non‑commercial academic use.**
* Modifiable and shareable **within the National PhD on Photovoltaics** program.
* Recommended for **official submissions and archiving purposes**.

---

## Change Log

* **v1.0** – Initial release, including institutional header
* **v1.1** – Adjustments for National PhD program: formatting refinements, enhanced comments, and improved package management
* **v1.2** – Introduced new class 'pv_phd.cls' for scalability and improved structure. Added support for multiple universities

## Compilation Requirements

> **Recommended:** For a smoother experience, it is strongly suggested to use [Overleaf](https://www.overleaf.com/), an online LaTeX editor that simplifies compilation and collaboration.

Ensure the following files and directories are present for successful LaTeX compilation:

```text

PhDThesis/
├── logo_unisa.png         # Institutional logo
├── logo_zyxw.png          # Second Institutional logo
├── main.tex               # Main LaTeX file
├── pv_phd.cls             # Class LaTeX file
├── references.bib         # Bibliography file
├── Sections/              # Each chapter/section as a separate .tex file
│   ├── Introduction.tex
│   ├── Methods.tex
│   ├── Results.tex
│   └── Conclusion.tex
└── Figures/               # All figures grouped by chapter or section
    ├── image.png
    ├── chapter1/
    │   ├── fig1.pdf
    │   └── fig2.png
    └── chapter2/
        └── fig3.pdf
```

> **Tip:** Feel free to add more sub‑folders inside `Sections/` and `Figures/` (e.g. `Appendices/`, `Tables/`)—LaTeX will find them as long as the relative paths are correct in `main.tex`.

---

## Notes

* This template includes dummy text (Lorem Ipsum) and placeholders for images and tables, providing examples of usage.
* Aims to help PhD candidates focus more on writing and research, rather than formatting.

---

## Good Luck!

Wishing all PhD candidates a **productive and smooth writing experience**!
