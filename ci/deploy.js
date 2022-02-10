const baseDomains = {
  prod: ['asset.fireworktv.com'],
  staging: ['asset-staging.fireworktv.com'],
};

(async () => {
  await console.log('in async');
  console.log(baseDomains['foo'][0]);
})();
