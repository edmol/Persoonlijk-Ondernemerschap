<?php

/**
 * Optionally included after each phpMyEdit field array has been assembled and buffered.
 * Offers a convenient way of post-initializing field name specific options, or
 * column type specific options, without having to make changes in generator.inc.php.
 * 
 * Author's tweaks are based on the field name ($fd) or field type ($fd_type).
 * If 'url', 'http', or 'email' are found in the field name, make them clickable.
 * If the field name is `deleted` then propose some options.
 * 
 * Below, you must use the echo_buffer("") function, for example:
 *
 *    $fd == 'a_column_name' ? echo_buffer("// Have a nice day!") : '' ;
 * 
 *    echo_buffer("// Have a nice day!");
 * 
 *    echo_buffer($lf."// Have a nice day!");
 * 
 *    echo_buffer("// tweak.php");
 * 
 * $fd_type possibilities include int, real, string, blob, date, time, year, etc.
 * $row[0] = field name ($fd)
 * $row[1] = details of the $fd_type, e.g. smallint()
 * $row[2] = YES if ISNULL
 * $row[3] = PRI if primary key
 * $row[4] = default values
 */

// Tweaks based on field names

switch($fd){

	Case 'user_pass':

		echo_buffer("\$opts['fdd']['".$fd."']['input'] = 'R';");

		break;

	Case 'passwrd':

		echo_buffer("\$opts['fdd']['".$fd."']['input'] = 'R';");

		break;

	Case 'deleted':

		if($fd_type == 'string' && $row[1] == "enum('0','1')"){

			echo_buffer("if(\$operation == 'Add'){ \$opts['cgi']['overwrite']['deleted'] = '0'; }");

			echo_buffer("\$opts['triggers']['delete']['before'] = './triggers/mark_as_deleted.TDB.inc';");

		}elseif($fd_type == 'string' && $row[1] == "enum('N','Y')"){

			echo_buffer("if(\$operation == 'Add'){ \$opts['cgi']['overwrite']['deleted'] = 'N'; }");

			echo_buffer("\$opts['triggers']['delete']['before'] = './triggers/mark_as_deleted_y.TDB.inc';");

		}elseif($fd_type == 'int' && $row[4] == '0'){

			echo_buffer("// Set 'select' => 'D' above to create drop-down selector");

			echo_buffer("if(\$operation == 'Add'){ \$opts['cgi']['overwrite']['deleted'] = '0'; }");

			echo_buffer("\$opts['triggers']['delete']['before'] = './triggers/mark_as_deleted.TDB.inc';");

		}

		break;

	default:

		break;

};


// Tweaks based on field type:

