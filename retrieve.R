##############################
####################  waller-d
#
#   Retrieve user installed   
#         packages
#
# Contributors: David Waller
# Project: r-setup
#
####################
##############################

# Get data from installed.packages and only keep user installed packages
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]

# Write package names to a csv file
# Remove MIDFIELD packages from the list (and other packages if needed)
pkg <- as.character(ip[,1])
remove <- c("midfielddata","midfieldr")
pkg <- setdiff(pa,remove)
write.csv(pkg, "packages-list.csv")