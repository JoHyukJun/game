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

        self.video_file_list = []
        self.target_kbps = 0


    def create_widgets(self):
        jFont = font.Font(family="맑은 고딕", size=12)

        self.url_input_lable = Label(self, text="Input Your File Path", font=jFont, width=40)
        self.url_input_entry = Entry(self, font=jFont, width=40)

        self.dir_button = Button(self, text="Directory", font=jFont, command=lambda:self.search_file_path('dir'))
        self.files_button = Button(self, text="Files", font=jFont, command=lambda:self.search_file_path('files'))
        self.set_kbps_button = Button(self, text="Set kbps", font=jFont, command=lambda:self.set_kbps_button_button_cmd('set', self.url_input_entry.get()))


        '''
            tree layout settings.
        '''
        self.file_list_view = ttk.Treeview(self, column=('c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9'), show='headings', height=15)

        self.file_list_view.column('# 1', width=50, anchor=CENTER)
        self.file_list_view.heading('# 1', text='ID')
        self.file_list_view.column('# 2', width=70, anchor=CENTER)
        self.file_list_view.heading('# 2', text='Target kbps')
        self.file_list_view.column('# 3', anchor=CENTER)
        self.file_list_view.heading('# 3', text='File Name')
        self.file_list_view.column('# 4', width=70, anchor=CENTER)
        self.file_list_view.heading('# 4', text='Extension')
        self.file_list_view.column('# 5', width=100, anchor=CENTER)
        self.file_list_view.heading('# 5', text='Dimensions')
        self.file_list_view.column('# 6', width=90, anchor=CENTER)
        self.file_list_view.heading('# 6', text='Bitrate, kbps')
        self.file_list_view.column('# 7', width=100, anchor=CENTER)
        self.file_list_view.heading('# 7', text='Duration')
        self.file_list_view.column('# 8', width=100, anchor=CENTER)
        self.file_list_view.heading('# 8', text='Size')
        self.file_list_view.column('# 9', anchor=CENTER)
        self.file_list_view.heading('# 9', text='Path')



        '''
            layout settings
        '''
        self.url_input_lable.grid(row=0, padx=2, pady=2)
        self.url_input_entry.grid(row=1, column=0, padx=2, pady=2)
        self.set_kbps_button.grid(row=1, column=0, padx=2, pady=2)
        self.dir_button.grid(row=1, column=1, padx=2, pady=2)
        self.files_button.grid(row=1, column=2, padx=2, pady=2)
        self.file_list_view.grid(row=3, column=0, padx=2, pady=2)


        return
    

    def window_settings(self):
        self.master.title("Fine Rate")
        self.master.geometry("1280x720+0+0")
        self.master.iconbitmap(BASE_DIR / 'static/images/unluckystrike_logo_clear.ico')

        return

    
    def search_file_path(self, value):
        sel_file_list = []


        if (value == 'dir'):
            path = filedialog.askdirectory(parent=self.master, initialdir=BASE_DIR, title='Please select a dir')

            for filename in os.listdir(path):
                sel_file_list.append(os.path.join(path, filename))
        elif (value == 'files'):
            path = filedialog.askopenfilenames(parent=self.master, initialdir=BASE_DIR, title='Please select files')
            
            sel_file_list = list(path)

        for file in sel_file_list:
            probe = ffmpeg.probe(file)

            if (probe['streams'][0]['codec_type'] == 'video'):
                self.video_file_list.append([file, probe])


        for idx, data in enumerate(self.video_file_list):
            in_value = (idx, self.target_kbps, data[1]['format']['filename'], data[1]['streams'][0]['codec_name'], str(data[1]['streams'][0]['width']) + 'X' + str(data[1]['streams'][0]['height']),
                round(int(data[1]['format']['bit_rate']) / 1024, 2), round(float(data[1]['format']['duration']), 2), round(int(data[1]['format']['size']) / 1024, 2), data[0])

            print(data[1])

            print(in_value)

            self.file_list_view.insert('', 'end', values=in_value)


        return


    def set_kbps_button_button_cmd(self, value, kbps):
        self.target_kbps = kbps

        return


    def analyze_video(file_path):
        res = ffmpeg.probe(file_path)

    
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