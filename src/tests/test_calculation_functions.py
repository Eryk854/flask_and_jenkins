from flask_and_jenkins.calculation_functions import add, sub


def test_add():
    a = 10
    b = 5
    res = add(a, b)
    assert res == 15


def test_sub():
    a = 10
    b = 5
    res = sub(a, b)
    assert res == 10
