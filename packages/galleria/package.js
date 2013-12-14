Package.describe({
  summary: "Galleria.io galleries"
});

Package.on_use(function (api, where) {
  api.use('jquery');
  api.export('Galleria', ['client']);

  var path = Npm.require('path');
  var asset_path = path.join('galleria');
  var theme_path = path.join('galleria', 'themes', 'fullscreen');

  api.add_files(path.join(asset_path, 'galleria-1.3.3.js'), 'client');
  api.add_files(path.join(theme_path, 'galleria.fullscreen.css'), 'client');
  api.add_files(path.join(theme_path, 'galleria.fullscreen.min'), 'client');

  api.add_files(path.join(theme_path, 'b.png'), 'client');
  api.add_files(path.join(theme_path, 'down-neg.gif'), 'client');
  api.add_files(path.join(theme_path, 'down.gif'), 'client');
  api.add_files(path.join(theme_path, 'fix.gif'), 'client');
  api.add_files(path.join(theme_path, 'i.png'), 'client');
  api.add_files(path.join(theme_path, 'l-neg.png'), 'client');
  api.add_files(path.join(theme_path, 'l.gif'), 'client');
  api.add_files(path.join(theme_path, 'loader.gif'), 'client');
  api.add_files(path.join(theme_path, 'n-neg.png'), 'client');
  api.add_files(path.join(theme_path, 'n.gif'), 'client');
  api.add_files(path.join(theme_path, 'p-neg.png'), 'client');
  api.add_files(path.join(theme_path, 'p.gif'), 'client');
  api.add_files(path.join(theme_path, 'r-neg.png'), 'client');
  api.add_files(path.join(theme_path, 'r.gif'), 'client');
  api.add_files(path.join(theme_path, 'up-neg.gif'), 'client');
  api.add_files(path.join(theme_path, 'up.gif'), 'client');

  api.add_files(path.join('galleria.js'), 'client');
});


