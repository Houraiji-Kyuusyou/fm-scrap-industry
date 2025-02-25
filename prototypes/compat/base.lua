-- Even I hesitate to enable this, but here it is
local mercy_mode = not settings.startup["scrap-industry-no-mercy"].value
local expensive_mode = mods["Expensive-Mode"]

ScrapIndustry.products["iron-scrap"] = {priority=1}
ScrapIndustry.products["copper-scrap"] = {priority=1}
ScrapIndustry.products["steel-scrap"] = {priority=2}
ScrapIndustry.categories["smelting"] = {ignore=true}
ScrapIndustry.items["iron-plate"] = {scrap="iron-scrap", scale=0.12, failrate=0.01, recycle=2}
ScrapIndustry.items["iron-gear-wheel"] = {scrap="iron-scrap", scale=0.18, failrate=0.02}
ScrapIndustry.items["iron-stick"] = {scrap="iron-scrap", scale=0.06, failrate=0.02}
ScrapIndustry.items["pipe"] = {scrap="iron-scrap", scale=0.12, failrate=0.01}
ScrapIndustry.items["copper-plate"] = {scrap="copper-scrap", scale=0.12, failrate=0.01, recycle=2}
ScrapIndustry.items["copper-cable"] = {scrap="copper-scrap", scale=0.08, failrate=0.02}
ScrapIndustry.items["steel-plate"] = {scrap="steel-scrap", scale=0.24, failrate=0.03, recycle=expensive_mode and 10 or 5}
if mercy_mode then
  ScrapIndustry.recipes["iron-gear-wheel"] = {ignore=true}
  ScrapIndustry.recipes["iron-stick"] = {ignore=true}
  ScrapIndustry.recipes["copper-cable"] = {ignore=true}
end

ScrapIndustry.products["stone"] = {priority=0.5}
ScrapIndustry.items["stone"] = {scrap="stone", scale=0.08, failrate=0.03}
ScrapIndustry.items["stone-brick"] = {scrap="stone", scale=0.16, failrate=0.02}
ScrapIndustry.items["concrete"] = {scrap="stone", scale=0.24, failrate=0.01}
ScrapIndustry.items["refined-concrete"] = {scrap="stone", scale=0.36}
ScrapIndustry.items["landfill"] = {scrap="stone", scale=0.48, failrate=0.01}
ScrapIndustry.recipes["landfill"] = {ignore=true}
ScrapIndustry.recipes["hazard-concrete"] = {ignore=true}
ScrapIndustry.recipes["refined-hazard-concrete"] = {ignore=true}

ScrapIndustry.products["uranium-ore"] = {priority=5}
ScrapIndustry.items["uranium-238"] = {scrap="uranium-ore", scale=0.06, failrate=0.02}
ScrapIndustry.items["uranium-235"] = {scrap="uranium-ore", scale=0.09, failrate=0.01}
ScrapIndustry.recipes["kovarex-enrichment-process"] = {failrate=0}

ScrapIndustry.products["circuit-scrap"] = {priority=4}
ScrapIndustry.items["electronic-circuit"] = {scrap="circuit-scrap", scale=0.12, failrate=0.03}
ScrapIndustry.items["advanced-circuit"] = {scrap="circuit-scrap", scale=0.24, failrate=0.02}
ScrapIndustry.items["processing-unit"] = {scrap="circuit-scrap", scale=0.48, failrate=0.01}
ScrapIndustry.recipes["electronic-circuit"] = {self_scrap=true}
ScrapIndustry.recipes["advanced-circuit"] = {failrate=0.02}
ScrapIndustry.recipes["processing-unit"] = {failrate=0.01}

ScrapIndustry.items["low-density-structure"] = {scrap={"copper-scrap", "steel-scrap"}, scale=0.32, failrate=0.01}
ScrapIndustry.items["engine-unit"] = {scrap={"iron-scrap", "steel-scrap"}, scale=0.52, failrate=0.02}
ScrapIndustry.items["electric-engine-unit"] = {scrap={"steel-scrap", "circuit-scrap"}, scale=0.72, failrate=0.02}
ScrapIndustry.items["flying-robot-frame"] = {scrap={"steel-scrap", "circuit-scrap"}, scale=0.72, failrate=0.01}
ScrapIndustry.recipes["assembling-machine-2"] = {failrate=0.02}

if settings.startup["scrap-industry-plastic"].value then
  ScrapIndustry.products["plastic-bits"] = {priority=3}
  ScrapIndustry.items["plastic-bar"] = {scrap="plastic-bits", scale=0.12, failrate=0.02}
  table.insert(ScrapIndustry.items["low-density-structure"].scrap, "plastic-bits")
  ScrapIndustry.items["raw-fish"] = {scrap="plastic-bits", scale=0.03, failrate=0.01} -- microplastics, it makes me sad too
end

ScrapIndustry.items["speed-module"] = {scrap="circuit-scrap", scale=0.36, failrate=-0.01}
ScrapIndustry.items["efficiency-module"] = {scrap="circuit-scrap", scale=0.36, failrate=-0.01}
ScrapIndustry.items["productivity-module"] = {scrap="circuit-scrap", scale=0.36, failrate=-0.01}
ScrapIndustry.items["speed-module-2"] = {scrap="circuit-scrap", scale=0.72, failrate=-0.02}
ScrapIndustry.items["efficiency-module-2"] = {scrap="circuit-scrap", scale=0.72, failrate=-0.02}
ScrapIndustry.items["productivity-module-2"] = {scrap="circuit-scrap", scale=0.72, failrate=-0.02}
ScrapIndustry.items["speed-module-3"] = {scrap="circuit-scrap", scale=1.44, failrate=-0.03}
ScrapIndustry.items["efficiency-module-3"] = {scrap="circuit-scrap", scale=1.44, failrate=-0.03}
ScrapIndustry.items["productivity-module-3"] = {scrap="circuit-scrap", scale=1.44, failrate=-0.03}

ScrapIndustry.products["automation-science-pack"] = {ignore=true}
ScrapIndustry.products["logistic-science-pack"] = {ignore=true}
ScrapIndustry.products["chemical-science-pack"] = {ignore=true}
ScrapIndustry.products["military-science-pack"] = {ignore=true}
ScrapIndustry.products["production-science-pack"] = {ignore=true}
ScrapIndustry.products["utility-science-pack"] = {ignore=true}
ScrapIndustry.products["space-science-pack"] = {ignore=true}

ScrapIndustry.categories["rocket-building"] = {ignore=true}
