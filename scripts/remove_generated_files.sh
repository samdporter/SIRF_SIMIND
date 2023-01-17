# simple script to removce files generated by tutorial
cd "`dirname $0`"
cd ..
pwd
# remove files generated by scripts/generate_input_data.sh
find -type f -name '*attenuation_image*.dmi' -delete 
find -type f -name '*attenuation_image*.ahv' -delete 
find -type f -name '*attenuation_image*.hv' -delete 
find -type f -name '*attenuation_image*.v' -delete 
find -type f -name '*emission_image.smi' -delete 
find -type f -name '*emission_image.ahv' -delete 
find -type f -name '*emission_image.hv' -delete 
find -type f -name '*emission_image.v' -delete 

# remove simind output files
find -type f -name '*output*' -delete 

# remove tumour file
find -type f -name '*tumour.inp*' -delete 

# remove symlinks
find -type f -name '*symlink_*' -delete 

# remove any leftover image files
find -type f -name '*_*.ahv' -delete 
find -type f -name '*_*.hv' -delete 
find -type f -name '*_*.v' -delete 

# output directory
rm -rf output