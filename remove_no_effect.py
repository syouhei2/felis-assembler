import sys


def addi_0(l):
    return l[0] == "addi" and l[1] == l[2] and int(l[3]) == 0


def divi_1(l):
    return l[0] == "divi" and l[1] == l[2] and int(l[3]) == 1


def mult_1(l):
    return l[0] == "mult" and l[1] == l[2] and int(l[3]) == 1


def mov_same(l):
    return l[0] == "mov" and l[1] == l[2]


def mov_s_same(l):
    return l[0] == "mov_s" and l[1] == l[2]

remove_funcs = [addi_0, divi_1, mult_1, mov_same, mov_s_same]

f_in = open(sys.argv[1])
f_out = open(sys.argv[1].replace('.s', '.s.removed'), 'w')
cnt = 0
for l in f_in:
    l2 = l.split()
    if len(l2) == 0:
        continue
    if any([f(l2) for f in remove_funcs]):
        print("removed", l, end="")
        cnt += 1
        continue
    f_out.write(l)
print(cnt, "instructions removed")
