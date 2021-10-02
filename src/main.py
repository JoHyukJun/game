import os

from pathlib import Path

from tkinter import *
from tkinter import ttk
from tkinter import font
from tkinter import filedialog

import ffmpeg


BASE_DIR = Path(__file__).resolve(strict=True).parent


class Application(Frame):
    def __init__(self, master=None):
        super().__init__(master)

        self.master = master

        self.window_settings()
        self.grid()
        self.create_widgets()


    def create_widgets(self):
        jFont = font.Font(family="맑은 고딕", size=12)

        self.url_input_lable = Label(self, text="Input Your File Path", font=jFont, width=40)
        self.url_input_entry = Entry(self, font=jFont, width=40)
        self.video_list = Listbox(self, font=jFont, width=40)

        self.lookup_button = Button(self, text="조회", font=jFont, command=lambda:self.button_cmd('lookup', self.url_input_entry.get()))
        self.download_button = Button(self, text="다운로드", font=jFont, command=lambda:self.button_cmd('download', self.url_input_entry.get()))
        self.download_prg_bar = ttk.Progressbar(self, length=400, mode='determinate')

        dir_name = filedialog.askdirectory(parent=BASE_DIR, initialdir='/', title='Please select a dir')


        '''
            layout settings
        '''
        self.url_input_lable.grid(row=0, padx=2, pady=2)
        self.url_input_entry.grid(row=1, column=0, padx=2, pady=2)
        self.video_list.grid(row=1, column=1, padx=2, pady=2)
        self.download_button.grid(row=2, column=0, padx=2, pady=2)
        self.lookup_button.grid(row=2, column=1, padx=2, pady=2)
        self.download_prg_bar.grid(row=3, padx=2, pady=2)


        return
    

    def window_settings(self):
        self.master.title("fineapple")
        self.master.geometry("800x400+0+0")
        self.master.iconbitmap(BASE_DIR / 'static/images/unluckystrike_logo_clear.ico')

        return


    def button_cmd(self, value, url):
        

        return

    
    def progressbar_cmd(self, stream, chunk, bytes_remaining):
        size = stream.filesize
        progress = (float(abs(bytes_remaining - size) / size)) * float(100)
        self.download_prg_bar['value'] = progress
        self.download_prg_bar.update()

        return


def main():
    root = Tk()
    app = Application(master=root)
    app.mainloop()


if __name__ == '__main__':
    main()