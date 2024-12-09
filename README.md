
# Linux configs 

a collections of config files for linux operating system.
## description

- this repo holds customs configs
- uses GNU/stow to symlink the config files
## Quick Configs Setup

Clone the project

```bash
  git clone https://link-to-project
```

Go to the project directory

```bash
  cd my-project
```

Install dependencies

```bash
  pacman -S stow
```

Initiate stow symlinks
```bash
  stow --adept .
```

