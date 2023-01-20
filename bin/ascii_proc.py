with open("ascii_art_current.txt", "r") as f:
    for line in f.readlines():
        print("// "+line.strip())
