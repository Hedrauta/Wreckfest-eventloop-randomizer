### DM me on Discord if there are still issues: H3draut3r

# Wreckfest-eventloop-randomizer
 
> This script is used to create and randomize eventloops for Wreckfest. 

> It doesn't need any special tools or software and "**may be**" run by Windows 10 on default.

But unfortunately, Microsoft changed PowerShells "ExecutionPolicy" for PS1-files

Which points to:

## Allow the execution of a ps1-file

> AFAIK there are 2 Ways that does seems to "fix" the execution-problem

## First way (the "safest" one)

> Run Powershell as admin, and execute 

> `Set-ExecutionPolicy RemoteSigned` (there will be no confirmation, but you can "check" it with `Get-ExecutionPolicy`

> ![pic](https://i.imgur.com/3IM4YdP.png)


> install the WreckfestERS.cer file onto the current machines "own certificates"

#### Pictures ( only in german, sorry about that :wink: )
> ![Pic 1: ](https://i.imgur.com/o5KJDlH.png)

> ![Pic 2: ](https://i.imgur.com/t2hnGHZ.png)

## Second way (the "fastest" one, but with more danger)

> you could skip installing the certificate with `Set-ExecutionPolicy Unrestricted` , which will allow execute "any" ps1-script 

> My Advise: revert a "Unrestricted" after running the ps1-file with `Set-ExecutionPolicy Default` (Paranoia-Policy :wink:)


## After changing policy (and maybe installing the certificate):
> the ps1-file "***may be***" more able to run. 🤔  
