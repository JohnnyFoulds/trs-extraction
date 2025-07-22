# A design-focused paper presenting the **architecture and development** of the RAG-based QA system. It will detail the system components-document corpus creation, retrieval module, LLM integration, and interface-and explain how design decisions meet the ODL requirements. This corresponds to building and demonstrating the artefact. 

RAG-based QA systems integrate four key components (corpus creation, retrieval modules, LLM integration, and user interfaces) with hybrid retrieval and modular architectures to achieve operational requirements for scalability and precision.


#### Abstract

Twenty-four studies on retrieval-augmented generation (RAG) systems outline design choices for building question-answering artefacts. The papers describe architectures that integrate four key components: 1. Corpus creation-from custom datasets of 500+ pages to large public benchmarks (up to 24 million documents). 2. Retrieval modules employing sparse (e.g., BM25), dense, hybrid, or graph-based methods that enhance recall and precision. 3. LLM integration using fine-tuning, parameter-efficient strategies (LoRA, QLoRa, quantization), or multi-agent pipelines to boost answer relevance. 4. User interfaces ranging from web portals and APIs to modular dashboards that support deployment and reproducibility.


Several studies report quantitative benefits: F1 scores between 35 and 57, accuracy improvements up to $99 \%$ in domain-specific settings, and speedups of $10-100 \times$ in some implementations. Designs featuring hybrid retrieval (in 20 of the studies), modular and multi-agent architectures, and explicit relevance assessment meet intended operational design criteria for scalability, reliability, and contextual precision.

## Paper search

Using your research question "A design-focused paper presenting the architecture and development of the RAG-based QA system. It will detail the system components-document corpus creation, retrieval module, LLM integration, and interface-and explain how design decisions meet the ODL requirements. This corresponds to building and demonstrating the artefact.", we searched across over 126 million academic papers from the Semantic Scholar corpus. We retrieved the 500 papers most relevant to the query.

## Screening

We screened in sources that met these criteria:

- Technical Architecture Description: Does the study provide detailed technical architecture description of a RAG-based QA system, including specific LLM integration methods?
- Implementation Details: Does the paper include practical implementation details rather than purely theoretical discussion?

- RAG Components: Does the study describe both retrieval module implementation and document corpus management specifically for RAG systems?
- System Integration: Does the study demonstrate complete system integration rather than focusing on isolated components?
- RAG Integration: Does the study explicitly include RAG components in its QA system implementation?
- Empirical Evidence: Does the study provide technical evaluation results or implementation case study evidence?
- System Comparison: Does the study include comparison with other architectural approaches or clear justification for the chosen architecture?

We considered all screening questions together and made a holistic judgement about whether to screen in each paper.

# Data extraction 

We asked a large language model to extract each data column below from each paper. We gave the model the extraction instructions shown below for each column.

## - System Components:

Identify and list the key architectural components of the RAG system. Look in the methods or system design sections for detailed descriptions. Include:

- Retrieval module details (e.g., embedding model, retrieval strategy)
- Language model used
- Any unique preprocessing or integration techniques
- Interface or deployment approach

If multiple components are described, list them all. If any component is not clearly specified, note "Not specified" and provide any available partial information.

## - Document Corpus Characteristics:

Describe the document corpus used in the RAG system:

- Source of documents (e.g., custom dataset, existing datasets)
- Languages supported
- Total number of documents or size of corpus
- Document types (e.g., text, OCR-processed, multilingual)
- Any preprocessing or filtering applied to the corpus

If exact numbers are not provided, use ranges or qualitative descriptions. If information is incomplete, note which specific details are missing.

## - Unique Design Innovations:

Identify and describe any novel design approaches or innovations in the RAG system:

- Specific techniques to address challenges (e.g., hallucination, retrieval accuracy)
- Unique fine-tuning or alignment methods
- Innovative integration of retrieval and generation components

Provide a clear, concise description of the innovation, including its purpose and potential impact. If no unique innovations are identified, state "No specific innovations reported".

# - Evaluation Metrics: 

List all performance metrics used to evaluate the RAG system:

- Specific metrics (e.g., F1 score, EM, BLEU)
- Datasets used for evaluation
- Performance results for each metric

Capture both quantitative metrics and any qualitative assessment. If multiple datasets were used, list results for each separately. If exact numbers are not clear, use ranges or descriptive terms.

