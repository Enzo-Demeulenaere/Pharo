Class {
	#name : 'UIThemeTest',
	#superclass : 'TestCase',
	#category : 'Morphic-Tests-Widgets',
	#package : 'Morphic-Tests',
	#tag : 'Widgets'
}

{ #category : 'tests' }
UIThemeTest >> testCanUseFileInChooseForSaveFileReference [

    | fs file |
    fs := FileSystem memory.
    file := (fs root / 'a.image') ensureCreateFile.

    MorphicUIManager new
    chooseForSaveFileReference: 'save image as.?' extensions: #('image') path: file.
    
    self assert: (fs root / 'a.1.image') exists
]
