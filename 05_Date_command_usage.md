 #### DATE Command USAGE in daily life ###########################
==========================================================================
 1. Display current date and time
 *********************************
```bash
date
```
example :Thu Oct 15 10:30:25 IST 2026
============================================================================
2. Format the date
The format string must begin with +.
*************************************
```bash
date '+%Y-%m-%d'
```
example : 2026-10-15

```bash
date '+%d/%m/%Y'
date '+%H:%M:%S'
date '+%Y-%m-%d %H:%M:%S'
```
Common format codes:

%Y — four-digit year
%m — month
%d — day
%H — hour in 24-hour format
%M — minute
%S — second
%A — full weekday name
%B — full month name
%s — seconds since Unix epoch
%z — numeric time zone
These directives are listed in the GNU date help and manual
==================================================================================
3. ISO date and time
*****************************
```bash
date -I
```
example :2026-10-15

```bash
date -Iseconds
```
example : 2026-10-15T10:30:25+05:30

You can also create your own ISO-like format:

```bash
date '+%Y-%m-%dT%H:%M:%S%:z'
```
======================================================================================
4. Display UTC time
*****************************

```bash
date -u
date -u '+%Y-%m-%d %H:%M:%S UTC'
```
The -u option displays Coordinated Universal Time.
========================================================================================
5. Convert epoch seconds to a date
**********************************

```bash
date -u -d '@2147483647' '+%Y-%m-%d %H:%M:%S UTC'
```
example: 2038-01-19 03:14:07 UTC

Get the current epoch value:

```bash
date +%s
```
Convert it back:

```bash
date -d "@$(date +%s)"
```
============================================================================================
6. Parse a specific date
*****************************
```bash
date -d '2026-01-01' '+%A, %d %B %Y'
date -d 'tomorrow' '+%Y-%m-%d'
date -d '2 days ago' '+%Y-%m-%d'
date -d 'next Friday' '+%Y-%m-%d'
```
The -d or --date option displays the time described by the supplied string instead of the current time. 
=============================================================================================
7. Display another time zone
*****************************

```bash
TZ='America/Los_Angeles' date

TZ='Asia/Kolkata' date '+%Y-%m-%d %H:%M:%S %Z'
```
GNU date uses the TZ environment variable when selecting time-zone rules
==============================================================================================
8. Display a file’s modification time
*************************************

```bash
date -r myfile.txt
date -r myfile.txt '+%Y-%m-%d %H:%M:%S'
```
===============================================================================================
9. Useful shell-scripting examples
**********************************

Create a timestamped backup filename:
--------------------------------------

```bash
backup_file="backup_$(date '+%Y%m%d_%H%M%S').tar.gz"
echo "$backup_file"
```
example: backup_20261015_103025.tar.gz

Write a timestamp to a log:
***************************

```bash
printf '[%s] Backup started\n' "$(date '+%Y-%m-%d %H:%M:%S')"
```
Compare two dates:
******************

```bash
start=$(date -d '2026-01-01' +%s)
end=$(date -d '2026-01-10' +%s)

difference=$((end - start))
echo "Difference: $((difference / 86400)) days"
```
=================================================================================
10.  For ten years from today, use:
**********************************

```bash
date -d '10 years' '+%Y-%m-%d'
or
date -d '+10 years' '+%Y-%m-%d'
```

next is normally used with a single relative unit, such as next year, next month, or next Friday; numeric quantities should be written as 10 years. GNU date parses the string supplied to -d.

```bash
EXAMPLES:::::
date -d 'next year' '+%Y-%m-%d'
date -d '10 years ago' '+%Y-%m-%d'
date -d '2 months' '+%Y-%m-%d'
date -d 'next Friday' '+%Y-%m-%d'
```
=========================================================================================
11.  Below is one command that demonstrates all the format codes using a fixed date:
***************************************************************************************
```bash
LC_ALL=C date -d '2026-10-05 14:05:09' \
'+%% | %a | %A | %b | %B | %c | %C | %d | %D | %e | %F | %g | %G | %h | %H | %I | %j | %k | %l'
```
example output:
% | Mon | Monday | Oct | October | Mon Oct  5 14:05:09 2026 | 20 | 05 | 10/05/26 |  5 | 2026-10-05 | 26 | 2026 | Oct | 14 | 02 | 278 | 14 |  2


```bash can be used in shell only 
Code	Meaning	            Example
%%	Literal percent sign	 %
%a	Short weekday	         Mon
%A	Full weekday	         Monday
%b	Short month	             Oct
%B	Full month	             October
%c	Locale date and time	 Mon Oct 5 14:05:09 2026
%C	Century	                 20
%d	Day, zero-padded	     5
%D	Date as MM/DD/YY	     10-05-2026
%e	Day, space-padded	     5
%F	Date as YYYY-MM-DD	     05-10-2026
%g	Two-digit ISO week-year	 26
%G	Four-digit ISO week-year 2026
%h	Same as %b	             Oct
%H	Hour, 24-hour format	 14
%I	Hour, 12-hour format	 2
%j	Day of year	             278
%k	Space-padded 24-hour	 14
%l	Space-padded 12-hour	 2
``

======================================================================
# Important NOTE to be considered avoid "date --set" while learning
 **********************************************************************


macOS and some BSD systems use a different date syntax.

Also, avoid using date --set while learning because it changes the system clock and normally requires administrator privileges.




