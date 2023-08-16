# Applied Mathematical Computing.
Welcome to my repository of code snippets covering various Mathematical concepts, primarily focused on [Applied Mathematics](https://en.wikipedia.org/wiki/Applied_mathematics).
As part of my coursework and personal exploration, I've compiled these code snippets to showcase practical implementations of mathematical concepts using [MATLAB software](https://www.mathworks.com/products/matlab.html).

## Why Applied Mathematics?
I'm particularly drawn to Applied Mathematics due to its practical nature. It offers a way to bridge theoretical concepts with real-world problem-solving. The intuitive approach of Applied Mathematics makes it enjoyable to learn and allows for the effective resolution of complex problems.

## Usage
Feel free to explore the code snippets within each topic folder. You can run the MATLAB scripts directly in your MATLAB environment to see the concepts in action. I've provided comments and explanations within the code to help you understand the steps and logic behind each implementation.

## Contents
Currently, the repository includes code snippets for the following areas:
1. **[Number Theory](https://github.com/joykangangi/Mathematics-with-programming/blob/main/Number%20Theory/Prime%20Numbers.cbp)**: Explore number-theoretical concepts such as prime numbers, divisibility, modular arithmetic, and more.

2. **[Ordinary Differential Equations (ODEs)](https://github.com/joykangangi/Mathematics-with-programming/blob/main/ODE/1st%20Oder%20Linear%20ODE.m)**: Solve ordinary differential equations using MATLAB's symbolic and numerical capabilities.
   - An ODE is an equation involving derivatives of a function with respect to ONLY one independent variable.
   - Solving first-degree first-order equations involves employing a range of methodologies, each tailored to the specific characteristics of the equation at hand. 
     These approaches encompass:
      - Exact Equations 
      - Variable Separable Equations - Separate variables and integrate each side of the equation separately, simplifying the solution process.
      - Homogeneous Equations -Employ the substitution of `y = vx`  and transform the equation into `dy/dx = f(y/x)` which can be further reduced to a `Variable 
        Separable Equation` and then perform the integration. 
      - Leibnitz Equations - Utilize an Integrating Factor that transforms the equation into an exact differential form, allowing for straightforward integration.
      - Bernoulli Equations - Solve by applying the substitution `v=y^1-n`.
   - Note: The concept of Exact Equations is used in [Fluid Mechanics](https://eng.libretexts.org/Bookshelves/Civil_Engineering/Book%3A_Fluid_Mechanics_(Bar-Meir)/00%3A_Introduction/1.1%3A_What_is_Fluid_Mechanics%3F) to test if a 2-D fluid flow satisfies the [equation of continuity](https://en.wikipedia.org/wiki/Continuity_equation) `du/dx + dv/dy = 0`.
   
## Contribution
This repository is a work in progress, and I plan to continue adding more code snippets as I delve further into the world of Applied Mathematics. If you find any issues, have suggestions, or want to contribute, please feel free to open an issue or submit a pull request.
 
Thank you for visiting and exploring this repository! I hope you find these code snippets useful and inspiring for your Mathematical endeavors.
