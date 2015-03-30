# bash-require

An attempt at making a `require` style package system work with BASH scripting.

[![NPM](https://nodei.co/npm/bash-require.png)](https://nodei.co/npm/bash-require/)

## Example Usage

For the top level script that you with to make use of this, first create a `package.json` file as you would by launching `npm init`.  Once this process is completed, install the `bash-require` package using the following command:

```
npm install bash-require --save
```

Then start writing your shell script:

```sh
#!/usr/bin/env bash

# bootstrap the bash require environment
source $(dirname $0)/node_modules/bash-require/index.sh
```

As an example, try taking the `bash-colorize` package for a spin:

First install the package (I'll publish it to NPM once I've worked out whether this is a good idea or not):

```
npm install DamonOehlman/bash-colorize --save
```

The write your script:

```sh
#!/usr/bin/env bash

# bootstrap the bash require environment
source $(dirname $0)/node_modules/bash-require/index.sh

require colorize

echo -en "$(colorize red)Hello $(colorize yellow)There!\n"
````

Then take if for a spin:

```
chmod a+x test.sh
./test.sh
```

All being well, you should see something similar to what is shown below:

![screenshot](https://raw.githubusercontent.com/DamonOehlman/bash-require/master/screenshot.png)

## License(s)

### ISC

Copyright (c) 2015, Damon Oehlman <damon.oehlman@gmail.com>

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
