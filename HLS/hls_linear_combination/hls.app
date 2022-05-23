<project xmlns="com.autoesl.autopilot.project" name="hls_linear_combination" top="hls_linear_combination">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="2" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../la" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../hls_linear_combinations_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="hls_linear_combination/hls_linear_combination.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls_linear_combination/hls_linear_combination.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="base" status="inactive"/>
        <solution name="good" status="active"/>
        <solution name="solution1" status="inactive"/>
    </solutions>
</project>

