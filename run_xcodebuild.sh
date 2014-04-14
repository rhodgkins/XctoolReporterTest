 #!/bin/bash
 xcodebuild -project XctoolReporterTest.xcodeproj \
 			-scheme XctoolReporterTest \
			-sdk iphonesimulator \
			clean build > xcodebuild.log


oclint-xcodebuild
oclint-json-compilation-database -v oclint_args "-report-type html -o report.html -rc=LONG_LINE=120"
open compile_commands.json
open report.html
