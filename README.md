# PhD Thesis LaTeX Template

**Original Author:** Ivan Colucci
**Revised & Adapted By:** Carlos Pavon
**Created:** January 2020
**Last Modified:** 23 May 2025

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

* **v1.0** – Initial release with institutional header (IC)
* **v1.1** – Adapted for National PhD program, formatting adjustments, comments, and package management (CP)
* **v1.2** – (Upcoming) Further improvements and refinements (XX)

---

## Compilation Requirements

Arrange your files in the following folder hierarchy (the top‑level folder name is arbitrary):

```text
PhDThesis/
├── main.tex               # Main LaTeX file
├── references.bib         # Bibliography file
├── logo_unisa.png         # Institutional logo
├── Sections/              # Each chapter/section as a separate .tex file
│   ├── Introduction.tex
│   ├── Methods.tex
│   ├── Results.tex
│   └── Conclusion.tex
└── Figures/               # All figures grouped by chapter or section
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
