let ci_src = ".template/workflows/ci.yml";
let ci_dst = ".github/workflows/ci.yml";
if file::exists(ci_src) {
  if file::exists(ci_dst) {
    file::delete(ci_dst);
  }
  file::rename(ci_src, ci_dst);
}

let cd_src = ".template/workflows/cd.yml";
let cd_dst = ".github/workflows/cd.yml";
if file::exists(cd_src) {
  if file::exists(cd_dst) {
    file::delete(cd_dst);
  }
  file::rename(cd_src, cd_dst);
}
