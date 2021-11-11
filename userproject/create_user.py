import sys
import subprocess
import colored
while True:
    print("*************** WARNING: Sudo user's have special privileges *************")
    print("Sudoers List")
    subprocess.call(["grep", "wheel", "/etc/group"])
    if len(sys.argv) > 1:
        name = sys.argv[1]
    else:
        name = input("Enter the UserName: ")
    if name == 'root':
        print("Cannot do anything with root user account.... Breaking the operation")
        sys.exit()
    opt = int(input("Select Option 1.Creation,2.Deletion"))
    if opt == 1:
        subprocess.call(["useradd", name])
        subprocess.call(["usermod", "-aG", "wheel", name])
        print('\x1b[6;30;42m' + 'Sudo user creation is a Success!' + '\x1b[0m')
    if opt == 2:
        subprocess.call(["userdel", "-r", name])
