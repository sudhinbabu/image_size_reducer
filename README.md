# bulk image size reducer
reduce image size without loosing quality

install imagemagick and run
./convert_all_images_in_the_folder.sh path extension(JPG default) quality (0-100, 75 default) 
``` 
   ./convert_all_images_in_the_folder.sh ../day2 60 # path and folder
   ./convert_all_images_in_the_folder.sh ../day2 # only folder quality is defaulted to 75
   ./convert_all_images_in_the_folder.sh # current path
 ```
 a folder converted will created in the same source folder with converted files.
