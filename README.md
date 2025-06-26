# Determining the role of microstructural topology on the mechanical performance of nacre-inspired composites using a phase-field model

Bio-inspired composites are celebrated for their remarkable strength and fracture toughness, often surpassing the properties of their constituent materials. A prime example of this inspiration is the nacre which is approximately three thousand times tougher than its components and showcases not only high toughness but also high strength. This extraordinary performance is largely attributed to its intricate microstructure. However, engineered composites have faced challenges in achieving similar levels of toughness. Attempts to replicate the “brick–mortar” microstructure of nacre revealed that mere imitation falls short. Recent studies emphasize the critical influence of specific parameters, such as volume fraction, aspect ratio, and tablet waviness angle, on the microstructure effectiveness. Prior investigations, whether experimental, numerical, or analytical, underlined the importance of these parameters in shaping composite mechanical properties. However, many of these studies relied on commercial software with some inbuilt fracture criteria, often overlooking the potential benefits of incorporating a phase-field model for a more comprehensive parametric analysis. Our research delves into the impact of these parameters on the mechanical performance of nacre-inspired composites, utilizing a phase-field model based on Griffith’s fracture criteria for complex crack propagation modeling. We notably reveal the superior performance of geometrically interlocking architecture compared to non-interlocking and rectangular architecture, marking a pioneering parametric exploration of this microstructure using a phase-field model. We validate our findings through experimental and numerical data. In summary, our work demonstrates that by strategically adjusting microstructural parameters, one can achieve optimal performance enhancements in nacre-inspired engineered composites. For instance, even a slight alteration of the waviness angle while maintaining constant volume fraction and aspect ratio can yield a remarkable 16.23% increase in fracture energy. Our open-source finite element codes, implemented using the Julia-based Gridap package, offer a “virtual” experimental tool for designing bio-inspired composites with high toughness and reasonable strength. This approach also provides valuable insights into creating exceptionally tough multilayered composites with diverse constituent combinations, holding significant promise for applications in automotive, aerospace, armor, and beyond.

# See the details using the link below:

https://www.sciencedirect.com/science/article/abs/pii/S235249282302144X

# Cite this article:

@article{das2023determining,
  title={Determining the role of microstructural topology on the mechanical performance of nacre-inspired composites using a phase-field model},
  author={Das, Sounak and Pillai, Ayyappan Unnikrishna and Chemenghat, Anagha and Rahaman, Mohammad Masiur},
  journal={Materials Today Communications},
  volume={37},
  pages={107453},
  year={2023},
  publisher={Elsevier}
}

# Note that one needs to use 4.11.1 version of Gmsh software to generate the mesh. To use recent version of Gmsh, one may need to modify the code as per the requirement.

Gmsh version 4.13.1 includes several improvements and new features compared to 4.11.1, primarily in its CAD kernel (OpenCASCADE Technology - OCC) and meshing capabilities. Notable additions in 4.13.1 include support for importing and exporting XAO files,
new options for OCC boolean operations (like OCCBooleanCheckInverted, OCCBooleanGlue, OCCBooleanNonDestructive, OCCBooleanSimplify), and new OCC operations (2D fillets and chamfers, distance, defeature). Additionally, 4.13.1 introduces quasi-transfinite 
2D meshes with fans and some small API additions. Version 4.13.1 also features a fix for a regression introduced when reading binary .msh files with post-processing data.
