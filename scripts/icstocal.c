// A supposedly better version of icstocal, originally written by Ratakor

#include <stdio.h>
#include <stdlib.h>
#include <err.h>
#include <string.h>

#define TIMEZONE 2 // as UTC+2
#define IN "en" // 'en' means 'in' in french

int main(int argc, char** argv)
{
    if (argc < 3)
    {
	printf("Usage: icstocal calendar.ics $XDG_DATA_HOME/quand/calendar");
	errx(EXIT_FAILURE, "Bad usage");
    }

    

    return EXIT_SUCCESS;
}
