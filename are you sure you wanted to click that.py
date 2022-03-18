from tkinter.constants import BUTT, FALSE
from typing import Text
import mouse
import keyboard
import tkinter
import threading


def open_window():
    root = tkinter.Tk()
    root.title("Accesibility")
    root.resizable(FALSE, FALSE)

    text = tkinter.Label(root, text="Are you Sure you want to Click That?")
    button = tkinter.Button(root, text="ok", command=lambda : root.destroy())
    
    text.grid(padx=(10, 10), pady=(10, 0))
    button.grid(row=1, pady=(10, 5))
    
    mouse_pos = mouse.get_position()
    root.geometry("+" + str(mouse_pos[0] - 115) + "+" + str(mouse_pos[1] - 60))

    root.bind('<Return>', lambda event : root.destroy())
    root.attributes("-topmost", True)
    root.overrideredirect(True)
    root.mainloop()



def open_new_window():
    threading.Thread(target=open_window).start()



def main():
    button_state = False

    while (True):
        if (mouse.is_pressed()):
            if button_state == False:
                open_new_window()
                button_state = True
        else:
            button_state = False


main()