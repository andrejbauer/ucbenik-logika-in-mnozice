#!/bin/bash
latexmk lmn.tex && scp lmn.pdf www.andrej.com:/var/www/andrej.com/zapiski/MAT-LMN-2021/
