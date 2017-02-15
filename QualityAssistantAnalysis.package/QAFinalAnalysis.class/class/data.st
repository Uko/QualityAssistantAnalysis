accessing
data

	^ data ifNil: [ data := STON fromStream: (FileSystem workingDirectory / 'events.ston') readStream ]