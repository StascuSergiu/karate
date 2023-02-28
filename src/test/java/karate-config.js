function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);


  var config = {
      env: env,
      myVarName: 'Sergiu Stascu',
      baseURL: 'https://reqres.in/api'
    }

  if (env == 'dev') {
    config.baseURL = 'https://reqres.in/api/dev'
  } else if (env == 'e2e') {
    config.baseURL = 'https://reqres.in/api/e2e'
  }
  return config;
}