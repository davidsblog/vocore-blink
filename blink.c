#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv)
{
   puts("Vocore blink test program...");

   FILE *fp = fopen("/sys/devices/gpio-leds.5/leds/vocore:green:status/brightness", "w");
   if (fp == NULL)
   {
      puts("Error opening status LED for writing.");
      return (0);
   }
   int i;
   for (i=0; i<25; i++)
   {
      if (i % 2)
      {
         fwrite("255", 1, 3, fp);
         printf("+");
      }
      else
      {
         fwrite("0", 1, 1, fp);
         printf("-");
      }
      fflush(fp);
      fflush(stdout);

      sleep(1);
   }
   
   fclose(fp);
   puts("\nEnd of blink test program.");
}
