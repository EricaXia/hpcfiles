import random

with open('directories.txt', 'r') as f:
    dirs = f.readlines()

dirs = [i.strip() for i in dirs]

with open('location_data_2.txt', 'r') as f:
    all_locs = f.read()

locs_list = all_locs.split()

locs_list = [i.strip() for i in locs_list]

print("Len locs_list:", len(locs_list))
print("Len of ids already dled:", len(dirs))

not_yet_dl = [id for id in locs_list if id not in dirs]

print("Len of ids to dl:", len(not_yet_dl))

not_yet_dl_str = ' '.join(not_yet_dl)

with open('ids_to_dl_1.txt', 'w') as f:
    f.write(not_yet_dl_str)

# randomize id order to get new ids to the top
random.shuffle(not_yet_dl)
not_yet_dl_shuffle_str = ' '.join(not_yet_dl)

with open('ids_to_dl_2.txt', 'w') as f:
    f.write(not_yet_dl_shuffle_str)