- Computational Resources:

Describe the computational requirements:

- Models used (specific versions)
- Hardware requirements (GPU, CPU)
- Model size
- Any optimization techniques (quantization, pruning)

If multiple model configurations are discussed, capture details for each. If specific hardware specs are not provided, note the general computational complexity or resource needs.

## Results

## Characteristics of Included Studies

| Study | Study Focus <br> (Retrieval- <br> Augmented <br> Generation <br> Component) | Architecture <br> Type | Implementation <br> Scale | Key Innovation | Full text retrieved |
| :--: | :--: | :--: | :--: | :--: | :--: |
| Saha et al., 2025 | Retrieval, corpus, large language model (LLM) integration | Custom <br> QuIM-RAG, inverted index | Custom corpus, $500+$ pages | Question-toquestion inverted index matching | No |
| Oubah and Şener, 2024 | Multilingual retrieval, optical character recognition (OCR), LLM | Transformer- <br> based, OCR, hybrid | Multilingual, $6,500+$ samples | Multilingual semantic retrieval, OCR integration, fine-tuned E5 | Yes |

| Study | Study Focus <br> (Retrieval- <br> Augmented <br> Generation <br> Component) | Architecture <br> Type | Implementation <br> Scale | Key Innovation | Full text retrieved |
| :--: | :--: | :--: | :--: | :--: | :--: |
| Pu et al., 2024 | Domain- <br> specific <br> retrieval- <br> augmented <br> generation <br> (RAG) <br> (exploratory <br> data analysis) | Custom RAG, contrastive learning | ORD-QA, 290 chunks | Contrastive learning, reranker, domain LLM | Yes |
| Liu et al., 2024 | LLM-aligned retrieval | Two-stage fine-tuning, low-rank adaptation (LoRA) | Open-domain question answering, large datasets | Invariance loss, LoRA-based retriever | Yes |
| Dong et al., $2024$ | Preference alignment | DPA-RAG, multi-stage alignment | Wikipedia, <br> $100+$ <br> documents | Dual preference alignment, query augmentation | Yes |
| Shi et al., 2024 | Modular RAG, efficiency | Four-module synergy | 6 question answering datasets | Query rewriting+, knowledge filter, memory reservoir | Yes |
| Wang et al., $2025$ | Financial, multi-modal | FinSage, multi-aspect | FinanceBench, real deployment | Multi-modal pipeline, direct preference optimization (DPO) re-ranking | No |
| Liu et al., 2025 | Multi-agent, multimodal | HM-RAG, hierarchical agents | ScienceQA, <br> CrisisMMD | Multi-agent, multi-source retrieval, expert refinement | Yes |
| Hou and <br> Zhang, 2024 | Dietary supplement question answering | $\mathrm{RAG}+$ <br> knowledge graph | iDISK2.0, <br> 174,000 entities | LLM-guided subgraph retrieval, user interface | Yes |
| Opoku et al., $2025$ | Domain- <br> specific, graph | DO-RAG, hybrid graph/vector | Database, electrical domains | Agentic chain-of-thought, graph+vector fusion | No |

| Study | Study Focus <br> (Retrieval- <br> Augmented <br> Generation <br> Component) | Architecture <br> Type | Implementation <br> Scale | Key Innovation | Full text retrieved |
| :--: | :--: | :--: | :--: | :--: | :--: |
| Stuhlmann et al., 2025 | Biomedical question answering | Hybrid <br> BM25+MedCPT | PubMed, 24 million documents | Hybrid retrieval, scalable deployment | Yes |
| Cao et al., 2025 | PDF question answering, neuralsymbolic | NeuSym-RAG, hybrid | AIRQA-REAL, 6,797 PDFs | Multi-view chunking, schema parsing | Yes |
| Aitymbetov et al., 2024 | Multidocument question answering, efficiency | Lightweight, two-step | StrategyQA | BM25+Mixed <br> low-resource <br> focus | No |
| Hou et al., 2024 | Dietary supplement question answering | RAG + <br> knowledge <br> graph | iDISK2.0, <br> 174,000 entities | Biomedical <br> knowledge <br> graph +LLM, <br> noise reduction | No |
| Zhao et al., 2025 | Graph-based RAG | E 2GraphRAG, adaptive | No mention found | Bidirectional entity-chunk index, adaptive retrieval | No |
| Feng et al., 2024 | Network operations question answering, efficiency | EasyRAG, <br> dual-route | Chinese, 4 <br> HTML <br> packages | Dual sparse retrieval, LLM reranker, image filtering | Yes |
| Kim et al., 2025 | Financial question answering, hybrid | Three-phase RAG | 7 finance datasets | Hybrid <br> dense+sparse, <br> DPO, <br> markdown <br> restructuring | Yes |
| Zha, "SMARTFin- <br> RAG" | Financial RAG evaluation | Modular, live-demo | Financial documents, live | Modular runtime, documentcentric evaluation, LLM-as-judge | No |

