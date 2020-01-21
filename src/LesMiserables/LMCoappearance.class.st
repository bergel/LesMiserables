Class {
	#name : #LMCoappearance,
	#superclass : #Object,
	#instVars : [
		'character1',
		'character2',
		'occurences'
	],
	#category : #LesMiserables
}

{ #category : #accessing }
LMCoappearance >> character1 [
	^ character1
]

{ #category : #accessing }
LMCoappearance >> character1: anObject [
	character1 := anObject
]

{ #category : #accessing }
LMCoappearance >> character2 [
	^ character2
]

{ #category : #accessing }
LMCoappearance >> character2: anObject [
	character2 := anObject
]

{ #category : #'as yet unclassified' }
LMCoappearance >> empty: ignore [
	"To make NeoCSV happy"
]

{ #category : #accessing }
LMCoappearance >> occurences [
	^ occurences
]

{ #category : #accessing }
LMCoappearance >> occurences: anObject [
	occurences := anObject
]
