# ToolkitKangRollGeneCancer



## Overview
KangRollGeneCancer is a Python package designed for analyzing the relationships between genes and cancer dynamics. This innovative package delves into the intricate interactions between various genes and their roles in cancer progression, employing the Roll Principle to navigate the complexities of genetic networks. Initiated in June 2023, the project aims to introduce the Roll Principle to a broader audience, with a special focus on the challenging aspects of Uncoding DNA.

By showcasing the application potential and operational methodologies of the Roll Principle, particularly in the context of Uncoding DNA, KangRollGeneCancer sets out to demonstrate the principle's effectiveness in deciphering complex genetic interactions. This endeavor is geared towards contributing significantly to the field of genetic research in oncology. Furthermore, through rigorous stress testing of the Roll Principle, KangRollGeneCancer seeks to establish standardized methodologies for its broader application, thus paving the way for advanced genetic analysis and personalized medical solutions integrated with Electronic Health Records (EHR).


This project not only aims to advance our understanding of gene-cancer dynamics but also strives to lay down a foundational framework for applying the Roll Principle in diverse scientific inquiries, thereby enriching the field of genetic research with new perspectives and tools.


## Installation

To install KangRollGeneCancer, run the following command:

```bash
pip install KangRollGeneCancer
```

## Quick Start

Below is a quick example to demonstrate the basic functionality of KangRollGeneCancer:

```python
from sa005package.kangroll_basic_fn001_mln_com_release import fn010_translp  
# Initialize and run your analysis 
            H3_ini_test = np.array([row['H3_value_1'], row['H3_value_2'], row['H3_value_3'], row['H3_value_4']])
            lay1_iterations_test = int(row['lay1_iterations'])
            lay2_iterations_test = int(row['lay2_iterations'])

            MLN_output, NL_final = fn010_translp(v1_test, v2_test, u_ini_test, H3_ini_test, lay1_iterations_test, lay2_iterations_test, debug_mode=False, test_random=True)
            u_ini_test = MLN_output[-1]
            total_MLN_output.extend(MLN_output)

```

For more detailed usage examples, please refer to our test scripts in the repository.

## Features

- Analysis of relationships between 183 genes and 19 cancer types. (test not upload)
- Capabilities for integration with EHR systems. (test not upload)
- Tools for simulating and analyzing multi-layer network outputs.

## Documentation

Detailed documentation can be found at https://www.linkedin.com/in/xiaowenkang/


## License

This project is licensed under Xiaowen Kang See the LICENSE file for more details.

## Acknowledgments

1.  Dietlein F, Wang AB, Fagre C, Tang A, Besselink NJM, Cuppen E, Li C, Sunyaev SR, Neal JT, Van Allen EM. Genome-wide analysis of somatic noncoding mutation patterns in cancer. Science 376, eabg5601 (2022). PMID: 35389777; PMCID: PMC9092060 doi:10.1126/science.abg5601



## Environment Setup and Testing with Bash Script

### Overview
This section provides detailed instructions on setting up the environment and running a quick test for the KangRollGeneCancer package using a provided bash script.

### Steps for Setup and Testing

1. **Environment Setup**
   - The script starts by creating a Python virtual environment named `tk_kangroll_env`. This isolated environment ensures that the package dependencies do not interfere with other Python projects on your system.

2. **Activate Virtual Environment**
   - Once the virtual environment is created, the script activates it. You will notice that the command prompt will change to indicate that `tk_kangroll_env` is currently active. This step is crucial for the subsequent installation of required packages.

3. **Install Required Packages**
   - The script will then proceed to install all necessary dependencies for KangRollGeneCancer. Ensure that you have a `requirements.txt` file in the same directory or modify the script to install packages as needed.

4. **Run the Quick Test**
   - With the environment set up and dependencies installed, the script executes `quicktest.py`. This Python script is designed to perform a quick functionality check of the KangRollGeneCancer package.

5. **Viewing Test Results**
   - Upon successful execution of the test script, a chart will be displayed for 2 seconds, illustrating the results of the test. Additionally, this chart is saved as a PDF file at `./test_kangroll_basic_fn001_mln_com_result_20231224.pdf`. This file provides a visual representation of the gene-cancer dynamics analyzed during the test.

### Conclusion
By following these steps, you can easily set up the KangRollGeneCancer environment and perform a quick test to ensure everything is working correctly. This process is designed to be straightforward and user-friendly, even for those who may not be familiar with Python or bash scripting.





