use std::fs;

fn main() {
    let contents = fs::read_to_string("./input.txt").expect("couldnt open file");
    let lines = contents.split("\n");

    let mut current_elf = 0;
    let mut current_cals = 0;

    let mut max_elf = 0;
    let mut max_cals = 0;

    for line in lines {
        match line {
            "" => {
                current_elf += 1;
                current_cals = 0;
            }
            _ => {
                let value = line.parse::<i32>().unwrap();
                current_cals += value;

                if current_cals > max_cals {
                    max_cals = current_cals;
                    max_elf = current_elf;
                }
            }
        }
    }

    print!("max_elf: {} max_cals: {}\n", max_elf, max_cals);
}

