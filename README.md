# Example project: renv + Excel data (gitignored)

## Setup
1. Open `example-renv-excel.Rproj` in RStudio.
2. renv activates automatically. Install the locked packages with:
   ```r
   renv::restore()
   ```
3. Put the Excel file in `data/` (e.g. `data/example.xlsx`).
   The `data/` folder is in `.gitignore`, so data files are **never committed**.
4. Run `R/load_data.R`.

## Adding packages
```r
renv::install("pkgname")
renv::snapshot()   # updates renv.lock -> commit it
```
