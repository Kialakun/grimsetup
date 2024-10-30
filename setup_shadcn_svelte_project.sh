#!/bin/bash

echo "Creating SveltKit app named $1"

npx sv create $1

npx sv add tailwindcss

npm install

echo "
# Setup path aliases

If you are not using the default alias $lib, you'll need to update your svelte.config.js file to include those aliases.
svelte.config.js

	
const config = {
  // ... other config
  kit: {
    // ... other config
    alias: {
      "@/*": "./path/to/lib/*",
    },
  },
};

# Then run the cli 

npx  shadcn-svelte@next init
"
