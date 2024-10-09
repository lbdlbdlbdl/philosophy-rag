# Philosophy Intellectual Assistant

This project was implemented for [LLM Zoomcamp](https://github.com/DataTalksClub/llm-zoomcamp) - a free course about LLMs and RAG.

When working with philosophical texts or attempting to decompose a specific concept from a philosophical perspective (such as understanding how different schools of thought or philosophers interpret a particular idea), users face difficulties in finding relevant, concise, and contextually accurate information. The vast amount of data, specialized terminology, and complexity of the material make it challenging to quickly retrieve precise and structured answers to a wide range of philosophical questions.

The RAG system solves this problem by providing structured responses tailored to users' needs, whether it's a analysis of philosophical concepts or a brief summary of a particular philosopher's ideas. Additionally, the system can handle complex tasks like comparing excerpts from different texts, helping users understand how a passage correlates with the views or theories of another philosopher.

The quality of LLM's answers on these topics does not satisfy me, so I decided to collect a dataset from my sources (for starters, the Stanford encyclopedia), then I will replenish it from my knowledge base.

## Dataset

Information about dataset you can see in `backend/0_ingest.ipynb`.
Groud truth dataset is used and described in `backend/1_rag.ipynb`.

## Preparation

See credentials in the `.env` file if needed - everything is included except for `GROQ_API_KEY` (Groq provides free LLM access). If you want to run the entire process locally, set your `GROQ_API_KEY` in the `.env` file before running. 
I use Elastic hosting, credentials presented in `.env` file.

I run this project in Github Codespaces. You may too, or locally, or anywhere (because of docker-compose is presented). 
To run:
1. Clone/fetch the repo.
2. (optional) Make Github Codespaces wih 4-cores.
3. In the container's bash or in repo (it you run locally), run `docker-compose up --build` and wait for the dependencies to load and 2 ports to open.
4. Go to PORTS section (here you'll see *jupyter* and *grafana* hosts). The entire program is run through Jupyter notebooks (see the description below). 
5. Run the Jupyter Notebook cells in the `/backend` folder in the order listed below. All additional necessary instructions are provided in notebooks.
 

## What's implemented, launch order

1. `0_ingest.ipynb` 
    - For ingestion, I only ran a subset of the dataset to save time.
    - Data Ingestion (loading the data into the knowledge base): download dataset, dataset preparation (chuncking, adding metadata, creating embeddings)
    - ElasticSearch ingestion (create indexes and search queries). 

2. `1_rag.ipynb` - you can run RAG flow and try to ask questions here. 
    - Retrieval part based on Keyword search with Semantic Search. 
    - Retrieval Evaluation based on comparison of response results with a semi-synthetic dataset, with MRR, MHR.
    - Offline RAG evaluation with cosine similarity.
    - Online RAG evaluation with user feedback, saving to elastic to see metrics in Grafana.
