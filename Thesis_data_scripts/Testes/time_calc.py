import datetime

# Example start and end times in string format
start_time_str = "22:34:55.002"
end_time_str = "22:35:10.806"
# Define the additional milliseconds to add
additional_ms = 22148

# Convert string times to datetime objects
start_time = datetime.datetime.strptime(start_time_str, "%H:%M:%S.%f")
end_time = datetime.datetime.strptime(end_time_str, "%H:%M:%S.%f")

	

# Calculate the new end time by adding the additional milliseconds
new_end_time = end_time + datetime.timedelta(milliseconds=additional_ms)

# Calculate the time difference between start and new end times in milliseconds
time_difference = (new_end_time - start_time).total_seconds() * 1000

# Print the new end time and time difference in milliseconds
print(f"New End Time: {new_end_time.strftime('%H:%M:%S.%f')}")
print(f"Time Difference: {time_difference:.3f} ms")


