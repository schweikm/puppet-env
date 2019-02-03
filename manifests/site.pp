# add support for stdlib stages
stage { 'first': } -> Stage['main'] -> stage { 'last': }

# this is how it all works:
# node -> role -> profiles -> classes -> resources -> implementation
$role = lookup('role', String)
include "::role::${role}"
