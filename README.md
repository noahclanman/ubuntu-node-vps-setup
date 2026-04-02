# Ultimate Ubuntu VPS Node.js Installer

This script installs:

* Latest Node.js 22
* Latest official npm
* PM2 process manager

## Files

* `install-node.sh`

## How to use

### 1. Download or clone repo

```bash id="g4m7xn"
git clone YOUR_REPO_URL
cd YOUR_REPO_FOLDER
```

### 2. Make script executable

```bash id="p1v8sq"
chmod +x install-node.sh
```

### 3. Run script

```bash id="j7t3ma"
./install-node.sh
```

or:

```bash id="r6k2wd"
bash install-node.sh
```

## Verify installation

```bash id="w0m9ce"
node -v
npm -v
pm2 -v
```

Expected output:

```bash id="q8x5lu"
v22.x.x
11.x.x
6.x.x
```

## Included fixes

* Removes broken Ubuntu npm packages
* Installs official NodeSource Node.js
* Replaces Ubuntu npm with latest official npm
* Installs PM2 globally
