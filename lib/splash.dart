import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
 Splash ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    backgroundColor: Colors.grey,
    body: Center(
    child:CircleAvatar(
      backgroundColor: Colors.white10,
      radius: 100.0,
      backgroundImage: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQMAAADCCAMAAAB6zFdcAAABJlBMVEX///9pt/lCpfYOR6H///3///z8/////v/K4/j//fwSRaPO3OZhtPn//vkANpr4//8LSaC32O1utfRvtfNApvn///dFpfJpuPJstfpmt/9kufwXRpRes/lotv9kuf0USJsWPXkZQYZpuPN1tuvr9/t/vOwAOpposOrh8vq+4vWEvOoznfAAMZEAOpT/+P5Ko+wUNGkVO3UORajY7PhsruVnrPJluvHE4/BqrOlsuOmt2vG42OrJ2+Os0/G81/C65ful0/OAv+aCu/Izkd0AMXYVSI8APIgaP3g4q/gAM4pDlNcIMXEMP68TO2kKK2EVLlZHovwAHlIOLlQAGlUOIEUAEj4RKFcCHTkHGDoMIUwNN3cAEDhKiMXJztsAL3oAKZkAI4XS1um00ZCsAAAO5ElEQVR4nO2dDVfbRhaGJZgPBJqMLVmyJGwZBMQ4CYE4IRAwtGlKNqE0bbZJtmHT7e7//xN779iAwXLQpD4rM+u3hJPTpD2j13eeuffOaLCsmWaaaaaZZpppppmmXkwyh1iWYzkO/hr+cq7/5uovGCYqKKGE6ansQU9YjBGIBKonAl9GGUEFhIKeGDHKAyGedhZ0tSSJIR4QwRgne+1Gs1Fcses22ptmGIDiFmEL+2mS2cXle3F7s+yBT06MCdJpx2lmJxomxGubwpzVkQQYBfXMb0bFLUjbm1SaMxUIREFmx7FGENhue1NISsoe+kRELEmChd2srhMCtg9RYDmMmOGBJajcexYniUYUAA7XNgmQ1BBJYXXa8MHCh1tcsCIYMg2UiOw8c+26pzEVEIdEyrJHPhERpGEAURDZSbNZfFl0YVGUTJQ9/Iko4CwgnWdpohMDkWGpEReys9uMdLJDD3FoRggoMcwLEjvLmhomxM/WDamSlDjr7GfPYUnQ8MBtgwVmeICVv4BKMc6iZmwX5IHrIw4pMwSH2P6ggEONSQAs8IEFZY98cmI0gIkQR5EOCtCCoOyRT07MYoDDpL6mVyyvUzMyIyXKMEFObU+jSnDX1gUzI0Mm2DIRC/uZHUUwGYo9f+qrKCCG4FC5sLfffB5rpIeqUix73JMTswCHbTeq67RM0ILAjHmgxNAC2/c1LLBTs3CI7VPMinR6h4hDKYyIA0KZFAJrBJ0QwNRoHRNLIzywID+WnXYz1cQhlEllj3xyYgJYEEd1W4eHEAVmTIO+mMTs0H6u0zFQ2aEZlSKKUlwRoEbQmAt9HNKyhz4RUUsS2tlNtBomtg+LYtkjn6AERRzaOpWiWhHMCAEliXlBmrQ9rX0ErBHKHvnkJCAK4uS572lYACyAjKLskU9EFLunAmuEyG4WngpeH4eGVIq4j2B19mOtfQTbb5iEQ+YIWYXsUGdbFRtn62aEgJKk1nE7ido62+umNc4c2dm1s8jX8UDh0IzsEMo9ddao6WVu4X3F1O/3Dg3BIaGQ4lTbsasxC9Seokk4pAGr7sda/WOFQ7P2EartNPXXdFIjw3AorAOIgtjWaR6q1MiMKgFwKANR3ddrnKl9BNyMLHv4E5Igsrqv3TgzCodWYB20m1G96F6SUsO0xhlMhDR78f/cOCNV1TjLNOLApH2EgElBq15iayyJqYeVInEsIyxAEwTi0NU5hq1waMjzo6RgVS+O6r4ODl2jGmcEF8U0sV/UNS0wBIdEFUpQJtl209bFITWjUhT4vp2KAg15hjXOEIdeU+vEmWdc4wyK5TSq66BApUZmoEAJF8U40fPArMYZEaLaTtUhk6IHcD3b3cDGmRldE0odTqqa+wie19gwCYdCyAPAoc45dNMaZ9yB7DCJ6y80LLAhCoxqnMmDdtOOba19BLTAjKYRhaVN0GNYFDE3LL6P0FArghmpAe4j4KKY6mwk+IbhkOBEiKNM7wDuhkk4tDhWirHePkLDsH0EBouiDXGgh0MhDUGBYLzfONNQ6uNEMGcfgQgHG2ex7j6CNKdppCaCOoCrtY+wYdQ+giUP9pPE02qcqezQkErRwrOXB/2WyV/dR7ijZ/MDxhx6tKv9quZGzpKoLkvTvCYLrwor++a4fqUYJ6lGauTBipBXIXzbHXBoxAQe5C+IU4XDNZ20wEYLch6WO1zdCkiGvg//5pou/i3npU8hKvGIRVTXTI3yG2dkEAs6Aq6S8lIMsJ8I3EeI7Dgp3DlSjbNgZB8BKkdG5UL1sFpch/jVk6xEHuBrFeSoHac6FQKyIKdSZFQwRqtu09WQ7bpefRMvD/zfP/zFuBGHrp2mOosCrgg5FYIIYJ049lw70Ui4U89bWye8TBxwB8qk2G5rvarZABzmVYoQBceN2F7TujfPhiSj3Jd8hPx+v4nRrTFsF1eE/PWv6kZ2Utf5n9nYkUcqlWcDPbKxQCg8FbBxtpFzAFcGDhP02HV9Oylacfh2mmGq6TC1w1uOAYjD3VivaTSmcSbAFlLVOsdq2zBnXqwzbpV7XoF8txtrnbDw4gcyp3FGAiihj12wQAOHiQ04pLxUHqJEJ9O6+nMcDuUAhzpVp+/hRLBKT5MDq9PWucgDFsXcxpljHSAOM51L49QGJaeEOOVeHyi51WnYUZrcvjgqHEo60jiTgWCUVhuxrzER/BSjAI+vkdJPsBHuiE47ygqA0c/PDq2AAtag4NB61Qt4uFY+DvuinAir49r1Aosj4DCvcYbL+wHgMNPrPwALEIdT4IGQDEbyHZhQxIL87JATWBHc+pqGAZ6vtqnLbxugOBVcWngb7G3D7uPw5pAxu0EcevqXJHGGOCzlqW8KPgoE465dh6VtzJBT1TWyRvAlITUiUCnGOuXGWhr5KjWaghC4FAm4YB0vG891H1OjnCEHFOyDmivSQUHax2HpqdE1EfgwBS6R/thHQRbkDBmvRj5yY0+r6mzaL9f5FHTProsDGCn9rp2NK/hUdphTKUL1eOxGbqa1R+tDasSd6cDhlXhAwQbRwYJvdDp4tvtAjl7kAY/ABDloRF6cFL1VGePFfQFRwMrPDvMEBSwkS1Fy8yP1kAU5f58IyBiPHkL2GBXelqnbsYcscKZzjxZmaEA7XrR2o5WgLMhrnOH7Hd8/rG1joBTtGMRZBqnmlOHwSlRIWKwBjDfjAHGYgwKHKAvmtkMX/pOCHkSAw2nYTBgjQqVjcdLZ9a5nS+6D/MYZ5AVgQbg9VwshcAqmR94Gnukm05Ia3RR8OgLAJxa8xHYvoOCnCocjJ84EXgx8BFGA/4RhkRNcGSRa9gZEgcQf2jN9OLwU1sUIxkEoeF4jD4eEMIDa0cO5sDYHCufCRoEQyCKwYGpxeCUhMFnatwdgHINDIiSlGAV9DzAUGrd2plO7vrFO7sDWPGESAhVK6X7i1xhTKSocQgDUBh6ACcltYPSiDTmFGcGo8LoLSBn3+lWkwmHu9joBC8ILC+A38Kvh3QJG3KOFicCn3QcIAoFXYS20M4ACWGDdxCHDJrpaFGsDCwZCJozJlbIsRhwSrjYVp90DJUoAjHbUeJk7DaTl4IoQXjPgwoSx08F9MC2Ns2ISFIJhofEgD+AXOBz1YADGPBPSuA6p0f/8Of6KiAQwiqfrIq+HzgVYEF6yYMgDMCHNByNOBHEnpsCliEUDpkrJnD9EHIb4xOGNmaDgmObOhgRSI4ZwnXoeXoqoNZxZ/EaGzKjgTOCiiJGfpxCZcP0CoXocQYI8OGpzZywYKyFhxcAaIff5h8B4DYa+CxawKWuYfLNwNykXh9eY4F4HY5y9XOdsOvYRJiAuVGo0N4LDqygYmDDkgb+xHnAybY2zb5MixFEuDofBCH8GJlzlSq7CoRkeOMLB7PBrKLjGBHShHsfeBp48vPuPj8LG2W04vITCAIwRVIo/AA5N8QB/bDVYUBuzJl73oM8ECIX6hoTVcFqbh7qCgu8WHN4wAdLmqP2DdIgZKEAxKz87zFHYzxgTvB6HE9U4M8SDo2IsGHIieblOyM1U8y5r81VttEr62nQIa696FpQc09481BBZuGigFtObuVfnPy7BmmCQBw7d2y6yJlzqdOX89Y9LI2XXXRaU053C68Kbudqr8/PVlcpqDypFmtuSvIOC5wg6YS3cLrQ2hq/OV1ZXT04qryESxLe83jSNIowForNd277dgbD26+mTc7Tg5KT7qGdRbsiEIATy/qDzsEgYhKc/7qygBfMny4tbS4wYcnMY/kgmwsTewwIz4dX5zt/Qg+Xl+dZyd2up7KFPTuonduLqENa+AsY3tdopWLCqLFhutVrz3bc967GFB/vLfoKJCAIh2HtY2/4KGH99c/oTRgGYsIwmVCotFQmUGwJGvPWF7IVfASNEwc7Ok2EP5iuVM4gEhxsSBxR/OLtaIsdZEJ7+9O7nJyvDHnRblcW3S4wa8qOZsCVGZbA3N86D8PTdL4MwuJwLlW4FwNi7Q1sLtwh3HgjdC/Myxje1udNPn2AqDIUBxAFqsbu1Rx4TYUoVTSSAMcwB469zp+/RAvBAZQdDJgAY7y1Z6s1uIwTJEoBxtJsAUfD+w6UHqycXc0EFwnzlbAvBeHf2nb8qgjuywd72iAmn7z///ZoHFcgO5gdzoVXpvt0r9Z3mSQofBMDY2VZL4UUMhHOnv31AC3ZWVp4gDyAG1NMv4ndwoDJ/psA4BW8vTUaEWmJvyIRabfv044fPSESMA3DggobDQjByqB3M8MBiMlBg7LeWamH46uM/Pnx+9+7dzs7PK6+vMDCsSuvs3qFFjOEigJHSpxfJUlj78vH3959/Ae2cv26NPn4/DAYZo2XIfUrqxzWJpwMwwkT4/cPnz5/e7awuV/oE6H+/psVFrB0Orak/o1lQmDEyXB36NQJY8OHDp/Pl1tWTj3oAJSSAEatITqkhUAAbgAnbc7Uv//z986ed1VbOZz8KhcW3PcIF4YZ4gO01mA5fPr5/d75cqSx2u7d70GqdPVJgNMMDqCJhSjz98tsTLA/nsUweh8MrdVut7tsec4hJ7TX6x7+Wb3/0obmAVeShZQgP+kRwrKVHiDt8wAI8AGi0IGM8xPYaNWQTChI/2ttabJ0UeP6rYOgCEzg1JlviLCDHjxb1PKgYBkbGedB7VGBJuJKqIg8h0zQDjNyBKvJx0LunEwetLnzhdDBkMmB7jSowQoJQdC4sYkvhLYCRBMa017iASOi2lnVmBETCsWVOGQnZf2ABE1o6E2JegZHyEq8Im6QowfeElx51c7oG47R4AUZD9h3wNSUAIzBBIwoAjCoS+HRdh/FXRCCqe/exS6AzIfrJkjDlJCvhQbB0r3vS0gAj7jscWo4Br3YoQQElBYKxSNVwocX51hkskcbsOzgEEibR29IDYwWTJWP2HRCM5HGwcB+JsAg1QQEtV9Tq0MNj3YbMBwQj7b1uzbcqiwWFzVcEIy6vZhzSgA8TwPi6W3htQBsq82d/Hppzwh/AyKB2eLt1/14x3QedbW39+e8/LFOYAGDEi2U2e0s6+g98/SGpKUTAOzEp1+sWkv77YoZEwUwzzTTTTDPNNNNMM800bfov47esixotD9wAAAAASUVORK5CYII="),
    ),),

    );
  }
}