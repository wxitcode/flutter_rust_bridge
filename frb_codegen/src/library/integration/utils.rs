use anyhow::Result;
use include_dir::{Dir, DirEntry};
use log::debug;
use std::fs;
use std::path::{Path, PathBuf};

// ref: `Dir::extract`
pub(super) fn extract_dir_and_modify(
    d: &Dir,
    base_path: &Path,
    modifier: &impl Fn(&Path, &[u8], Option<Vec<u8>>) -> Option<(PathBuf, Vec<u8>)>,
    filter: &impl Fn(&Path) -> bool,
) -> Result<()> {
    for entry in d.entries() {
        let path_raw = base_path.join(entry.path());
        if !filter(&path_raw) {
            continue;
        }

        match entry {
            DirEntry::Dir(d) => {
                debug!("Create dir {path:?}");
                fs::create_dir_all(&path_raw)?;
                extract_dir_and_modify(d, base_path, modifier, filter)?;
            }
            DirEntry::File(f) => {
                debug!("Write to {path:?}");
                if let Some((modified_path, modified_data)) =
                    modifier(&path_raw, f.contents(), fs::read(&path_raw).ok())
                {
                    fs::write(&modified_path, modified_data)?;
                }
            }
        }
    }
    Ok(())
}