| Study | Study Focus <br> (Retrieval- <br> Augmented <br> Generation <br> Component) | Architecture <br> Type | Implementation <br> Scale | Key Innovation | Full text retrieved |
| :--: | :--: | :--: | :--: | :--: | :--: |
| Wang et al., 2024a | Long document question answering, graph | GARLIC, hierarchical weighted directed acyclic graph (HWDAG) | LongBench, 4 datasets | LLM-guided graph search, attention-based retrieval | Yes |
| Visciarelli et al., 2024 | Legal question answering, domain adaptation | $\mathrm{RAG}+$ quantized low-rank adaptation (QLoRa) | Emilia- <br> Romagna law | QLoRa <br> quantization, <br> instruction <br> tuning | No |
| Wang et al., 2024b | Relevanceaware RAG | REAR, rank head | Natural <br> Questions, <br> TriviaQA, <br> SQuAD | Explicit relevance assessment, bi-granularity fusion | Yes |
| Vujić et al., 2025 | Graph-based, modular | Dense+graph+rerank | 4uk mention found | ChromaDB, <br> PageRank, modular pipeline | No |
| Dong et al., <br> "Talk Before <br> You Retrieve" | Medical question answering, agentic | Discuss-RAG, plug-in | 4 medical question answering datasets | Agent-led discussion, summa-rizer/decision agents | No |
| Finardi et al., 2024 | RAG best practices | Multi-stage, hybrid | Harry Potter, Portuguese | Hybrid <br> BM25+ADA- <br> 002, <br> multi-stage <br> rerank | Yes |
| Chen et al., 2025 | Multi-agent reinforcement learning RAG | MMOA-RAG, multi-agent proximal policy optimization (MAPPO) | HotpotQA, 2Wiki, AmbigQA | Multi-agent reinforcement learning, joint module optimization | Yes |

Architecture Types:

- Hybrid architectures (dense, sparse, or graph retrieval):7 studies
- Graph-based or graph+vector architectures:4 studies

- Knowledge graph integration:2 studies
- Multi-agent or agentic architectures:3 studies
- Modular architectures:3 studies
- Custom or uniquely named RAG architectures:11 studies
- Parameter-efficient fine-tuning (LoRA/QLoRa):2 studies
- Plug-in architecture:1 study
- Transformer-based architecture:1 study

Key Innovations:

- Retrieval enhancement (hybrid retrieval, reranking, query rewriting, chunking, etc.):20 studies
- Graph/vector fusion or graph search:3 studies
- Knowledge graph integration:2 studies
- Multi-agent or agentic approaches:3 studies
- Preference alignment:1 study
- Multi-modal retrieval:2 studies
- Domain adaptation:2 studies
- Modular pipelines:3 studies
- Evaluation/LLM-as-judge:1 study
- Efficiency/low-resource settings:1 study
- Multilingual retrieval:1 study

Implementation Scale:

- Large-scale datasets (thousands of documents/entities or real-world deployment):9 studies
- Domain-specific datasets (finance, law, medical, science):7 studies
- Real-world or live deployment:2 studies
- No mention found for implementation scale:2 studies
- Small or medium-scale datasets (hundreds of documents or chunks):3 studies


# System Architecture Analysis 

## Core Retrieval-Augmented Generation Components

All included studies describe the core pipeline for retrieval-augmented generation systems, consisting of:

