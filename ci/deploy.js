const baseDomains = {
  prod: ['asset.fireworktv.com'],
  staging: ['asset-staging.fireworktv.com'],
};

(async () => {
  console.log(baseDomains['foo'][0]);
})();
