const baseDomains = {
  prod: ['asset.fireworktv.com'],
  staging: ['asset-staging.fireworktv.com'],
};
async function fail() {
  try {
    throw new Error('intentional failure');
  } catch (e) {
    return e;
  }
}

(async () => {
  try {
    await fail();
    // console.log(baseDomains['foo'][0]);
  } catch (e) {
    console.log(e);
    process.exit(1);
  }
})();
