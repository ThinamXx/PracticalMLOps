name: Python application test with Github Actions
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Set up Python 3.8
      uses: actions/setup-python@v1
      with:
        python-version: 3.8
    - name: Install dependencies
      run: |
        make install
    - name: Format code with Python black
      run: |
        make format
    - name: Lint with Pylint
      run: |
        make lint
    - name: Test with Pytest
      run: |
        make test
