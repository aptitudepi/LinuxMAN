#!/usr/bin/env bash
man -k '' | while read sLine; do
    declare sName=$(echo $sLine | cut -d' ' -f1)
    declare sSection=$(echo $sLine | cut -d')' -f1|cut -d'(' -f2)
    echo "converting ${sName}(${sSection}) to ${sName}.${sSection}.pdf ..."
    man -Tpdf ${sSection} ${sName} > ${sName}.${sSection}.pdf
done
