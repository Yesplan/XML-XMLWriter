versions
version1051: spec
  <version: '1.0.5.1' imports: #('1.0.5.1-baseline')>
  spec
    for: #'common'
      do: [ 
          spec
            blessing: #'release';
            package: 'Collections-OrderPreservingDictionary'
              with: 'Collections-OrderPreservingDictionary-JAAyer.6';
            package: 'XML-Writer' with: 'XML-Writer-JAAyer.5' ];
    for: #'squeakCommon'
      do: [ 
          spec
            package: 'Collections-Support'
            with: 'Collections-Support-StephaneDucasse.35' ];
    for: #'gemstone'
      do: [ 
          spec
            package: 'Collections-OrderPreservingDictionary'
              with: 'Collections-OrderPreservingDictionary.g-dkh.11';
            package: 'Collections-Support' with: 'Collections-Support.g-dkh.46';
            package: 'Collections-Tests-Support'
              with: 'Collections-Tests-Support.g-OttoBehrens.3' ]
