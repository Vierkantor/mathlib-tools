{ pkgs ? import <nixpkgs> {} }:

with pkgs.python3Packages;
buildPythonApplication {
  pname = "mathlib-tools";
  version = "0.0.8";
  src = ./.;

  doCheck = false;

  propagatedBuildInputs = [
    PyGithub GitPython toml click tqdm paramiko networkx pydot pyyaml
  ];
}