- Document corpus creation:Approaches range from custom datasets to large-scale public benchmarks.
- Retrieval module:Implementations include traditional sparse retrieval (such as BM25), dense embedding models, graph-based retrieval, and hybrid neural-symbolic methods.
- Large language model (LLM) integration:Both open-source (e.g., LLaMA, Qwen, DeepSeek) and commercial (e.g., GPT-4, Gemini) models are used, with several studies applying fine-tuning, quantization, or parameter-efficient adaptation (such as LoRA or QLoRa).
- Interface or deployment mechanism:Where described, interfaces include web portals, application programming interfaces (APIs), and modular dashboards.


## Integration Patterns

Key integration patterns identified across studies:

- Multiple retrieval strategies:Many studies combine dense and sparse retrieval, graph and vector retrieval, or neural and symbolic methods to improve recall and precision.
- Multi-agent or multi-module architectures:Some studies (e.g., Liu et al., 2025; Cao et al., 2025; Opoku et al., 2025) use parallel or hierarchical processing of queries and evidence.
- Preference alignment and explicit relevance assessment:These are increasingly used to reduce hallucination and improve answer faithfulness.

# Performance Optimization Approaches 

| Component Type | Design Pattern | Implementation Method | Performance Impact |
| :-- | :-- | :-- | :-- |
| Retrieval | Hybrid (dense+sparse, | BM25+MedCPT, | Improved |
|  | graph+vector) | ChromaDB+PageRank, | recall/precision, faster |
|  |  | multi-path | retrieval |
| LLM | Parameter-efficient | LoRA, QLoRa, | Reduced memory, faster |
|  | tuning | quantization | inference |
| Reranker | Cross-encoder, DPO, | Fine-tuned rerankers, | Higher answer relevance, |
|  | BGE | DPO, BGE | compliance |
| Pipeline | Multi-agent, modular | MAPPO, plug-and-play, | Joint optimization, |
|  |  | modular runtime | scalability |
| Preprocessing | Multi-modal, chunking, | Multi-view chunking, | Broader coverage, |
|  | OCR | OCR, schema parsing | improved context |

Design Patterns and Performance Impacts:

- Hybrid retrieval (dense+sparse, graph+vector):Improved recall and precision, faster retrieval
- Parameter-efficient tuning for LLMs (LoRA, QLoRa, quantization):Reduced memory usage, faster inference
- Reranking (cross-encoder, DPO, BGE):Higher answer relevance, compliance
- Multi-agent and modular pipeline designs:Joint optimization, scalability
- Preprocessing (multi-modal, chunking, OCR):Broader coverage, improved context

We did not find mention of missing data for design pattern or performance impact in the studies summarized above. Some studies reported multiple design patterns or impacts per component.

## Implementation Outcomes

## Performance Metrics

| Study | Metric Category | Measurement <br> Approach | Results Range | Impact Factor |
| :-- | :-- | :-- | :-- | :-- |
| Saha et al., 2025 | BERT-Score, <br> RAGAS | Custom corpus | Outperforms <br> baseline | Improved question <br> answering accuracy |

| Study | Metric Category | Measurement Approach | Results Range | Impact Factor |
| :--: | :--: | :--: | :--: | :--: |
| Oubah and Şener, 2024 | F1, Exact Match (EM), BLEU, RAGAS | Multilingual question answering | F1: $0.47-0.75$ | Multilingual, OCR |
| Pu et al., 2024 | Recall, BLEU, ROUGE-L | ORD-QA, exploratory data analysis | Recall, BLEU improved | Domain-specific question answering |
| Liu et al., 2024 | EM, Accuracy at $5 / 20$ | TriviaQA, Natural Questions, PopQA | EM: 53.6-75.3 | LLM-aligned retrieval |
| Dong et al., 2024 | Hit at 1, F1 | Natural Questions, TriviaQA, HotpotQA, WebQSP | Outperforms baseline | Preference alignment |
| Shi et al., 2024 | F1, Hit Rate, Recall | 6 question answering datasets | F1: 35-57 | Modular synergy |
| Wang et al., 2025 | Recall, Accuracy | FinanceBench | Recall: 92.5\% | Compliance question answering |
| Liu et al., 2025 | Accuracy, ROUGE-L, BLEU | ScienceQA, CrisisMMD | Accuracy: 58-94\% | Multi-agent, multimodal |
| Hou and Zhang, 2024 | Accuracy | True/False, multiple choice | $95-99 \%$ | Dietary supplement question answering, knowledge graph + LLM |
| Opoku et al., 2025 | Recall, Relevancy | Domain question answering | Recall: near-perfect | Graph+vector fusion |
| Stuhlmann et al., 2025 | Recall, Precision, F1 | PubMed, BIOASQ | Recall: 0.57 | Hybrid retrieval |
| Cao et al., 2025 | LLM-based, subjective | AIRQA-REAL, M3SciQA | No mention found | Neural-symbolic, PDF |
| Aitymbetov et al., 2024 | Accuracy, <br> Evidence Quality | StrategyQA | Superior to baseline | Lightweight, efficient |
| Hou et al., 2024 | Accuracy | True/False, multiple choice | $95-99 \%$ | Biomedical knowledge graph + LLM |
| Zhao et al., 2025 | Speed, question answering performance | No mention found | 10-100x speedup | Graph-based, adaptive |
| Feng et al., 2024 | Accuracy, Similarity | GLM4, Chinese | No mention found | Efficient, dual-route |
| Kim et al., 2025 | Normalized <br> Discounted <br> Cumulative Gain <br> at 10 (NDCG@10), <br> Relevance | 7 finance datasets | NDCG@10 improved | Hybrid, DPO |

