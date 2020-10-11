<?php

// console.log-like functionality
//
// To see the output, run:
// `tail -f tmp/console.txt`
function console(...$data)
{
    // Make sure tmp is writeable
    $file = realpath(__DIR__ . '/tmp') . '/console.txt';
    foreach ($data as $datum) {
        $result = print_r($datum, true);
        file_put_contents($file, $result.PHP_EOL , FILE_APPEND | LOCK_EX);
    }
}

