import sys
import json
import logging
import re
# logging
logger = logging.getLogger(__name__)

# transform functions
def readTransform(filepath):
    logger.info(f"Reading {filepath}")
    with open(filepath,'r') as infile:
        dict = json.load(infile)
        printTransform(dict)
        return dict;
def printTransform(dictionary):
   for transform in dictionary:
      logger.info(f"l={transform['line']} t={transform['text']} r={transform['replace']}")

def combineRegexpfiles(regexpfiles):
    dotTransform = []
    for transformFile in regexpfiles :
        tempTransform = readTransform(transformFile)
        dotTransform.extend(tempTransform)
    return dotTransform

def transformLine(oline, dotTransform):
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
                    logger.warning(sys.exc_info()[0])
            else :
                logger.debug("   no match")
        except:
            logger.warning(f"Bad match regexp, skipping : {transform['line']}")
            logger.warning(sys.exc_info()[0]) # show system exception
    return oline
