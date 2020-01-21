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

{ #category : #'accessing - computed' }
LMCharacter >> characters [
	"Return the character for which I coappear with"
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

{ #category : #'accessing - computed' }
LMCharacter >> numberOfCoappearances [
	"Return the number of coappearances"
	^ coappearances size
]

{ #category : #printing }
LMCharacter >> printOn: str [
	str nextPut: $<.
	name ifNotNil: [ str nextPutAll: name ].
	str nextPut: $>.
]
