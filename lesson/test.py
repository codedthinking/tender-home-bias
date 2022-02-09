import unittest
from main import *
# Add imports here!
import os

DIR_TED = 'data/raw/european-commission'
DIR_CC = 'data/raw/datahub'
FILE_TED = DIR_TED + '/ted-sample.csv'
FILE_CC = DIR_CC + '/country-codes.csv'

def is_file(name):
	return os.path.isfile(name)

def is_dir(name):
    return os.path.isdir(name)

def num_lines(name):
    return len(open(name, 'rt').readlines())

### tests

def test_history_exists(self):
    self.failUnless(is_file('history.txt'))

def test_ted_dir_exists(self):
    self.failUnless(is_dir(DIR_TED))

def test_countrycodes_dir_exists(self):
    self.failUnless(is_dir(DIR_CC))

def test_ted_data_exists(self):
    self.failUnless(is_file(FILE_TED))

def test_cc_data_exists(self):
    self.failUnless(is_file(FILE_CC))

def test_ted_has_100k_lines(self):
    self.assertEqual(num_lines(FILE_TED), 100001)

def test_cc_has_251_lines(self):
    self.assertEqual(num_lines(FILE_CC), 251)
