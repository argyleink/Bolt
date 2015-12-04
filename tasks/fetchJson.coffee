module.exports =
  contentful:
    options:
      method: 'GET',
      headers:
        'Accept':       'application/json'
        'Content-Type': 'application/json'
      parameters:
        access_token: 'GET_YOUR_OWN_FOO!THIS_IS_JUST_AN_EXAMPLE'
    files:
      'app/data/contentful.json': 'https://cdn.contentful.com/spaces/mfqhk2sj5vfi'