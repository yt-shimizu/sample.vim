import re
from datetime import datetime as dt

def toggle_task():
  cl = vim.current.line
  if re.match('^"*\s*\[D\]', cl):
    vim.current.line = re.sub('\[D\]<.*>', '[ ]', cl)
  else:
    vim.current.line = re.sub('\[ \]', '[D]<' + dt.now().strftime("%Y/%m/%d %H:%M:%S") + '>', cl)
