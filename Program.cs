using System;
using ImageMagick;

namespace magick
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                var image = new MagickImage();
                Console.WriteLine("Hello World! with channels " + image.Channels);
            }
            catch (Exception e)
            {
                Console.WriteLine("That was an error, oops... " + e.Message);
                throw;
            }
        }
    }
}
