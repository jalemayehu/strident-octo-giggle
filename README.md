module strident-octo-giggle
class licensefile

creates /path/to/ if it does not exist
if /path/to/file.lic.installed exists & has correct content do nothing
if /path/to/file.lic.installed has incorrect content then create file /path/to/file.lic with correct content by using the file.lic template in files
if /path/to/file.lic.installed does not exist then create /path/to/file.lic and the application will update /path/to/file.lic.installed
