# Think-Refine Structured Extraction (TRSE)

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

This repository contains the code and resources for the **Think-Refine Structured Extraction (TRSE)** project. TRSE explores a methodology for training small, specialized language models (LLMs, 1-3B parameters) to perform accurate structured information extraction from text documents, aiming to enhance reliability and robustness compared to baseline approaches.

## Methodology Overview

The TRSE methodology employs a two-stage fine-tuning process applied to a pre-trained foundation LLM:

1.  **Think (SFT with Distilled Reasoning):** A powerful expert model (e.g., DeepSeek-R1) is used to generate step-by-step reasoning traces (`<think>` tags) alongside the target structured output (JSON) for each training example. A small foundation LLM is then fine-tuned using Parameter-Efficient Fine-Tuning (PEFT, specifically QLoRA) on this augmented data (`prompt -> <think>...</think><answer>JSON</answer>`). This stage aims to teach the model the underlying reasoning process for the extraction task.
2.  **Refine (RL Refinement):** The model from the SFT stage is further refined using Reinforcement Learning, specifically Group Relative Policy Optimization (GRPO). This stage leverages the `huggingface/open-r1` framework and `trl.GRPOTrainer`. Rewards are based on the accuracy of the extracted JSON fields and adherence to the desired output format (including the `<think>/<answer>` structure), pushing the model towards generating more correct and reliable structured data.

Optimization libraries like [Unsloth AI](https://github.com/unslothai/unsloth) are leveraged for efficient training on consumer hardware.

## Proof-of-Concept (POC) Focus

The initial POC focuses on **Legal Clause Information Extraction** from Non-Disclosure Agreements (NDAs), using the [Kleister NDA dataset](https://github.com/applicaai/kleister-nda). The goal is to extract key fields (e.g., Disclosing Party, Receiving Party, Effective Date, Term Duration, Governing Law) into a structured JSON format.

## Research Goals

This project aims to answer key questions regarding the effectiveness of this methodology:
*   **RQ1:** How does the baseline performance of foundation and expert LLMs compare using zero/few-shot prompting?
*   **RQ2:** What is the performance gain from standard SFT (`prompt -> JSON`) over baselines?
*   **RQ3:** How much does adding distilled reasoning (`<think>` tags) during SFT improve performance over standard SFT?
*   **RQ4:** What further improvements does the GRPO refinement stage bring compared to the best SFT model?

## Repository Structure (Illustrative)

```text
trs-extraction/
├── data_prep/ # Scripts for dataset loading, preprocessing, <think> tag generation
├── sft/ # Scripts for Supervised Fine-Tuning (Standard and with Reasoning)
│ └── train_sft.py
├── rl/ # Scripts and configs for Reinforcement Learning (GRPO)
│ └── train_grpo.py
│ └── configs/
│ └── rewards/
├── evaluation/ # Scripts for evaluating model outputs
├── notebooks/ # Jupyter notebooks for exploration and analysis
├── requirements.txt # Project dependencies
└── README.md # This file
```


## Setup & Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/[your-username]/trs-extraction.git
    cd trs-extraction
    ```

2.  **Create a Conda environment (Recommended):**
    ```bash
    conda create -n trse python=3.10 # Or your preferred Python version
    conda activate trse
    ```

3.  **Install dependencies:**
    *Note: Ensure you have PyTorch installed appropriate for your CUDA version first. Refer to the official PyTorch website.*
    ```bash
    pip install -r requirements.txt
    # Potentially install Unsloth if using it (follow their specific instructions)
    # pip install "unsloth[cuXXX]" -f https://github.com/unslothai/unsloth/releases (Replace cuXXX)
    ```

    Key dependencies include: `torch`, `transformers`, `trl`, `peft`, `datasets`, `accelerate`, potentially `unsloth`.

## Usage / Workflow

1.  **Data Preparation (`data_prep/`):**
    *   Download or prepare the target dataset (e.g., Kleister NDA).
    *   Preprocess the data into the required format (`prompt`, `answer_JSON`).
    *   (Optional/If applicable) Run scripts to generate `<think>` tags using an expert model API, creating the augmented dataset for SFT.

2.  **Supervised Fine-Tuning (`sft/`):**
    *   Run `train_sft.py` with appropriate arguments to perform standard SFT (`prompt -> JSON`).
    *   Run `train_sft.py` with appropriate arguments to perform SFT with distilled reasoning (`prompt -> <think>...</think><answer>JSON</answer>`).

3.  **Reinforcement Learning (`rl/`):**
    *   Configure reward functions (especially the JSON accuracy check) in `rl/rewards.py`.
    *   Run `train_grpo.py`, pointing to the best SFT checkpoint (from step 2 with reasoning) and desired RL configurations.

4.  **Evaluation (`evaluation/`):**
    *   Use scripts to run inference with the baseline models, SFT models, and the final RL model on the test set.
    *   Compute accuracy metrics (JSON field F1, exact match) and format adherence scores.

*(Specific command-line examples will be added as scripts are developed)*

## Citation

If you use this work, please cite:
```bibtex
@misc{johannes_foulds_trse_2025,
  title={Think-Refine Structured Extraction (TRSE): Methodology and Application},
  author={Johannes Foulds},
  year={2025},
  howpublished={Work in Progress},
}
