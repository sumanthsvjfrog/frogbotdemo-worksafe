# ============================================================
# Dockerfile — Pulling via JFrog Curated Virtual Docker Repo
# Registry: psemea.jfrog.io/sumlearn-docker-curation-virt
# ============================================================

# Stage 1: Base image pulled through curated virtual repo
# Curation policies will be enforced at pull time via Artifactory
FROM psemea.jfrog.io/sumlearn-docker-curation-virt/alpine

# Set working directory
WORKDIR /app

# Copy dependency manifests first (layer caching)
COPY package*.json ./

# Install dependencies
# NOTE: If using JFrog CLI, replace with:
#   RUN jf npm install --build-name=my-build --build-number=1
RUN npm install --production

# Copy application source
COPY . .

# Expose application port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
