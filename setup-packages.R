##############################
####################  waller-d
#
#   Install packages script   
#     for re-installing R
#
# Contributors: David Waller
# Project: r-setup
#
####################
##############################

# Import list of packages to install
pkgs <- read.csv("~/Documents/Personal/r-setup/packages-list.csv", row.names=1, stringsAsFactors=FALSE)

# Function and code for bulk installing packages
setup <- function (p){
  install.packages(p)
}
sapply(pkgs, setup)

# Install MIDFIELD packages
install.packages("midfielddata", repos = "https://MIDFIELDR.github.io/drat/", type = "source")
devtools::install_github("MIDFIELDR/midfieldr")