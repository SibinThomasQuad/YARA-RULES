rule TextExample
{
    strings:
        $text_string = "if ($size >= 1073741824) {$size = round($size/1073741824*100)/100"
        $text_string_2 = "$ret = mkdir($t.DIRECTORY_SEPARATOR.$o); fs_copy_dir($d.DIRECTORY_SEPARATOR.$o,$t.DIRECTORY_SEPARATOR.$o"
        $text3 = "HAI IM VIVEK"
        $hex = "For more information please contact us (https://filerun.com)"
        $hex2 = { 43 43 43 81 43 43 43 ff 43 43 43 ff 43 43 43 ff 43 43 }
        $hex4 = { db 8e 57 3c ad db ed 46 d5 d3 ba 7d ae ff 78 e8 21 67 56 da 92 62 95 f3 02 9c c1 13 }  /*Tracking hexa code*/

    condition:
       $text_string or $text_string_2 or $text3 or $hex or $hex2 or $hex4
}
