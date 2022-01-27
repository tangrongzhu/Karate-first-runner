function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    baseURL: 'https://reqres.in/api',
    apiKey: ''
  }
  // The value for configurations can be passed either from TestRunner or CommandLine.
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
    config.baseURL = 'https://reqres.in/api',
    config.apiKey = ''
  } else if (env == 'e2e') {
    // customize
    config.baseURL = 'https://reqres.in/api/e2e'
    config.apiKey = ''
  }

  karate.log('karate.env = ', karate.env);
  karate.log('config.baseURL = ', config.baseURL);
  karate.log('config.apiKey = ', config.apiKey);

  return config;
}