switch($fd_type)
{
	Case 'string':

		// If column name includes 'http' or 'url' make the field clickable.

		if(stristr($fd, 'http') || stristr($fd, 'url')){

			echo_buffer("\$opts['fdd']['".$fd."']['URL']       = 'http://\$value';");

			echo_buffer("\$opts['fdd']['".$fd."']['URLtarget'] = '_blank';");

			// echo_buffer("\$opts['fdd']['".$fd."']['URLdisp']   = 'Launch';");

		}

		// If column name includes 'email' make the field clickable.

		(stristr($fd, 'email')) ? echo_buffer("\$opts['fdd']['".$fd."']['URL'] = 'mailto:\$value';") : '' ;

		if($fd == 'country' || $fd == 'Country'){

			echo_buffer("// Set 'select' => 'D' above to create drop-down selector");

			echo_buffer("// \$opts['fdd']['country']['values'] = array('', 'United States of America', 'Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Antarctica', 'Antigua & Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia', 'Bosnia & Herzegovina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Antarctica Territory', 'British Indian Ocean Territory', 'British West Indies', 'Brunei', 'Bulgaria', 'Burundi', 'Caledonia', 'Cambodia', 'Cameroon', 'Canada', 'Canary Islands', 'Canton And Enderbury Islands', 'Cape Verdi Islands', 'Cayman Islands', 'Central African Republic', 'Chad', 'Channel Islands UK', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo - Republic of', 'Cook Islands', 'Costa Rica', 'Croatia', 'Cuba', 'Curacao', 'Cyprus', 'Czech Republic', 'Dahomey', 'Dem. People\'s Republic of Korea', 'Dem. Republic of Vietnam', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'Dronning Muad Land - Antarctica', 'Ecuador', 'Egypt', 'El Salvador', 'England,UK', 'Equatorial Guinea', 'Estonia', 'Ethiopia', 'Faeroe Islands', 'Falkland Islands', 'Fiji', 'Finland', 'France', 'French Guiana', 'French Polynesia', 'French Southern & Antarctica', 'French Territory of Afars & Issas', 'French West Indies', 'Gabon', 'Gambia', 'Gaza', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Guadeloupe', 'Guam', 'Guatemala', 'Guinea', 'Guinea Bissau', 'Guyana', 'Haiti', 'Heard & McDonald Islands', 'Holland', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'Ifni', 'India', 'Indonesia', 'Iran', 'Iraq', 'Iraq-Saudi Arabia Neutral Zone', 'Ireland', 'Israel', 'Italy', 'Ivory Coast', 'Jamaica', 'Japan', 'Johnston Atoll', 'Jordan', 'Kazakhstan', 'Kenya', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Leeward Islands', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macau', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Mariana Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Melanesia', 'Mexico', 'Micronesia', 'Midway Islands', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Navassa Island', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'Neutral Zone', 'New Hebrides', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'North Korea', 'Northern Ireland,UK', 'Norway', 'Oman', 'Pacific Island', 'Pakistan', 'Panama', 'Papua New Guinea', 'Paracel Islands', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Polynesia', 'Portugal', 'Portuguese Guinea', 'Portuguese Timor', 'Principe & Sao Tome', 'Puerto Rico', 'Qatar', 'Republic of Congo', 'Republic of Korea', 'Reunion', 'Romania', 'Russia', 'Rwanda', 'Ryukyu Islands', 'Sabah', 'San Marino', 'Sao Tome & Principe', 'Saudi Arabia', 'Scotland,UK', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Sikkim', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'Somaliliand', 'South Africa', 'South Korea', 'Spain', 'Spanish Sahara', 'Spartly Islands', 'Sri Lanka', 'St. Christopher-Nevis-Anguilla', 'St. Helena', 'St. Kitts', 'St. Lucia', 'St. Pierre & Miquelon', 'St. Vincent', 'Sudan', 'Surinam', 'Svalbard & Jan Mayen Islands', 'Swaziland', 'Sweden', 'Switzerland', 'Syrian Arab Republic', 'Taiwan', 'Tanzania', 'Thailand', 'Togo', 'Tonga', 'Transkei', 'Trinidad/Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks & Caicos Islands', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States of America', 'Uruguay', 'US Pacific Island', 'US Virgin Islands', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Virgin Islands (British)', 'Virgin Islands (US)', 'Wake Island', 'Wales,UK', 'West Indies', 'Western Samoa', 'Windward Islands', 'Yemen', 'Zambia', 'Zimbabwe');");

		}elseif($fd == 'state' || $fd == 'State'){

			echo_buffer("// Set 'select' => 'D' above to create drop-down selector");

			echo_buffer("// \$opts['fdd']['state']['values'] = array('', 'AK','AL','AR','AZ','CA','CO','CT','DC','DE','FL','GA','HI','IA','ID','IL','IN','KS','KY','LA','MA','MD','ME','MI','MN','MO','MS','MT','NC','ND','NE','NH','NJ','NM','NV','NY','OH','OK','OR','PA','RI','SC','SD','TN','TX','UT','VA','VT','WA','WI','WV','WY');");

		}

		switch($row[1]) // details of the $fd_type, e.g. enum('1','0')
		{
			Case "enum('1','0')":
				echo_buffer("// \$opts['fdd']['".$fd."']['values2'] = array('1' => 'Yes', '0' => 'No');");
				break;
			Case "enum('0','1')":
				echo_buffer("// \$opts['fdd']['".$fd."']['values2'] = array('0' => 'No', '1' => 'Yes');");
				break;
			Case "enum('Y','N')":
				echo_buffer("// \$opts['fdd']['".$fd."']['values2'] = array('Y' => 'Yes', 'N' => 'No');");
				break;
			Case "enum('N','Y')":
				echo_buffer("// \$opts['fdd']['".$fd."']['values2'] = array('N' => 'No', 'Y' => 'Yes');");
				break;
			default:
				break;
		};

		break;

	default:
		
		break;

};


?>