| Study | Metric Category | Measurement Approach | Results Range | Impact Factor |
| :--: | :--: | :--: | :--: | :--: |
| Zha, "SMARTFinRAG" | Hit rate, Mean <br> Reciprocal Rank (MRR), NDCG | Financial documents | No mention found | Modular, <br> LLM-as-judge |
| Wang et al., 2024a | F1, ROUGE-L, BLEU-4 | LongBench | Outperforms baseline | LLM-guided graph |
| Visciarelli et al., 2024 | Perplexity, Expert Review | Legal question answering | No mention found | QLoRa, domain adaptation |
| Wang et al., 2024b | EM, F1, Hit at 1, Jaccard similarity | Natural Questions, TriviaQA, SQuAD | No mention found | Relevance-aware |
| Vujić et al., 2025 | Precision, Recall | No mention found | No mention found | Modular, graph-based |
| Dong et al., "Talk <br> Before You <br> Retrieve" | Answer accuracy | BioASQ, PubMedQA | $+12-17 \%$ | Agentic, medical question answering |
| Finardi et al., 2024 | MRR at 10, Recall | Harry Potter, Portuguese | MRR@10: $+35 \%$ | Hybrid, best practices |
| Chen et al., 2025 | Accuracy, EM, F1 | HotpotQA, 2Wiki, AmbigQA | Accuracy: $38-42 \%$ | Multi-agent reinforcement learning |

Metric Categories:

- Most common metrics:Accuracy (7 studies), F1 (7 studies), Recall (7 studies)
- Other metrics:Exact Match (4 studies), BLEU and ROUGE-L (3 studies each), Hit at 1 (2 studies), Precision (2 studies), NDCG/NDCG@10 (2 studies), MRR/MRR@10 (2 studies), Relevancy/Relevance (2 studies), and a variety of single-use metrics (BERT-Score, Accuracy at 5/20, Hit Rate, Evidence Quality, Speed, Similarity, BLEU-4, Jaccard similarity, Perplexity, Expert Review, LLM-based, Subjective, Answer accuracy)
- Multiple metrics:Most studies reported more than one metric

Measurement Approaches:

- Standard question answering datasets (e.g., Natural Questions, TriviaQA, SQuAD, HotpotQA):9 studies
- Domain-specific datasets (finance, biomedical, legal, Harry Potter, and others):11 studies
- Multilingual question answering:1 study
- Multimodal approach:1 study
- Custom corpus: 1 study
- No mention found for measurement approach:2 studies

Results Range:

- Quantitative results (accuracy, F1, recall, or other metrics with numerical values or ranges):13 studies
- Qualitative results ("outperforms baseline", "improved", or "superior to baseline"):6 studies
- No mention found for detailed results:6 studies

# System Reliability 

- Technical reliability:Most studies assess reliability using technical metrics such as accuracy, recall, and precision.
- Scalability and efficiency:Some studies (e.g., Stuhlmann et al., 2025; Wang et al., 2025) report on scalability and efficiency.
- User-facing reliability:We did not find mention of user-facing reliability (such as uptime or error rates) in the available full texts or abstracts.


