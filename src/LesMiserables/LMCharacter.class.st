Class {
	#name : #LMCharacter,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #LesMiserables
}

{ #category : #accessing }
LMCharacter >> name [
	^ name
]

{ #category : #accessing }
LMCharacter >> name: anObject [
	name := anObject
]

{ #category : #printing }
LMCharacter >> printOn: str [
	str nextPut: $<.
	name ifNotNil: [ str nextPutAll: name ].
	str nextPut: $>.
]
