# Runs collation test on only on rust
# Test data and output directories are under ~/DDT_DATA
python3 testdriver.py --test number_fmt --exec rust --run_limit 27 --file_base ~/DDT_DATA
