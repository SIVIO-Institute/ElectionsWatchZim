library(git2r)

## Open an existing repository
repo <- repository("C:/Users/Rebekah Cross/OneDrive - SIVIO Institute/ElectionsWatchZim")

## Get HEAD of repository
repository_head(repo)

config(repo, user.name="SIVIO-Institute", user.email="info@sivioinstitute.org", user.password="S1vio2022!")

## Display configuration
config(repo)
cred <- cred_env("SIVIO-Institute",
                 "S1vio2022!")

## Add file and commit
add(repo, "summary.json")
add(repo, "resources.json")
commit(repo, "Update Summary through git2r")
