# imports
import os
import argparse
import logging
import textwrap
import gvt_api
# setup functions
def get_args():
   parser = argparse.ArgumentParser(
      formatter_class=argparse.RawDescriptionHelpFormatter,
      description="Graphviz Tool (gvt)",
      epilog=textwrap.dedent('''\
      Additional information:
          python gvt.py tests/twitter3.dot tests/twitter3.transform.dot tests/color.re tests/url1.re
      ''')
   )
   parser.add_argument("inputdotfile")
   parser.add_argument("outputdotfile")
   parser.add_argument("regexpfile", nargs='+')
   parser.add_argument("-l", "--loglevel", help="logging level = {DEBUG,>INFO<,WARNING,ERROR,CRITICAL}", type=str, default="INFO")
   return parser.parse_args()
def get_logger(string_level):
    logger = logging.getLogger(__name__)
    logger.setLevel(string_level)
    ch = logging.StreamHandler()
    formatter = logging.Formatter('%(levelname)s : %(message)s - %(asctime)s')
    ch.setFormatter(formatter)
    ch.setLevel(string_level)
    logger.addHandler(ch)
    return logger
# announcements
def announce(logger):
   print(f"cwd: {os.getcwd()}")
   print(f"script dir: {os.path.dirname(os.path.realpath(__file__))}")

   # main
def main():
   # get arguments
   args = get_args()
   logger = get_logger(args.loglevel)
   logger.info((args.inputdotfile, args.outputdotfile, args.regexpfile))
   announce(logger)
   gvt_api.processGvt(args.inputdotfile, args.outputdotfile, args.regexpfile)
# execution
main()
