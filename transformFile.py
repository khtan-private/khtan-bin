import os, sys, re
nargs = len(sys.argv)
if not 3 <= nargs <=5 :
    print('usage: {} search replace [infile [outfile]]'.format(os.path.basename(sys.argv[0])))
else:
    stext = sys.argv[1]
    rtext = sys.argv[2]
    input_file = sys.stdin
    output_file = sys.stdout
    if nargs > 3:
        input_file = open(sys.argv[3])
    if nargs > 4:
        output_file = open(sys.argv[4], 'w')

    for s in input_file:
        output_file.write(re.sub(stext, rtext, s))
    output_file.close()
    input_file.close()

