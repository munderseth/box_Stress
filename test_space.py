import pytest

max_test_cases = 2000

# The following generates up to max_test_case tests
@pytest.mark.parametrize('count', range(max_test_cases))
def test_space(count):
    assert count % 9, "{} is a multiple of 9".format(count)