## User Interface Effectiveness

- Reporting:Only a minority of studies describe user-facing portals, dashboards, or APIs.
- Evaluation:Where evaluated, interfaces are described as user-friendly and efficient, but we did not find mention of systematic user studies or usability metrics.


## Thematic Analysis

## Document Processing and Retrieval Strategies

- Corpus creation:Highly domain-dependent, with some studies constructing custom datasets and others using large-scale public benchmarks.
- Preprocessing techniques:Include chunking (by section, token, or event), OCR for scanned or PDF documents, and knowledge graph construction for structured domains.
- Retrieval strategies:Increasingly hybrid, combining dense and sparse methods, or integrating symbolic and neural approaches.
- Emerging trends:Graph-based retrieval and multi-agent decomposition are used for complex or multimodal corpora.


## LLM Integration Techniques

- Model types:Both open-source (LLaMA, Qwen, DeepSeek) and commercial (GPT-4, Gemini) models are used.
- Adaptation methods:Fine-tuning, LoRA, QLoRa, and DPO are common; quantization (e.g., 4-bit) is used for deployment efficiency.
- Multi-agent systems:Some studies treat the RAG pipeline as a multi-agent system, enabling joint optimization of retrieval, reranking, and generation.
- Faithfulness:Preference alignment and explicit relevance assessment are used to improve answer faithfulness and reduce hallucination.


## Interface Design Patterns

- Types:Web-based portals, modular dashboards, and plug-and-play modules are described in some studies.
- Deployment:Some systems are deployed in real-world settings (e.g., FinSage in online financial meetings), while others provide APIs or open-source code for reproducibility.
- Evaluation:We did not find mention of systematic user studies or usability metrics.

# System Scalability Solutions 

- Architectures:Modular architectures, memory-optimized parallelization, and parameter-efficient LLM adaptation are used to address scalability.
- Deployment:Some studies report deployment on multi-GPU clusters, while others emphasize lightweight or efficient models for low-resource settings.
- Reproducibility:Open-source code and benchmarks are increasingly provided to facilitate reproducibility and scalability.


## References

Binita Saha, Utsha Saha, and Muhammad Zubair Malik. "QuIM-RAG: Advancing Retrieval-Augmented Generation With Inverted Question Matching for Enhanced QA Performance." IEEE Access, 2025.
David Osei Opoku, Ming Sheng, and Yong Zhang. "DO-RAG: A Domain-Specific QA Framework Using Knowledge Graph-Enhanced Retrieval-Augmented Generation." arXiv.org, 2025.
Dejan Vujić, Angelina Njeguš, and Nebojša Bačanin Džakula. "Enhancing Retrieval - Augmented Generation with Graph-Based Retrieval and Generative Modeling." SINTEZA, 2025.
Guanting Dong, Yutao Zhu, Chenghao Zhang, Zechen Wang, Zhicheng Dou, and Ji-Rong Wen. "Understand What LLM Needs: Dual Preference Alignment for Retrieval-Augmented Generation." The Web Conference, 2024.
Ismail Oubah, and Dr. Selçuk Şener. "Advanced Retrieval Augmented Generation: Multilingual Semantic Retrieval Across Document Types by Finetuning Transformer Based Language Models and OCR Integration." Engineering and Technology Journal, 2024.
Linus Stuhlmann, Michael Alexander Saxer, and Jonathan Fürst. "Efficient and Reproducible Biomedical Question Answering Using Retrieval Augmented Generation." arXiv.org, 2025.
Michele Visciarelli, Giovanni Guidi, Laura Morselli, Domitilla Brandoni, Giuseppe Fiameni, Luisa Monti, Stefano Bianchini, and Cosimo Tommasi. "SAVIA: Artificial Intelligence in Support of the Lawmaking Process." Ital-IA, 2024.
Nurmukhammed Aitymbetov, Min-Ho Lee, and Nguyen Anh Tu. "Multi-Document Question Answering with Lightweight Embeddings-Based Document Reranker." International Conference on Autonomic and Trusted Computing, 2024.
Paulo Finardi, Leonardo Avila, Rodrigo Castaldoni, P. Gengo, Celio H. N. Larcher, Marcos Piau, Pablo B. Costa, and Vinicius Carid'a. "The Chronicles of RAG: The Retriever, the Chunk and the Generator." arXiv.org, 2024.
Pei Liu, Xin Liu, Ruoyu Yao, Junming Liu, Siyuan Meng, Ding Wang, and Jun Ma. "HM-RAG: Hierarchical Multi-Agent Multimodal Retrieval Augmented Generation." arXiv.org, 2025.
Ruisheng Cao, Hanchong Zhang, Tiancheng Huang, Zhangyi Kang, Yuxin Zhang, Liangtai Sun, Hanqi Li, et al. "NeuSym-RAG: Hybrid Neural Symbolic Retrieval with Multiview Structuring for PDF Question Answering." arXiv.org, 2025.
Sejong Kim, Hyunseo Song, Hyunwoo Seo, and Hyunjun Kim. "Optimizing Retrieval Strategies for Financial Question Answering Documents in Retrieval-Augmented Generation Systems." arXiv.org, 2025.
Xinyu Wang, Jijun Chi, Zhenghan Tai, Tung Sum Thomas Kwok, Muzhi Li, Zhuhong Li, Hailin He, et al. "FinSage: A Multi-Aspect RAG System for Financial Filings Question Answering." arXiv.org, 2025.
Xinyu Wang, Yanzheng Xiang, Lin Gui, and Yulan He. "GARLIC: LLM-Guided Dynamic Progress Control with Hierarchical Weighted Graph for Long Document QA." arXiv.org, 2024.
Xuanzhao Dong, Wenhui Zhu, Hao Wang, Xiwen Chen, Peijie Qiu, Rui Yin, Yi Su, and Yalin Wang. "Talk

