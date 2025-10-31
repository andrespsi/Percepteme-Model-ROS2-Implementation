# Perceptema One - v2.0

# The Percepteme Model: A ROS 2 Implementation of an Adaptive Mind

**[!] PORTFOLIO & ARCHITECTURE DEMONSTRATION**

**Please Note: This is a portfolio repository. The core implementation (all Python source code, `*.py`) is proprietary, private, and has been explicitly excluded via `.gitignore`.**

The purpose of this repository is to showcase the formal software architecture, ROS 2 package structure, and data models (message definitions) of a functional, multi-node implementation of the Percepteme Model.

---

## 1. Project Overview

This workspace (`perceptema_ws`) is the first functional implementation of the **Percepteme Model (PM)**, a formal computational architecture for an adaptive, affect-driven mind.

While the accompanying research paper details the psychological and mathematical theory, this project translates that theory into a robust, event-driven software architecture suitable for robotics, simulations, and AGI research.

The agent's "mind" is not a single script but a system of distributed nodes that communicate, perceive, feel, decide, and learn, all orchestrated by the principles of the Percepteme Cycle.

**Theoretical Foundation:** For a complete understanding of the model, the data structures (`.msg` files), and the underlying cognitive science, please refer to the full research paper:

* **[Percepteme Model: Formal and Psychological Specification of a Modular and Holistic Computational Framework for the Adaptive Mind (https://bit.ly/3Jkrv7b)]**

## 2. Software Architecture (ROS 2)

This project is built as a ROS 2 workspace, enabling a modular, decoupled, and scalable architecture. The system is composed of three primary packages:

### `perceptema_core` (The "Brain")
This is the central cognitive engine of the agent. It is responsible for:
* **Running the Percepteme Cycle:** Implements the core cognitive loop (Perception -> Signification -> Decision -> Learning).
* **Memory Network:** Manages the Experience Network (X) of Perceptemes.
* **Affective Emergence:** Calculates the agent's "Global Signification" (S) based on active memories.
* **Decision-Making:** Computes Utility (U) by balancing immediate value against predicted future value (guided by the UESS/FUP).
* **Learning:** Applies all adaptive learning rules ($\Delta$) based on prediction errors ($\delta_P$, $\delta_S$, $\delta_R$).

### `perceptema_io` (The "Senses" and "Actuators")
This package provides the I/O layer, decoupling the agent's "mind" from its "body."
* **Perception Nodes:** These nodes (e.g., `webcam_publisher_node.py`, `microphone_publisher_node.py`) capture data from the environment.
* **Stimulus Generation:** They pre-process raw sensory data into a formal `PerceptemaStimulus` message, which is the only input the "brain" understands.
* **Actuation Nodes:** These nodes subscribe to `PerceptemaAction` messages from the core and translate the agent's decisions into actions in the environment (e.g., motor commands, speech synthesis).

### `perceptema_bringup` (The "Launcher")
This package contains `launch.py` files used to start and configure all the nodes of a complete agent, managing their parameters and connections.

## 3. What is Public in This Repository

This repository makes the "blueprints" of the architecture public, allowing review of its design and data models without exposing the core logic:

* `package.xml` / `setup.py` / `CMakeLists.txt`: The ROS 2 package definitions, which outline the project's structure, dependencies, and build process.
* `msg/` (`*.msg`): The custom ROS 2 message definitions. These are the **"API" of the mind**, formally defining the data structures for:
    * `PerceptemaStimulus_Version3.msg`: The data model for all sensory and perceptual input.
    * `PerceptemaAction_Version3.msg`: The data model for the agent's decisions and commands.
    * `PerceptemaState.msg`: A message for broadcasting the agent's internal affective state (S).
* `launch/` (in `perceptema_bringup`): The launch files, which show how the individual nodes are connected to form the complete agent.
* `README.md` / `INSTRUCCIONES.md`: Project documentation.

## 4. Author

**Andrés Eduardo Gonzales Palacios**

* *https://www.linkedin.com/in/andr%C3%A9s-gonzales-palacios-57344156/*
* *https://bit.ly/3LCM6UT*
* *andresgp.psi@gmail.com*
