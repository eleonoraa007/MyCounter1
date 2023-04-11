Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounterDencrement [

| c |
c := Counter startingAt: 5.
c decrement ; decrement.
self assert: c count equals: 3
]

{ #category : #tests }
CounterTest >> testCounterIncrement [

| c |
c := Counter startingAt: 5.
c increment ; increment.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [ 

	| c |
	c:= Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterStartingAt5 [ 

	| c |
	c:= Counter startingAt: 5.
	self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testDencrement [

| c |
c := Counter new.
c count: 2.
c decrement ; decrement.
self assert: c count equals: 0
]

{ #category : #tests }
CounterTest >> testIncrement [

| c |
c := Counter new.
c count: 2.
c increment ; increment.
self assert: c count equals: 4
]
