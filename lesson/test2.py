import unittest
from main import *
# Add imports here!
import os

DIR = 'data/derived'
SAMPLE = DIR + '/analysis-sample.csv'
AGGREGATE = DIR + '/country-pairs.csv'

def is_file(name):
	return os.path.isfile(name)

def is_dir(name):
    return os.path.isdir(name)

def num_lines(name):
    return len(open(name, 'rt').readlines())

### tests

def test_history_exists(self):
    self.failUnless(is_file('history.txt'))

def test_derived_dir_exists(self):
    self.failUnless(is_dir(DIR))

def test_analysis_sample_exists(self):
    self.failUnless(is_file(SAMPLE))

def test_aggregate_exists(self):
    self.failUnless(is_file(AGGREGATE))

def test_sample_has_61855_lines(self):
    self.assertEqual(num_lines(SAMPLE), 61855)

def test_aggregate_has_367_lines(self):
    self.assertEqual(num_lines(AGGREGATE), 367)
