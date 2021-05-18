# PML Reference Manual

This repository contains the PML markup code used to create the [PML Reference Manual](https://www.pml-lang.dev/docs/reference_manual/index.html).

## Note

The PML code in this repository has been created automatically by the _PML-Converter_'s `create_reference_manual` command. The text is extracted from the converter's [PPL source code](https://github.com/pml-lang/converter). The reason for publishing the PML code in this repository is to enable people to submit pull requests and start discussions to improve the reference manual.

## Create an HTML version

After [installing](https://www.pml-lang.dev/downloads/install.html) the _PML-Converter_, you can create an HTML version of the reference manual like this:
- Open a terminal in the root directory of your local copy of this repository
- Execute an OS command like the following one:
  
  `pmlc convert --input_file input/text/index.pml`

## More info

For more information about PML please visit its [website](https://www.pml-lang.dev).