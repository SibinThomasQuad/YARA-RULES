rule TextExample
{
    strings:
        $text_string = "if ($size >= 1073741824) {$size = round($size/1073741824*100)/100"
        $text_string_2 = "$ret = mkdir($t.DIRECTORY_SEPARATOR.$o); fs_copy_dir($d.DIRECTORY_SEPARATOR.$o,$t.DIRECTORY_SEPARATOR.$o"

    condition:
       $text_string or $text_string_2
}
