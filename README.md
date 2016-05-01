# PNT

# Esboco do Roteiro (step-by-step) do script em R



1. define list os cities to be incorporated in the analysis


2. Download GTFS feeds

3. Download Pol-administrative polygons (admin_poly) 
source: http://www.gadm.org/

4. Download Population grid
Population residing in each 100x100m grid cell
source: http://www.worldpop.org.uk/data/summary/?contselect=America&countselect=Brazil&typeselect=Population


5. **complicated part**: Decide the boundaries of cities in the admin_poly

Analise na escala do municipio? area metropolitana?


6. Clip population data to match admin_poly


7. buffer stops with pop data `gBuffer {rgeos}`
	
8. analyze stats

9. plot maps and charts
