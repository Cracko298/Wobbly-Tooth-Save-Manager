import subprocess

key_name = r'HKEY_CURRENT_USER\SOFTWARE\WT\Eventide'
export_file = r'backup.reg'

try:
    subprocess.run(['reg', 'export', key_name, export_file, '/reg:64'], check=True)
    print('Backup completed.')
except subprocess.CalledProcessError as e:
    print(f'Error: {e}')
