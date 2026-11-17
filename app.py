from fastapi import FastAPI

app = FastAPI(title="FastAPI CI/CD Demo")


@app.get("/")
def read_root():
    return {
        "status": "ok",
        "version": "1.2.0",
        "deployed_via": "GitHub Actions + GHCR",
    }


@app.get("/health")
def health():
    return {"status": "healthy"}
