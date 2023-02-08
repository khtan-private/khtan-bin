import os, fnmatch

def all_files(root, patterns='*', single_level=False, yield_folders=False):
    patterns = patterns.split(';')
    for path, subdirs, files in os.walk(root):
        if yield_folders:
            files.extend(subdirs)
        files.sort()
        for name in files:
            for pattern in patterns:
                if fnmatch.fnmatch(name, pattern):
                    yield os.path.join(path, name)
                    break
        if single_level:
            break

for path in all_files('c:/projects/za/protractor/zdiscovery-end-to-end-tests/protractor/src', '*spec.ts'):
    os.system('echo {} && grep \"it(\" {} | wc -l'.format(path, path))

