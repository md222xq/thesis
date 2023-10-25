# thesis


# Scientific Experiment

A scientific experiment is a research method that systematically investigates relationships between variables under controlled conditions to validate, refute, or establish the validity of a hypothesis. Experiments offer empirical evidence to discern patterns, verify theories, and infer conclusions. The process typically entails defining independent and dependent variables, establishing controls, collecting data, and subsequent analysis.

## A Step-by-Step Description of the Experiment and Motivations:

### 1. **Prepare Smart Contracts**

1.  **Gather Source Code**
    -   Obtain a diverse set of smart contracts (independent variables) with known vulnerabilities, ranging from simple to complex ones.
2.  **Compile Source Code**
    -   Compiling the source code will produce bytecode (controlled condition) which will be used for subsequent decompilation.
3.  **Decompile Source Code with Each Decompiler**

	- To investigate relationships between various decompiled outputs (dependent variables) and LLM interpretations. This step offers empirical evidence of how different decompilers influence LLM performance.
	


### 2. **Prepare X Prompts  for LLMs**

_Motivation:_ Prompts (independent variable) guide LLM responses (dependent variable), and subtle variations can affect the results. Testing with diverse prompts is crucial to capture a comprehensive dataset.

### 3. **Prepare Automated Testing Script for Analyzing Smart Contracts Using:**

_Motivation:_ Automated testing provides a uniform evaluation platform, and it streamlines the process.

**Methodology:** We leverage the APIs of several LLMs  for an integrated and seamless testing process:

-   **OpenAI's GPT4 & 3.5:**
-   **Meta's Llama 2:**
-   **Google's Bard:** (if i can get it work)

### 4. **Run Testing Script on Uncompiled Source Code and Gather Results**

_Motivation:_ To assess how LLMs interact with the raw source code. This initial analysis serves as a reference point, providing a baseline for comparison against decompiled code results.

### 5. **Run Testing Script on Decompiled Source Code and Gather Results**


_Motivation:_ To investigate if LLMs can effectively analyze decompiled code.


### 6. **Present Results**
_Data Analysis and Conclusion:_ After collecting evidence, discern patterns in the performance of LLMs, and infer conclusions about their effectiveness in analyzing decompiled smart contracts.