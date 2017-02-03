#!/bin/sh
# Copyright 2005-2017 ECMWF.
#
# This software is licensed under the terms of the Apache Licence Version 2.0
# which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
#
# In applying this licence, ECMWF does not waive the privileges and immunities granted to it by
# virtue of its status as an intergovernmental organisation nor does it submit to any jurisdiction.

. ./include.sh

${examples_dir}eccodes_f_grib_set_keys > /dev/null
res=`${tools_dir}/grib_get -p centre out.set.grib1`
[ "$res" = "cnmc" ]

${examples_dir}eccodes_f_grib_set_gvc > /dev/null
res=`${tools_dir}/grib_get -p typeOfLevel,NV out_gvc.grib2`
[ "$res" = "generalVertical 6" ]

rm -f out.set.grib1 out_gvc.grib2
