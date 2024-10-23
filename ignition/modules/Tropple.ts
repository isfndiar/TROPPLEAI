// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const TroppleModule = buildModule("LockModule", (m) => {
  const tropple = m.contract("Tropple", [
    "0xd0AADA0499a804c9F26f1e67742aDf50611CA7A7",
  ]);

  return { tropple };
});

export default TroppleModule;
