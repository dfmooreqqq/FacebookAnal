## Environment setup
# Load packages.
packages <- c("gdata", "ggplot2", "Rfacebook")
packages <- lapply(packages, FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
        install.packages(x)
        library(x, character.only = TRUE)
    }
})

# Set working directory
workingdir<-paste("C:\\Users", Sys.getenv("USERNAME"), "Documents\\GitHub\\FacebookAnal", sep = "\\")
setwd(workingdir)

fb_oauth<-fbOAuth(app_id = "1741558606079821", app_secret = "ceb350bde30f092e2d60ead2ac964cbe")
save(fb_oauth, file="fb_oauth")
load("fb_oauth")
me<-getUsers("me", token=fb_oauth)
me$username