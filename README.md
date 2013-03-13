vimux-zeus
==========

[vimux](https://github.com/benmills/vimux) and
[zeus](https://github.com/burke/zeus) in action.

Installation
============

Put the contents of this directory into your pathogen bundle.

Usage
=====

The function `ZeusCommand(cmd, args)` is the core of vimux-zeus. It will
run a zeus command in a vimux window:

    :call ZeusCommand("rake", "spec")

There are also a number of pre-defined [commands](#commands). You can easily map
them as needed like this:

    map <Leader> zc :ZeusConsole<CR>
    map <Leader> zr :ZeusRake spec<CR>
    map <Leader> zg :ZeusGenerate<space>

Commands
========

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

Requirements
============

* [vimux](https://github.com/benmills/vimux)
* [zeus](https://github.com/burke/zeus)
