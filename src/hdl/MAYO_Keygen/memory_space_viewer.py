# This will create a table of the memory spaces used in mayo, declared in COMMON
import re
import pandas as pd
import sys


def read_common() -> list:
    """
    Read VHDL MAYO_Common.vhd File
    """
    lines = []
    with open("MAYO_Common.vhd", "r") as f:
        for line in f:
            lines.append(line)
    return lines


def filter_comments(lines: list):
    """
    Clean file
    """

    def iscomment(line):
        if line[:2] == "--":
            return True
        else:
            return False

    lines = [line.lstrip(" \t") for line in lines]
    lines = [
        line
        for line in lines
        if (not iscomment(line) and not line.isspace() and line.startswith("CONSTANT"))
    ]
    return lines


def get_constant_name(lines: list) -> dict:
    """
    Get dictioniary with correct bram entries
    """
    lines_dict = {}
    pattern = r"CONSTANT\s+(\w+)\s+:\s+positive\s+:=\s+(.*);"
    pattern2 = r"CONSTANT\s+(\w+)\s+:\s+natural\s+:=\s+(.*);"

    for line in lines:
        match = re.search(pattern, line)
        match2 = re.search(pattern2, line)
        if match:
            m = match
        if match2:
            m = match2

        if m:
            variable_name = m.group(1)  # Get the variable name
            value_expr = m.group(2)  # Get the value expression

            if value_expr == "16#0#":
                value_expr = "0"

            if not value_expr.isdigit():
                # Extract variable names from the expression
                variable_names = re.findall(r"\b\w+\b", value_expr)

                variable_names = set([v for v in variable_names if not v.isdigit()])

                # Replace variables in the expression with their values
                for i, token in enumerate(
                    sorted(variable_names, key=len, reverse=True)
                ):
                    if token in lines_dict:
                        # variable_names[i] = str(lines_dict[token])
                        value_expr = value_expr.replace(token, str(lines_dict[token]))

                value_expr.replace(" ", "")
                # Evaluate the expression
                value_expr = eval(value_expr)

            lines_dict[variable_name] = str(int(value_expr))

    return lines_dict


def get_table_data(dict: dict):
    """
    Print BRAM dictionairy
    """
    i = 0
    filtered_items = {
        key: value
        for key, value in dict.items()
        if "BASE_ADR" in key or "RANGE" in key or "HIGH_ADR" in key
    }
    for item in list(filtered_items.items()):
        if item[0].endswith("ADR"):
            print(f"\t{item[0]:<27}: {hex(int(item[1]))}")
        else:
            print(f"\t{item[0]:<27}: {item[1]}")
        i += 1
        if i > 2:
            print("")
            i = 0

    return filtered_items


if __name__ == "__main__":
    common_lines = read_common()
    common_lines = filter_comments(common_lines)

    get_table_data(get_constant_name(common_lines))
