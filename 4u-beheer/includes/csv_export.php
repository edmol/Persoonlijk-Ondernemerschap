<?php

/**
 * Facilitates downloading CSV data from the specified MySQL database table.
 * Use the Import feature of your spreadsheet to open the generated .CSV file.
 * Usage: csv_export.php?tb=table_name
 * Bug: if generating .XLS instead of .CSV, may not work as anticipated with BLOB fields
 * Excel cannot directly open .XLS exports if a field length exceeds 255 characters.
 */

ob_start('ob_gzhandler');

error_reporting(E_ALL);

$tb = array_key_exists('tb', @$_REQUEST) ? trim(stripslashes(strip_tags(@$_REQUEST['tb']))) : '';

if($tb == ''){

	die('<p>Please specify a table name when calling this page: '.basename($_SERVER['PHP_SELF']).'?tb=table_name</p></body></html>');

}

require_once('./output/inc/dbconn.php');

$header = '';

$data   = '';

/**
 * In order to apply data filters, consider making 
 * copies of this script for use with specific tables
 * and configuring $where and $order below.
 */

// $where = 'WHERE hidden <> "1"';
// $order = 'ORDER BY snum, pnum';
// $export = @mysql_query("SELECT * FROM $tb $where $order");

// Fetch all records in default order

$export = @mysql_query("SELECT * FROM $tb") or die(mysql_error());

$column_count = @mysql_num_fields($export) or die(mysql_error());

// Create the first row of exported data (header / column names)

for($i = 0; $i < $column_count; $i++){

	$header .= @mysql_field_name($export, $i)."\t";

}

/**
 * Optionally format the appearance of column names, for display 
 * purposes if data is not going to be imported into another database.
 */

// $header = str_replace('_', ' ', $header);

// $header = ucfirst(strtolower($header));

while($row = @mysql_fetch_row($export)) {

    $line = '';

    foreach($row as $value) {                                            

        if((!isset($value)) || ($value == '') || ($value == 'NULL')){

            $value = "\t";

        }else{

            $value = str_replace('"', '""', $value);

				$value = '"'.$value.'"'. "\t";

        }

        $line .= str_replace("\r\n", "", $value);

    }

    $data .= trim($line)."\n";

}

if($data == ''){

    $data = "\n(0) Records Found!\n";                        

}

$suffix = '_'.date('Y-m-d').'_'.date('H:i:s');

// ToDo: resolve problems with exporting BLOB fields directly into "Content-type: application/vnd.ms-excel"

// @header("Content-type: application/vnd.ms-excel");

@header("Content-type: application/octet-stream");

@header("Content-Disposition: attachment; filename=$tb$suffix.csv");

@header("Pragma: no-cache");

@header("Expires: 0");

print "$header\n$data";

@mysql_free_result($export);

@mysql_close();

exit;

?>

