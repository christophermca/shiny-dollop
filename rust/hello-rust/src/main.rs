use ferris_says::say;
use std::io::{stdout, BufWriter};

fn main() {
    let stdout = stdout();
    let message = b"Hey Y'all!";
    let width = 24;

    let mut writer = BufWriter::new(stdout.lock());
    say(message, width, &mut writer).unwrap();
}
