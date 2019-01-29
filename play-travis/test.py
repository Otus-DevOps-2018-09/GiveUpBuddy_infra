import unittest

class NumbersTest(unittest.TestCase):

    def test_equal(self):
        self.assertEqual(10-9, 1)

if __name__ == '__main__':
    unittest.main()