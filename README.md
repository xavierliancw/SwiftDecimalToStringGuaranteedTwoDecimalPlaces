# SwiftDecimalToStringGuaranteedTwoDecimalPlaces
In another project, I noticed the price floats I was serializing into JSON sometimes came out to be something like 1.2299999991024 when I wanted 1.23. :( My backend engineer decided we should just do Strings ¯\_(ツ)_/¯. So I just slapped together a Decimal extension function that GUARANTEES a String representation of a Decimal that has 2 decimal places, correctly rounded.

I was struggling with keeping all the possible cases in mind when making the function (e.g. when to pad a zero at the end, pad a zero in the tenths place, etc.)
So I decided to go test-driven on this function.
Since I wrote a unit test, I might as well put this up here.

If in the off chance you happen to go through my code, and for some really odd reason, decide to check my work, let me know if I screwed up! :D
