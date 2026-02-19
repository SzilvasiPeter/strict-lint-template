let ci_src = "template/workflows/ci.yml";
let ci_dst = ".github/workflows/ci.yml";
if file::exists(ci_src) {
  if file::exists(ci_dst) {
    file::delete(ci_dst);
  }
  file::rename(ci_src, ci_dst);
}

let cd_publish_src = "template/workflows/cd-publish.yml";
let cd_publish_dst = ".github/workflows/cd-publish.yml";
if file::exists(cd_publish_src) {
  if file::exists(cd_publish_dst) {
    file::delete(cd_publish_dst);
  }
  file::rename(cd_publish_src, cd_publish_dst);
}

let release_binary = variable::get("release_binary");
if release_binary {
  let cd_binary_src = "template/workflows/cd-binary.yml";
  let cd_binary_dst = ".github/workflows/cd-binary.yml";
  if file::exists(cd_binary_src) {
    if file::exists(cd_binary_dst) {
      file::delete(cd_binary_dst);
    }
    file::rename(cd_binary_src, cd_binary_dst);
  }
}

file::delete(".github/workflow/.gitkeep");
