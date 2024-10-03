@echo off
setlocal

:: Define result folder variable
set RESULT_FOLDER=%DEST_DIR%\result

:: Step 1: Create the destination directory if it doesn't exist
if not exist "%DEST_DIR%" (
    mkdir "%DEST_DIR%"
)

:: Copy src, test folder, and Makefile to the destination directory
xcopy "%SOURCE_DIR%\src" "%DEST_DIR%\src" /E /I /Y
xcopy "%SOURCE_DIR%\test" "%DEST_DIR%\test" /E /I /Y
copy "%SOURCE_DIR%\Makefile" "%DEST_DIR%\Makefile" /Y

:: Step 2: Run the .sh script
bash "%SH_SCRIPT%"

:: Step 3: Create the result directory if it doesn't exist
if not exist "%RESULT_FOLDER%" (
    mkdir "%RESULT_FOLDER%"
)

:: Copy add_me binary and test_add_me.xml into the result folder
copy "%DEST_DIR%\add_me" "%RESULT_FOLDER%\add_me" /Y
copy "%DEST_DIR%\test_add_me.xml" "%RESULT_FOLDER%\test_add_me.xml" /Y

:: Step 4: Copy the result folder back to the original source directory
xcopy "%RESULT_FOLDER%" "%SOURCE_DIR%\result" /E /I /Y

:: Step 5: Clean up - delete the destination directory and its contents
rd /S /Q "%DEST_DIR%"

endlocal
@echo on