Before You Retrieve: Agent-Led Discussions for Better RAG in Medical QA," 2025.
Y. Hou, and R. Zhang. "Enhancing Dietary Supplement Question Answer via Retrieval-Augmented Generation (RAG) with LLM." medRxiv, 2024.
Yibo Zhao, Jiapeng Zhu, Ye Guo, Kangkang He, and Xiang Li. "E 2GraphRAG: Streamlining Graph-Based RAG for High Efficiency and Effectiveness." arXiv.org, 2025.
Yiqun Chen, Ling Yan, Weiwei Sun, Xinyu Ma, Yi Zhang, Shuaiqiang Wang, Dawei Yin, Yiming Yang, and Jiaxin Mao. "Improving Retrieval-Augmented Generation Through Multi-Agent Reinforcement Learning." arXiv.org, 2025.
Yiwei Zha. "SMARTFinRAG: Interactive Modularized Financial RAG Live-Demo System," n.d.
Yu Hou, J. R. Bishop, Hongfang Liu, and Rui Zhang. "Improving Dietary Supplement Information Retrieval: Development of a Retrieval-Augmented Generation System With Large Language Models." Journal of Medical Internet Research, 2024.
Yuan Pu, Zhuolun He, Tairu Qiu, Haoyuan Wu, and Bei Yu. "Customized Retrieval Augmented Generation and Benchmarking for EDA Tool Documentation QA." International Conference on Computer Aided Design, 2024.
Yuhao Wang, Ruiyang Ren, Junyi Li, Wayne Xin Zhao, Jing Liu, and Ji-Rong Wen. "REAR: A RelevanceAware Retrieval-Augmented Framework for Open-Domain Question Answering." Conference on Empirical Methods in Natural Language Processing, 2024.
Yunxiao Shi, Xing Zi, Zijing Shi, Haimin Zhang, Qiang Wu, and Min Xu. "Enhancing Retrieval and Managing Retrieval: A Four-Module Synergy for Improved Quality and Efficiency in RAG Systems." arXiv.org, 2024.
Zhangchi Feng, Dongdong Kuang, Zhongyuan Wang, Zhijie Nie, Yaowei Zheng, and Richong Zhang. "EasyRAG: Efficient Retrieval-Augmented Generation Framework for Automated Network Operations." arXiv.org, 2024.
Ziwei Liu, Liangyin Zhang, Qian Li, Jianghua Wu, and Guangxu Zhu. "Invar-RAG: Invariant LLM-Aligned Retrieval for Better Generation." arXiv.org, 2024.