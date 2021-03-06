# itamae_serverspec_training

## vagrant init
```
vagrant init learningchef/centos65
```

## modify Vagrantfile
```
config.vm.define "itamae-web" do |node|
  node.vm.box = "learningchef/centos65"
  node.vm.hostname = "itamae-web"
  node.vm.network :private_network, ip: "192.168.33.10"
end
```

## tree
```
./
├── README.md
├── Rakefile
├── Vagrantfile
├── recipes
│   ├── command_recipe.rb
│   ├── package_recipe.rb
│   ├── service_recipe.rb
│   ├── templates
│   └── test_recipe.rb
└── spec
    ├── itamae-web
    │   └── test_spec.rb
    └── spec_helper.rb
```

## dry-run for itamae
```
itamae ssh --vagrant -h itamae-web test_recipe.rb -n
```

## run for itamae
```
itamae ssh --vagrant -h itamae-web test_recipe.rb
```

## dry-run for serverspec
```
itamae ssh --vagrant -h itamae-web test_recipe.rb -n
```

## run for serverspec
```
itamae ssh --vagrant -h itamae-web test_recipe.rb
```
