private
writeBody: aStringOrCollectionOrBlock
	self omitIfCanonical: [super writeBody: aStringOrCollectionOrBlock]