# This will create a table of the memory spaces used in mayo, declared in COMMON
import re
import pandas as pd
from tabulate import tabulate


# read vhd file
def read_common() -> list:
    lines = []
    with open('MAYO_Common.vhd', 'r') as f:
        # Iterate over the lines in the file
        for line in f:
            # Do something with the line, for example print it
            lines.append(line)
    return lines


def filter_comments(lines: list):

    def iscomment(line):
        if (line[:2] == "--"):
            return True
        else:
            return False

    lines = [line.lstrip(" \t") for line in lines]
    lines = [
        line for line in lines if (not iscomment(line) and not line.isspace()
                                   and line.startswith("CONSTANT"))
    ]
    return lines


def get_constants(lines: list):
    pattern = r'CONSTANT\s+(\w+)\s+:\s+positive\s+:=\s+(.*);'
    pattern2 = r'CONSTANT\s+(\w+)\s+:\s+natural\s+:=\s+(.*);'
    # Match "CONSTANT", followed by one or more whitespace characters, followed by variable name (one or more word characters),
    # followed by ":", "positive", ":=", one or more whitespace characters, and the value (one or more digits)
    values = {}
    for line in lines:
        match = re.search(pattern, line)
        match2 = re.search(pattern2, line)
        if match or match2:
            variable_name = match.group(1)  # Get the variable name
            value_expr = match.group(2)  # Get the value expression
            print("var: ", variable_name)
            print("expr: ", value_expr)
            # Replace variable names with their values from the dictionary
            #print(values)
            values = dict(
                sorted(values.items(), key=lambda x: len(x[0]), reverse=True))
            for name, value in values.items():
                #print(name)
                value_expr = value_expr.replace(name, str(value))
            value = eval(value_expr)
            values[variable_name] = value
            print(" --> ", value)

    print("Final values:")
    for name, value in values.items():
        print(name, "=", value)


def get_memory(lines: list):
    newlist = {}

    def getValue(line: str, newlist):
        PRIME = 31
        PRIME_BITS = 5
        M = 60
        N = 62
        O = 6
        K = 10
        KC2 = (K * (K + 1) / 2)
        SEED_BYTES = 16
        SK_BYTES = SEED_BYTES * 2
        PK_BYTES = SEED_BYTES + M * O * (O + 1) / 2
        MONOMIALS = (N * (N + 1) / 2)
        P1MONOMIALS = (N - O) * (N - O + 1) / 2 + (N - O) * O
        P2MONOMIALS = O * (O + 1) / 2
        P1_BYTES = M * P1MONOMIALS
        P2_BYTES = M * P2MONOMIALS
        HASH_BYTES = 32
        OIL_SPACE_BYTES = (O * (N - O))
        SIG_BYTES = SEED_BYTES + (K * N)
        MESSAGE_BYTES = 100
        DIGEST_BYTES = M
        SK_EXP_P1 = 0
        SK_EXP_OIL = SK_EXP_P1 + P1_BYTES
        SK_EXP_BILINEAR = SK_EXP_OIL + OIL_SPACE_BYTES
        SK_EXP_BYTES = P1_BYTES + OIL_SPACE_BYTES + (M * (N - O) * O)
        parts = line.split(":=")
        key = parts[0].strip().split()[-1]
        value = parts[1].strip().split(";")[0]
        if value == "16#0#":
            value = 0
        old_val = value
        if str(value).startswith("CPU_"):
            return value
        if value == 0: return 0
        if value.split("+")[0].rstrip().endswith("_HIGH_ADR"):
            variable_name = value.split("+")[0].rstrip().split('_HIGH_ADR')[0]
            value = int(newlist[variable_name]['high']) + 4
        elif value.endswith("_HIGH_ADR"):
            variable_name = value.split("_HIGH_ADR")[0]
            value = int(newlist[variable_name]['high'])
        elif value.endswith("_BASE_ADR"):
            variable_name = value.split("_BASE_ADR")[0]
            value = int(newlist[variable_name]['base'])
        else:
            try:
                value = str(int(eval(value)))
            except Exception:
                value = old_val
        return value

    def setrange(item):
        item['high'] = str(int(item['base']) + int(item['range']) - 4)

    for i in range(len(lines)):
        if lines[i].startswith("CONSTANT"):
            var_name = lines[i].split()[1].strip()
            if var_name.endswith("_BASE_ADR") and not var_name[:3] == "CPU":
                variable_name = var_name.split('_BASE_ADR')[0]
                base_adr = lines[i].split()[-2]
                base_line = lines[i]
                range_line = lines[i + 1]
                high_adr_line = lines[i + 2]
                newlist[variable_name] = {
                    'base': getValue(base_line, newlist),
                    'range': getValue(range_line, newlist),
                    'high': ""
                }
                setrange(newlist[variable_name])

            elif var_name.endswith("_BASE_ADR") and var_name[:3] == "CPU":
                variable_name = var_name.split('_BASE_ADR')[0]
                base_adr = lines[i].split()[-2]
                base_line = lines[i]
                range_line = lines[i - 1]
                high_adr_line = lines[i - 2]
                newlist[variable_name] = {
                    'base': getValue(base_line, newlist),
                    'range': getValue(range_line, newlist),
                    'high': ""
                }

    return pd.DataFrame.from_dict(newlist, orient='index')


if __name__ == "__main__":
    common_lines = read_common()
    common_lines = filter_comments(common_lines)
    df = get_memory(common_lines)
    print(tabulate(df, headers='keys', tablefmt='psql'))
