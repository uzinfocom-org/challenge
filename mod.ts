import { go, list, pick, random, root } from "./utils.ts";
import { join } from "https://deno.land/std@0.159.0/path/mod.ts";

// 1. Generate a random number as steps count
// 2. Go to root
// 3. List all files and directories and save only directories as an array
// 4. Pick a random number between 0 and the length of the array
// 5. Go to the directory of the random number, if there is no directory, stop here
// 6. Repeat steps 3-5 until the steps count is 0
// 7. Create a file at the stopped directory with the text "This is a secret message"
// 8. Save the path of the file in a file called "locations.txt" at working directory
// 9. Repeat steps 1-8 100 times

const main = () => {
  // Save the current location
  const saveLocation = Deno.cwd();
  
  attempt:
  for (let i = 0; i < 100; i++) {
    root();
    const steps = random();
    for (let j = 0; j < steps; j++) {
      const folders = list();

      // If there is no folder, stop here
      if (folders.length === 0) {
        break;
      }

      const folder = pick(folders);
      try {
        go(folder);
      } catch (_) {
        i -= 1;
        continue attempt;
      }
    }

    // Create a file at the stopped directory with the text "This is a secret message"
    Deno.writeTextFileSync("secret.txt", "This is a secret message");

    // Append the path of the file in a file called "locations.txt" at save point
    const currentState: string = Deno.readTextFileSync(
      join(saveLocation, "locations.txt")
    );
    const newState: string = currentState + Deno.cwd() + "secret.txt" + "\n";
    Deno.writeTextFileSync(saveLocation + "locations.txt", newState);
  }
};

main();
