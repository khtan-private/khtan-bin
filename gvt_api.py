import re
import utils
import logging

logger = logging.getLogger(__name__)

# gvt functions
def processGvt(inputdotfile, outputdotfile, regexpfiles):
    processGvt3(inputdotfile, outputdotfile, regexpfiles)

# There is a bug here, second regexp causes output to be empty
def processGvt1(inputdotfile, outputdotfile, regexpfiles):
    # set up input and outputs
    fin = open(inputdotfile, 'rt')
    fout = open(outputdotfile, 'wt')
    # read in transform data
    for transformFile in regexpfiles:
       dotTransform = utils.readTransform(transformFile)
       for line in fin :
          oline = line.rstrip()
          for transform in dotTransform:
            if(re.search(transform['line'], oline)):
                oline = re.sub(transform['text'], transform['replace'], oline)
       print(f"{oline}")
       print(f"{oline}", file=fout)

def processGvt2(inputdotfile, outputdotfile, regexpfiles):
    # combine all regexpfiles into one array of items
    dotTransform = utils.combineRegexpfiles(regexpfiles)
    # set up input and output
    fin = open(inputdotfile, 'rt')
    fout = open(outputdotfile, 'wt')
    for line in fin :
        oline = line.rstrip()
        logger.info(f"Reading {oline}")
        for transform in dotTransform :
            logger.debug(f"re.search on {transform['line']} for {oline}")
            try:
                match = re.search(transform['line'], oline)
                if match :
                    logger.debug("   match")
                    try:
                        oline = re.sub(transform['text'], transform['replace'], oline)
                        if oline :
                            logger.debug("   substituted")
                            logger.debug(f"xx {oline}")
                        else :
                            logger.debug("   none substituted")
                    except:
                        logger.warning(f"Bad sub regexp, skipping : {transform['text']}")
                else :
                    logger.debug("   no match")
            except:
                logger.warning(f"Bad match regexp, skipping : {transform['line']}")
            # logger.info('done1')
        # logger.info('done2')
        # print(f"{oline}") # too noisy
        print(f"{oline}", file=fout)

def processGvt3(inputdotfile, outputdotfile, regexpfiles):
    # combine all regexpfiles into one array of items
    dotTransform = utils.combineRegexpfiles(regexpfiles)
    # set up input and output
    fin = open(inputdotfile, 'rt')
    fout = open(outputdotfile, 'wt')
    for line in fin :
        oline = line.rstrip()
        logger.info(f"Reading {oline}")
        oline = utils.transformLine(oline, dotTransform)
        # print(f"{oline}") # too noisy
        print(f"{oline}", file=fout)

