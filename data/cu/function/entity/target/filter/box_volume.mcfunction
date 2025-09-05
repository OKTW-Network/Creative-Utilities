$execute positioned ~$(anchor1_offsetX) ~$(anchor1_offsetY) ~$(anchor1_offsetZ) run tag @e[dx=$(sizeX),dy=$(sizeY),dz=$(sizeZ)] add cu._tag.entity.target.filterCandidate
$execute positioned ~$(anchor2_offsetX) ~$(anchor2_offsetY) ~$(anchor2_offsetZ) run tag @e[tag=cu._tag.entity.target.filterCandidate,dx=$(sizeX),dy=$(sizeY),dz=$(sizeZ)] remove cu._tag.entity.target.selected
tag @e remove cu._tag.entity.target.filterCandidate
