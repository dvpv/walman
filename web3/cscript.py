import json
import solcx
import sys
import os

from utils.functions import read_json

os.chdir(os.path.dirname(os.path.abspath(__file__)))

CONTRACTS_PATH: str = "./contracts"
BUILD_PATH: str = "./build"
CONFIG_PATH: str = "config.json"

config: dict = read_json(CONFIG_PATH)


def main() -> None:
    if len(sys.argv) >= 2:
        option: str = sys.argv[1]
        print(os.getcwd())

        if option == "build":
            build("BundleStorage.sol")
        elif option == "deploy":
            deploy("BundleStorage.sol")
        elif option == "--help":
            print("Available arguments:")
            print("deploy: deploy the contracts")
        else:
            print(f"Unknown argument {option}")
            print_invalid_arguments()
    else:
        print_invalid_arguments()


def print_invalid_arguments() -> None:
    print("Invalid Arguments, try --help")


def build(contract_name: str) -> dict:
    with open(f"{CONTRACTS_PATH}/{contract_name}") as file:
        file_content = file.read()
    solcx.install_solc(config["solidity_version"])
    compiled_sol = solcx.compile_standard(
        {
            "language": "Solidity",
            "sources": {contract_name: {"content": file_content}},
            "settings": {
                "outputSelection": {
                    "*": {"*": ["abi", "metadata", "evm.bytecode", "evm.sourceMap"]},
                },
            },
        },
        solc_version=config["solidity_version"],
    )
    print(config["solidity_version"])
    os.makedirs(BUILD_PATH, exist_ok=True)
    with open(f"{BUILD_PATH}/{contract_name.replace('.sol','.json')}", "w") as file:
        json.dump(compiled_sol, file, indent=2)
    with open(
        f"{BUILD_PATH}/{contract_name.replace('.sol', '_abi.json')}", "w"
    ) as file:
        json.dump(
            compiled_sol["contracts"]["BundleStorage.sol"]["BundleStorage"]["abi"],
            file,
            indent=2,
        )


def deploy(contract_name: str) -> None:
    pass


main()
