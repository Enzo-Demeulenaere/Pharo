"
I reify the method where the link is installed.

Note: this is the original method, that is, the one that has this link *not* installed.
"
Class {
	#name : 'RFOriginalMethodReification',
	#superclass : 'RFReification',
	#category : 'Reflectivity-Reifications',
	#package : 'Reflectivity',
	#tag : 'Reifications'
}

{ #category : 'plugin interface' }
RFOriginalMethodReification class >> entities [
	^{OCProgramNode}
]

{ #category : 'plugin interface' }
RFOriginalMethodReification class >> key [
	^#originalmethod
]

{ #category : 'generate' }
RFOriginalMethodReification >> genForASTProgramNode [

	^ OCLiteralNode value: entity methodNode compiledMethod
]
