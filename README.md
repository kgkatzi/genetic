# Genetic Algorithm Implementation in MATLAB

## Project Overview
This project implements a Genetic Algorithm (GA) using MATLAB. The algorithm optimizes a given problem by simulating natural selection, crossover, mutation, and fitness evaluation. Each function in the project plays a role in this evolutionary computation process.

## How It Works
1. **Initialization** (`initialize.m`):
   - Generates an initial population of candidate solutions.
   - Randomly assigns values to individuals based on defined constraints.

2. **Selection** (`select_parents.m`):
   - Evaluates the fitness of each individual.
   - Uses selection strategies like roulette wheel or tournament selection to choose parents.

3. **Crossover** (`crossover.m`):
   - Performs genetic recombination by combining portions of two parent solutions.
   - Generates offspring with characteristics inherited from both parents.

4. **Mutation** (`mutation.m`):
   - Introduces random alterations in offspring to maintain genetic diversity.
   - Helps prevent premature convergence by exploring new solutions.

5. **Fitness Evaluation** (`prediction_fitness.m`):
   - Computes the fitness score for each individual based on an objective function.
   - Determines how well a solution performs in solving the optimization problem.

6. **Replacement** (`replace.m`):
   - Removes the least fit individuals from the population.
   - Integrates new offspring into the population for the next generation.

7. **Core Algorithm** (`genetic_algorithm.m`):
   - Acts as the main driver of the genetic algorithm.
   - Iterates through generations, calling selection, crossover, mutation, and replacement functions.
   - Stops when a termination condition is met (e.g., max generations or satisfactory fitness level).

8. **Execution Script** (`project.m`):
   - The entry point for running the algorithm.
   - Calls `genetic_algorithm.m` and manages experiment parameters.

9. **Additional Computations** (`value.m`):
   - Includes supplementary calculations required for evaluating solutions.
   - Handles constraints or secondary objectives if needed.

## Installation & Requirements
1. Install MATLAB (tested on version R2021a or later).
2. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/your-repo.git
   ```
3. Navigate to the project directory:
   ```sh
   cd your-repo
   ```
4. Open MATLAB and set the working directory to the project folder.

## Usage
1. Open `project.m` in MATLAB.
2. Run the script by typing:
   ```matlab
   run project.m
   ```
3. Modify parameters in `genetic_algorithm.m` to fine-tune the optimization process.
4. Observe results in MATLAB's output window and visual plots.

## Contributing
Feel free to fork the repository and submit pull requests with improvements or bug fixes.

## License
This project is licensed under the MIT License. See `LICENSE` for details.

## Author
Konstantina Gkatzi

---

## My Projects

- **OCR (Optical Character Recognition)**: Developed an image-to-text model using MATLAB and k-NN, achieving 95%+ accuracy.
- **Image Registration**: Integrated feature detection for satellite image alignment using MATLAB.
- **Robotics Kinematic Control**: Engineered a 6-DOF robotic arm controller using MATLAB's Robotics Toolbox for dynamic tracking.
- **Neural Network Development**: Built MLP, SVM, and RBF neural networks from scratch in Python.
- **Black Box Parameter Estimation**: Analyzed unknown systems using MATLAB for minimum error. Implemented proof of linearity, parameter estimation (offline and online), and performance evaluation.
- **DNG2RGB**: Created a MATLAB project to convert raw images in DNG format to RGB using functions for white balance, interpolation, and color space conversion.
- **Genetic Algorithm Optimization**: Implemented a MATLAB-based Genetic Algorithm for solving optimization problems through selection, crossover, mutation, and fitness evaluation.

