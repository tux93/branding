#!/bin/sh

SVGCONVERT=

ICONTEST=`echo ${3} | grep "icon$"`
if [ ! -z "${ICONTEST}" ]; then
    exit 0
fi

ICONNAME=`echo ${3} | sed -e "s/.svg//"`
if test `basename $SVGCONVERT` = "inkscape"; then
    OPTIONS="-w ${1} -h ${1}"
    EXTRA="-e "
else
    OPTIONS="${1} ${1}"
fi


${SVGCONVERT} ${OPTIONS} ${3} ${EXTRA} ${2}/${ICONNAME}.png
