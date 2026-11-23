#!/usr/bin/env python3
"""Expand .param references so netgen can compare device properties.

netgen does not evaluate SPICE expressions: a schematic written as
L={l_in} compares against a layout's l=4 as an "unresolved expression"
property mismatch.  This writes a numerically-resolved copy for LVS;
the original keeps its parameters for simulation and documentation.
"""
import re, sys

src, dst = sys.argv[1], sys.argv[2]
txt = open(src).read()

params = dict(re.findall(r'^\.param\s+(\w+)\s*=\s*([^\s$]+)', txt, re.M))

def expand(v, depth=0):
    if depth > 10:
        return v
    return re.sub(r'\{(\w+)\}',
                  lambda m: expand(params.get(m.group(1), m.group(0)), depth + 1),
                  v)

out = [expand(ln) for ln in txt.splitlines()
       if not ln.strip().lower().startswith('.param')]
open(dst, 'w').write('\n'.join(out) + '\n')
unresolved = sorted(set(re.findall(r'\{(\w+)\}', '\n'.join(out))))
print(f"resolved {len(params)} params -> {dst}")
if unresolved:
    print(f"  STILL UNRESOLVED: {unresolved}")
