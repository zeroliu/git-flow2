const baseDomains = {
  prod: ['asset.fireworktv.com'],
  staging: ['asset-staging.fireworktv.com'],
};

(async () => {
  try {
    await console.log('in async');
    console.log(baseDomains['foo'][0]);
  } catch (e) {
    console.log(e);
    process.exit(1);
  }
})();
