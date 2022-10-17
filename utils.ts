// Random number between 0 and 50
export const random = (): number => {
  let steps = 0;

  while (steps < 1) {
    steps = Math.floor(Math.random() * 50); // Last number is limitation
  }

  return steps;
};

// Dir Changer
export const go = (location: string) => {
  Deno.chdir(location);
};

// Go to root
export const root = (): void => {
  go("/");
};

// Create a function that lists all folders in the current directory and returns names as an array
export const list = (): string[] => {
  const files = Deno.readDirSync(".");
  const names: string[] = [];
  for (const file of files) {
    // check if it is a directory
    if (file.isDirectory) {
      names.push(file.name);
    }
  }
  return names;
};

// Create a function that picks a random number between 0 and the length of the array
export const pick = (names: string[]): string => {
  const random = Math.floor(Math.random() * names.length);
  return names[random];
};

// Save the record to /tmp/locations.txt
export const save = (record: string): void => {
  const currentState = Deno.readTextFileSync("/tmp/locations.txt");
  const newState = currentState + record + "\n";
  Deno.writeTextFileSync("/tmp/locations.txt", newState);
}
