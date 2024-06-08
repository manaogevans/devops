import cli

cmd2 = '''GawaNiPython3
int loopback 7
ip add 7.7.7.7 255.255.255.255
int loopback 8
ip add 8.8.8.8 255.255.255.255
int loopback 9
ip add 9.9.9.9 255.255.255.255
end
'''
cli.configure(cmd2)