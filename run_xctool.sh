 #!/bin/bash
 xctool -project XctoolReporterTest.xcodeproj \
 		-scheme XctoolReporterTest \
		-sdk iphonesimulator \
		reporter json-compilation-database:compile_commands.json clean build


oclint-json-compilation-database -v oclint_args "-report-type html -o report.html -rc=LONG_LINE=120"
open compile_commands.json
open report.html
