@Echo off
@Echo This a loop show Hello world 10 times
%%a = 0
:Loop
    %%a += 1
    @Echo Hello World %%a
if %%a < 10(
    Goto Loop
)
pause