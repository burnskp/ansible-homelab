# We don't care about either of these rules in a devcontainer
# kics-scan disable=b03a748a-542d-44f4-bb86-9199ab4fd2d5,965a08d7-ef86-4f14-8792-4a3b2098937e
# b03a748a-542d-44f4-bb86-9199ab4fd2d5 = HEALTHCHECK instruction missing
# 965a08d7-ef86-4f14-8792-4a3b2098937e = Apt Get Install Pin Version Not Defined
FROM mcr.microsoft.com/devcontainers/base:noble

ARG ANSIBLE_LINT_VERSION
ARG ANSIBLE_NAVIGATOR_VERSION
ARG ANSIBLE_VERSION
ARG MOLECULE_VERSION
ARG PRECOMMIT_VERSION
ARG PYTEST_ANSIBLE_VERSION
ARG YAMLLINT_VERSION

# Update packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y upgrade \
  && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Install pipx
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends libonig-dev python3-dev pipx \
  && pipx ensurepath \
  && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

USER vscode

# Install ansible
RUN if [ "${ANSIBLE_VERSION}" = "latest" ]; then \
  pipx install --include-deps ansible; else \
  pipx install --include-deps ansible==${ANSIBLE_VERSION}; fi

# Install ansible-lint
RUN if [ "$ANSIBLE_LINT_VERSION" = "latest" ]; then \
  pipx inject --include-apps ansible ansible-lint; else \
  pipx inject --include-apps ansible ansible-lint=${ANSIBLE_LINT_VERSION}; fi

# Install ansible-navigator
RUN if [ "$ANSIBLE_NAVIGATOR_VERSION" = "latest" ]; then \
  pipx install ansible-navigator; else \
  pipx install ansible-navigator==${ANSIBLE_NAVIGATOR_VERSION}; fi

# Install molecule
RUN if [ "$MOLECULE_VERSION" = "latest" ]; then \
  pipx inject --include-apps ansible molecule; else \
  pipx inject --include-apps ansible molecule==${MOLECULE_VERSION}; fi \
  && pipx inject ansible requests

# Install pre-commit
RUN if [ "$PRECOMMIT_VERSION" = "latest" ]; then \
  pipx install pre-commit; else \
  pipx install pre-commit==${PRECOMMIT_VERSION}; fi

# Install pytest-ansible
RUN if [ "$PYTEST_ANSIBLE_VERSION" = "latest" ]; then \
  pipx inject ansible pytest-ansible; else \
  pipx inject ansible pytest-ansible==${PYTEST_ANSIBLE_VERSION}; fi

# Install yamllint
RUN if [ "$YAMLLINT_VERSION" = "latest" ]; then \
  pipx install yamllint; else \
  pipx install yamllint==${YAMLLINT_VERSION}; fi
