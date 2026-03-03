PRO run_1zodi_loop

    ; Define the output directory
    out_dir = '1zodi_72'
    
    ; Ensure the directory exists before attempting to save to it
    FILE_MKDIR, out_dir

    ; Define the array of specific inclination values
    inc_array = [0, 15, 30, 45, 60, 75, 85, 90]

    ; Loop through each value in the array
    FOR i = 0, N_ELEMENTS(inc_array) - 1 DO BEGIN
        
        current_inc = inc_array[i]
        
        ; Run the zodipic routine with the current inc value
        zodipic, inu, 1.2547439995901082, 0.575, pixnum=896, inc=current_inc
        
        ; Construct the filename dynamically
        file_name = out_dir + PATH_SEP() + '1zodi' + STRTRIM(LONG(current_inc), 2) + '.sav'
        
        ; Save the output
        SAVE, FILENAME = file_name, inu
        
    ENDFOR
    
    PRINT, 'All zodipic files saved successfully in the ' + out_dir + ' directory!'

END