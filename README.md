# shivom-assignment
* Only the user calling the contract can grant permission for its public address. 
* Permission can be granted for any public address.
* Only the user calling the contract can check the recorded permission for its public address.
* Any user can call the contract with an address to check if they have got permission from that address.
* The Ethereum smart contract should maintains and record these permissions. 
* Contract should expose a public method for any user to grant permission to another public address. This will accept a public address parameter and return a true if successful. 
* Contract should expose a public method for any user to check if they have permission from any user. This will accept a public address parameter and return a true if user has permission. 
* The contract should be deployed to an Ethereum Rinkeby network.

### Solution for shivom assignment
The design process for smart contract was to keep user stories in mind and minimize gas consumption.The contract has two function and a mapping variable to store data on blockchain.`setPermission` function is public and changes a blockchain state,while get `getPermissionStatus` queries blockchain state.Further improvement could be integrating with web3js and shifting development to truffle with tests.The frontend then could further be deployed on ipfs.
* Smart Contract deployment transaction [Rinkeby explorer](https://rinkeby.etherscan.io/tx/0xe93450d4f702a0453b0a0d701141b5dfa286cdc2e2fa150c4c0ef89de0a5d0a6)
* Contract address `0xfef2A2cc4E40594F7BcAb6fB03C22186B959e7ff` [Rinkeby explorer](https://rinkeby.etherscan.io/address/0xfef2a2cc4e40594f7bcab6fb03c22186b959e7ff)
* ABI
```
[
	{
		"constant": false,
		"inputs": [
			{
				"name": "_add",
				"type": "address"
			}
		],
		"name": "setPermission",
		"outputs": [
			{
				"name": "_status",
				"type": "bool"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "_add",
				"type": "address"
			}
		],
		"name": "getPermissionStatus",
		"outputs": [
			{
				"name": "_status",
				"type": "bool"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]
```
