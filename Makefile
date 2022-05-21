PACKAGE = pkgname
PYTHON_BIN ?= python3
PIP_BIN ?= pip3

all: docs

# just use normal pip (with an empty setup.cfg) for local and editable
# installs, no dist package required
.PHONY: install
install:
	$(PIP_BIN) install .

.PHONY: localdev
localdev:
	$(PIP_BIN) install --editable .

.PHONY: uninstall
uninstall:
	$(PIP_BIN) uninstall -y $(PACKAGE)


.PHONY: docs
docs:
	cd docs && make html

.PHONY: clean-docs
clean-docs:
	cd docs && make clean


# to actually create the distribution package, use the setuptools.build_meta
# pyproject.toml-capable backend
.PHONY: dist
dist:
	@if ! $(PIP_BIN) show 'build' >/dev/null 2>&1; then \
		echo "ERROR: python 'build' package is required (hint: $(PIP_BIN) install build)";  \
		exit 1; \
	fi
	$(PYTHON_BIN) -m build

.PHONY: clean-dist
clean-dist:
	rm -rf dist build


.PHONY: upload-prod
upload-prod: dist
	twine upload --repository $(PACKAGE) --skip-existing dist/*

.PHONY: upload-test
upload-test: dist
	twine upload --repository $(PACKAGE)_test --skip-existing dist/*





# .PHONY: clean
# clean:
# 	rm -rf ./$(OUTDIR)/* ./$(WOWDUMP_OUTDIR)/* ./$(DEPS_DIR)/*.*P ./$(DEPS_DIR)/*.d

# .PHONY: realclean
# realclean: clean
# 	rm -rf dist build */*.egg-info *.egg-info

.PHONY: clean
clean: clean-docs clean-dist
	rm -rf */*.egg-info *.egg-info


# helpful for debugging
print-%: ;@echo $*=$($*)
