# 1.1) Load the package into R:
library(immunarch)

# 1.2) Replace with the path to the folder with your processed MiXCR data.
file_path = "/mnt/f/Dongfang/BTCR/data/"

# 1.3) Load MiXCR data with repLoad
immdata_mixcr <- repLoad(file_path)

exp_vol <- repExplore(immdata_mixcr$data, .method = "volume")
p1 <- vis(exp_vol, .meta = immdata_mixcr$meta)
exp_len <- repExplore(immdata_mixcr$data, .method = "len", .col = "aa")
p2 <- vis(exp_len, .meta = immdata_mixcr$meta)

exp_cnt <- repExplore(immdata_mixcr$data, .method = "count")
P3 <- vis(exp_cnt)

imm_pr <- repClonality(immdata_mixcr$data, .method = "clonal.prop")
imm_top <- repClonality(immdata_mixcr$data, .method = "top", .head = c(10, 100, 1000, 3000, 10000))
imm_rare <- repClonality(immdata_mixcr$data, .method = "rare")
imm_hom <- repClonality(immdata_mixcr$data,
  .method = "homeo",
  .clone.types = c(Small = .0001, Medium = .001, Large = .01, Hyperexpanded = 1)
)
vis(imm_pr)
vis(imm_top)
vis(imm_rare)
vis(imm_hom)
## Repertoire overlap
imm_ov1 <- repOverlap(immdata_mixcr$data, .method = "public", .verbose = F)
imm_ov2 <- repOverlap(immdata_mixcr$data, .method = "morisita", .verbose = F)

p1 <- vis(imm_ov1)
p2 <- vis(imm_ov2, .text.size = 2)

p1 + p2


pr.nt <- pubRep(immdata_mixcr$data, "nt", .verbose = F)