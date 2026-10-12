#!/bin/bash
###
#
#  Semi-AIO Script for Building PitchBlack Recovery in CircleCI
#
#  Copyright (C) 2019-2020, Rokib Hasan Sagar <rokibhasansagar2014@outlook.com>
#                           PitchBlack Recovery Project <pitchblackrecovery@gmail.com>
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
###

# Use the A17 recovery checkout and its reviewed local builder.
# This compatibility entry point never syncs, deletes sources or publishes.
set -eo pipefail
script=$(readlink -f -- "${BASH_SOURCE[0]}")
root=$(cd "$(dirname "$script")/../.." && pwd)
exec "$root/vendor/lineage/build/tools/pb_build.sh" "$@"
