# itamae_serverspec_training

## vagrant init
vagrant init learningchef/centos65

## tree
```
./
├── README.md
├── Rakefile
├── Vagrantfile
├── itamae
│   └── cookbooks
│       ├── command_recipe.rb
│       ├── package_recipe.rb
│       ├── service_recipe.rb
│       ├── templates
│       └── test_recipe.rb
└── spec
    ├── itamae-web
    │   ├── sample_spec.rb
    │   └── test_spec.rb
    └── spec_helper.rb
```

## dry-run for itamae
itamae ssh --vagrant -h itamae-web test_recipe.rb -n

## run for itamae
itamae ssh --vagrant -h itamae-web test_recipe.rb

## dry-run for serverspec
itamae ssh --vagrant -h itamae-web test_recipe.rb -n

## run for serverspec
itamae ssh --vagrant -h itamae-web test_recipe.rb
