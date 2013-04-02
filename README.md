# vimux-zeus

[vimux](https://github.com/benmills/vimux) and
[zeus](https://github.com/burke/zeus) in action.

## Installation

Put the contents of this directory into your pathogen bundle.

## Usage

The function `ZeusCommand(cmd, args)` is the core of vimux-zeus. It will
run a zeus command in a vimux window:

    :call ZeusCommand("rake", "spec")

There are also a number of pre-defined [commands](#commands). You can easily map
them as needed like this:

    map <Leader>zc :ZeusConsole<CR>
    map <Leader>zr :ZeusRake spec<CR>
    map <Leader>zg :ZeusGenerate<space>

## Commands

* ZeusStart
* ZeusInit
* ZeusConsole
* ZeusCucumber
* ZeusTest
* ZeusRspec
* ZeusTestrb
* ZeusDestroy
* ZeusServer
* ZeusRunner
* ZeusDbconsole
* ZeusRake
* ZeusGenerate

## Requirements

* [vimux](https://github.com/benmills/vimux)
* [zeus](https://github.com/burke/zeus)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
