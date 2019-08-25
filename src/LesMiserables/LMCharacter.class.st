Class {
	#name : #LMCharacter,
	#superclass : #Object,
	#instVars : [
		'name',
		'coappearances'
	],
	#category : #LesMiserables
}

{ #category : #adding }
LMCharacter >> addCoapperance: co [
	coappearances add: co
]

{ #category : #'as yet unclassified' }
LMCharacter >> characters [
	^ (coappearances flatCollect: [ :co | Array with: co character1 with: co character2 ]) 			removeDuplicates;
				copyWithout: self
]

{ #category : #initialization }
LMCharacter >> initialize [
	super initialize.
	coappearances := OrderedCollection new.
]

{ #category : #accessing }
LMCharacter >> name [
	^ name
]

{ #category : #accessing }
LMCharacter >> name: anObject [
	name := anObject
]

{ #category : #'as yet unclassified' }
LMCharacter >> numberOfCoappearances [
	^ coappearances size
]

{ #category : #printing }
LMCharacter >> printOn: str [
	str nextPut: $<.
	name ifNotNil: [ str nextPutAll: name ].
	str nextPut: $>.
]
