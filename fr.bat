if exist PatchLibAgent.jar (
	..\jre\bin\java.exe -javaagent:PatchLibAgent.jar @fr.vmparams
) else (
	..\jre\bin\java.exe @fr.vmparams
)
