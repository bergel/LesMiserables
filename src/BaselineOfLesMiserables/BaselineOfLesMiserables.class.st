Class {
	#name : #BaselineOfLesMiserables,
	#superclass : #BaselineOf,
	#category : #BaselineOfLesMiserables
}

{ #category : #baselines }
BaselineOfLesMiserables >> baseline: spec [
	<baseline>
	
	spec
		for: #common
		do: [
			spec baseline: 'NeoCSV' with: [ spec repository: 'github://svenvc/NeoCSV/repository' ].
			spec
				package: 'LesMiserables'.
			spec group: 'Core' with: #('NeoCSV' 'LesMiserables').
		].
	
]
