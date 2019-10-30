using System;
using System.Collections.Generic;
using System.Text;

namespace Rating.Function.Models
{
    public class Rating
    {
        public string ItemId { get; set; }
        public string UserIp { get; set; }

        public double RatingValue { get; set; }
    }
}
