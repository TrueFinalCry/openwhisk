import re

filename = '/home/henrique/tmp/openwhisk/controller/logs/controller-local_logs.log'  # Replace with the actual file name
pattern = r'invokers for a total extra invokers of (\d+)'
total_sum = 0

with open(filename, 'r') as file:
    for line in file:
        match = re.search(pattern, line)
        if match:
            y_value = int(match.group(1))
            total_sum += y_value

print(f"Total sum of Y values: {total_sum}")

