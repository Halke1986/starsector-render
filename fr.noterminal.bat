if exist PatchLibAgent.jar (
	..\jre\bin\javaw.exe -javaagent:PatchLibAgent.jar @fr.vmparams
) else (
	..\jre\bin\javaw.exe @fr.vmparams
)
