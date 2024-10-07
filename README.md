# Philosophy Intellectual Assistant

When working with philosophical texts or attempting to decompose a specific concept from a philosophical perspective (such as understanding how different schools of thought or philosophers interpret a particular idea), users face difficulties in finding relevant, concise, and contextually accurate information. The vast amount of data, specialized terminology, and complexity of the material make it challenging to quickly retrieve precise and structured answers to a wide range of philosophical questions.

The RAG system solves this problem by providing structured responses tailored to users' needs, whether it's a  analysis of philosophical concepts or a brief summary of a particular philosopher's ideas. Additionally, the system can handle complex tasks like comparing excerpts from different texts, helping users understand how a passage correlates with the views or theories of another philosopher.

This project was implemented for [LLM Zoomcamp](https://github.com/DataTalksClub/llm-zoomcamp) - a free course about LLMs and RAG.

## Dataset

Information about dataset you can see in `backend/0_ingest.ipynb`.

## Preparation

1. Clone/fetch repo.
2. You have to run this locally (or as i did in Github Codespaces).
3. Run in bash: `pip install -r requirements.txt`
4. Run in bash: `jupyter notebook`
4. Run cells in a files in folder `/backend` in order that writes below, all further necessary instructions are indicated there. 

Unfortunately I didn't hosted ElasticSearch anywhere, data wasn't saved, so you have to wait to data ingestion locally. I runned only subset of dataset (to save time).
You need to register on Groq (it's provide you free LLM access).

## What's implemented, launch order

1. `0_ingest.ipynb` Data Ingestion (loading the data into the knowledge base): download dataset, dataset preparation (chuncking, adding metadata, creating embeddings), ElasticSearch ingestion (create indexes and search queries). 
2. `1_rag.ipynb` - you can run RAG flow and try to answer questions here. Retrieval part based on Keyword search with Semantic Search. Evaluation based on comparison of response results with a semi-synthetic dataset.
