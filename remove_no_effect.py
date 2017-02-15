import sys


def addi_0(l):
    return l[0] == "addi" and l[1] == l[2] and int(l[3]) == 0


def mov_same(l):
    return l[0] == "mov" and l[1] == l[2]

remove_funcs = [addi_0, mov_same]
remove_cnt = {f.__name__: 0 for f in remove_funcs}

f_in = open(sys.argv[1])
f_out = open(sys.argv[1].replace('.s', '_removed.s'), 'w')
for l in f_in:
    l2 = l.split()
    if len(l2) == 0:
        continue
    removed = False
    for f in remove_funcs:
        if f(l2):
            print("removed", l, end="")
            remove_cnt[f.__name__] += 1
            removed = True
            break
    if removed:
        continue
    f_out.write(l)
print(remove_cnt, "instructions removed")
