baselines
baseline1051: spec
  <version: '1.0.5.1-baseline'>
  spec
    for: #'common'
    do: [ 
      spec
        blessing: #'baseline';
        repository: 'http://www.squeaksource.com/XMLWriter'.
      spec
        package: 'Collections-OrderPreservingDictionary'
          with: [ spec repository: 'http://www.squeaksource.com/OrderPreservingDict' ];
        package: 'Collections-Support';
        package: 'XML-Writer'
          with: [ spec requires: #('Collections-Support' 'Collections-OrderPreservingDictionary') ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('XML-Writer');
        group: 'Tests' with: #() ].
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        package: 'Collections-Support'
        with: [ spec repository: 'http://www.squeaksource.com/Pharo' ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Collections-OrderPreservingDictionary'
          with: [ 
              spec
                file: 'Collections-OrderPreservingDictionary.g';
                repository: 'http://seaside.gemtalksystems.com/ss/PharoCompat' ];
        package: 'Collections-Support'
          with: [ 
              spec
                file: 'Collections-Support.g';
                repository: 'http://seaside.gemtalksystems.com/ss/XMLSupport' ];
        package: 'Collections-Tests-Support'
          with: [ 
              spec
                file: 'Collections-Tests-Support.g';
                requires: 'Collections-Support';
                repository: 'http://seaside.gemtalksystems.com/ss/XMLSupport' ].
      spec group: 'Tests' with: #('Collections-Tests-Support') ]
