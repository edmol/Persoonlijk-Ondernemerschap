Reading this entire document will answer most of your questions.

Installation of Multi Form Generator (MFG) is reasonably simple.

The provided phpMyEdit.class.php is required by the
generated forms, and is a slightly modified version
of the standard distribution version 5.7.1.

This application was written under PHP 4.4, and tested
OK on a Windows PC running PHP 5.3 in addition to various
cPanel web hosts.

Works with MySQL 3.23, 4.x, and/or 5.x.

The first column in each table is expected to be a unique
record identifier (preferably an autoincrement field).
If your Primary Key column is NOT column 0, see below.

Make sure that your FTP client does *NOT* force lower case
filenames upon uploading. If this happens, the language
files will appear to be missing, and the forms will be blank.

You will need to enable write permissions for the installation
directory on your web server. Typically CHMOD 777 or CHMOD 755.

Don't forget to apply some sort of password protection to
the upload directory.


----------------------------------------------------------
  Configuration:
----------------------------------------------------------

* Unzip the archive using the directory structure.

* Using phpMyAdmin, please install the schema from the online
  demo which is provided for MySQL 3.23, MySQL 4, and MySQL 5.
  Installation of the `change_log` schema is recommended
  even if you omit the other tables.

* Edit the database logon, email address, and other variables in
  ./output/inc/dbconn.php

* Edit the top of generator.php (see comments in that script).

* Usage of header2.php & footer2.php to surround your forms is advised.
  Edit the DOCTYPE and META tags in ./output/inc/header*.php.
  Select a stylesheet (generic2.css is configured / recommended).
  There are UTF-8 META tags in header2.php & footer2.php.

* Have a look at ./output/inc/footer2.php

* In ./output/index.php, $cfg_target_prefix is set to 'my_'.
  If this is not the filename prefix you prefer,
  change it to the setting you will be selecting
  when generating forms.

* Upload files to your server and point your web browser to index.php

----------------------------------------------------------

Basic setup is achieved in the above steps.

Consider the /output/ directory to be your working directory,
where you create and customize your forms. If forms are to be
made publicly available, then copy everything from the
/output/ directory to a public available directory (or copy only
the generated forms after changing the path to the include files).

MFG installation and customization services are available
at reasonable rates.

HTML documentation for phpMyEdit is included. Documentation
is also available in SGML and PDF formats from platon.sk.

Contact info:
Email: doug (AT) hockinson (DOT) com
Doug Hockinson - www.hockinson.com
VoiceMail / FaxMail (815) 301-5579

23 October 2011 - bugs have largely been corrected
in this distribution and you can probably ignore the
bug page at
http://www.php-form-generator.com/index.php?s=61


----------------------------------------------------------
  New in this version of MFG - October 2007
----------------------------------------------------------

Required fields are now post-initialized, for readability
and possible combined use with new Javascript Hint features.
See ./doc/html/configuration.javascript-validation.html

Several common form settings have been moved to the script
containing the database connection. If necessary, redefine
these elements (e.g. navigation) inside individual forms.

'goto' and 'goto_combo' buttons are disabled in phpMyEdit.class.php
in order to prevent users from suffering a performance hit
when tables contain thousands of records.

Updated phpMyEdit documentation, language files, and class file.

UTF-8: see META tags, database connection, and language files.

The 'escape' option should generally be omitted from field arrays.
Explicitly setting 'escape' to FALSE is not recommended.

See ./output/index.php which facilitates different methods
of displaying links to the generated forms, links to all files
./output/*.php, and/or displaying HTML code so you can create
your own custom menu more easily.


----------------------------------------------------------
  Please Note
----------------------------------------------------------

If your forms are publicly available, use META ROBOTS NOFOLLOW
tags in the HTML header in order to prevent search engine
robots from following links. If omitted, certain robots will
follow the column header links (sort records repeatedly) possibly
generating TENS OF THOUSANDS of unwanted hits on the same page.

Vary the name of your Primary Key columns. DO NOT NAME THEM 'id'
in every table or you may encounter difficulties with creating
lookups to other tables. Use only lower case letters and underscore
characters in the names of columns and tables to ensure portability
across different system configurations.

Make sure that your FTP client does *NOT* force lower case
filenames upon uploading. If this happens, the language
files will appear to be missing, and the forms will be blank.

----------------------------------------------------------
  tweak.php & post-initialized field options
----------------------------------------------------------

Create one of the following column definitions in your tables
using phpMyAdmin, and set an INDEX for it:

   `deleted` enum('0','1') NOT NULL default '0',
   `deleted` tinyint() NOT NULL default '0',
   `deleted` enum('N','Y') NOT NULL default 'N',

If the `deleted` column is found in your table, one of the following
filters will be automatically added to the generated script.

   $opts['filters'] = 'PMEtable0.deleted = "0"';
   -or-
   $opts['filters'] = 'PMEtable0.deleted = "N"';

Henceforth, instead of actually deleting the record from the table
records will be flagged as deleted ('Y' or '1') but not actually
deleted from the table. See ./output/triggers/

Test this functionality for each table by adding a "junk" record,
deleting it using the generated form, and checking the data table
using phpMyAdmin to ensure the appropriate result was achieved.


----------------------------------------------------------
  Additional Considerations
----------------------------------------------------------

Problems with the display of language file labels under the
UTF-8 character set definition can be overcome by opening the
language files and applying utf8_encode() to words such as
Página which contain non-English / accented characters.
http://platon.sk/forum/projects/viewtopic.php?p=3490#3490

Using the underscore character in a column named
'last_name' will produce a column title 'Last Name'.
Creating column names in lower case letters is recommended
to ensure portability across different system configurations.

The provided header/footer files used by the generated forms
may include cookie-setting code that can be removed if you
have no use for it.

Consider the /mfg571/ directory to be your working directory
or admin hub, and apply password protection.

To make your generated forms public, copy the contents
of /mfg571/output/ up, to the directory of your choice.
Disk space is cheap these days, and having a few extra
files a server is not worth the brain damage required
to change paths to a handful of include files and images.

As written, it is assumed the user is developing on a
local computer (PC), then uploading to a web server.
Review the first 20-25 lines in generator.php.

After experimenting with MFG output, edit the
HTML form in generator.menu.php and set your
preferred settings to SELECTED status.

Output is initially set to Display Only
to prevent accidental over-writes (see the HTML
SELECT box near the end of generator.menu.php).

A number of TXT files are included, many of which are not
"well groomed", but are snippets of code from related projects,
or from the forum postings at http://platon.sk

The use of language specs in the HTML HEAD section may conflict
with language label settings in phpMyEdit.class.php and
produce unexpected results, for example: BODY LANG="EN-US"
should be avoided in the HTML header,

When filtering records *and* doing lookups to another table
where *both* tables contain a column of the same name, you will
likely need to call your filter as:
   $opts['filters'] = 'PMEtable0.col_name = "N"';
and *not* simply:
   $opts['filters'] = 'col_name = "N"';


----------------------------------------------------------
  Primary Key
----------------------------------------------------------

If your Primary Key column is always column 0, stop reading.

Each MySQL table must contain a Primary Key column
or a column containing a unique identifier.

(1.) If your primary keys are different column numbers
in different tables a warning message will appear when
that form is loaded. You will then need to edit the
form, specify the primary key column name and column
type, and remove the embedded warning message.
Minimal effort is required to do this.

(2.) If the primary key in your tables is always the same
column number, but not MySQL column number 0, two items
in the main script will have to be changed.
  // Replace 0 with the correct column number.
  if($j == 0) $hack_key      = $fd;
  if($j == 0) $hack_key_type = @mysql_field_type($fds, $j);

(3.) If the primary key is a DIFFERENT COLUMN NUMBER IN MANY
TABLES, a switch() statement could be configured to work
around this problem.

----------------------------------------------------------
  Optional Help Table
----------------------------------------------------------

phpMyEdit-based forms can be enabled to provide a 3rd cell for
user Help. This is typically used only in Add, Change, coPy modes.

An option exists with Multi Form Generator to expand on this idea
and include a link to a Popup that queries a separate table that
contains Help Text that you create. For example, if this project
was used to create an extensive set of forms for another project
where users needed Help for all the fields, the link is built in.
All you need to do is populate the table containing the Help.

Data (Help text) could reside in the `mfg_help_data` table,
and be queried by the external popup script when the user
clicks on the Help link found in the 3rd table cell.

See /mfg571/inc/popup.php for sample configuration. See also
/mfg571/help_data.php.


----------------------------------------------------------
  Miscellaneous
----------------------------------------------------------

You may want to edit all the headers and provide a complete
URL to the stylesheets and Javascript (so that if you use
a copy of a given page as a template for a new page, the
links to stylesheets and Javascript won't break if the
new page is moved to a different directory).

A great debugging script for possible inclusion in your page
footer (when troubleshooting) can be found at
http://dbug.ospinto.com/

----------------------------------------------------------
  Stylesheets
----------------------------------------------------------

You may want to specify a complete URL for background images
used in the body tag of certain stylesheets.

----------------------------------------------------------
  Navigation notes
----------------------------------------------------------

Certain modes of operation are well defined.

$_REQUEST['PME_sys_operation'] => PME_op_Add
$_REQUEST['PME_sys_operation'] => PME_op_View
$_REQUEST['PME_sys_operation'] => PME_op_Copy
$_REQUEST['PME_sys_operation'] => PME_op_Change
$_REQUEST['PME_sys_operation'] => PME_op_Delete

Others are more subtle.

$_REQUEST['PME_sys_moreadd'] => More
$_REQUEST['PME_sys_morechange'] => Apply

Others are comparatively inconsequential.

$_REQUEST['PME_sys_canceladd'] => Cancel
$_REQUEST['PME_sys_cancelchange'] => Cancel
$_REQUEST['PME_sys_cancelcopy'] => Cancel
$_REQUEST['PME_sys_canceldelete'] => Cancel
$_REQUEST['PME_sys_cancelview'] => Cancel


$_REQUEST['PME_sys_savecopy'] => Copy
$_REQUEST['PME_sys_saveadd'] => Save
$_REQUEST['PME_sys_savechange'] => Save
$_REQUEST['PME_sys_savedelete'] => Delete

Knowing the current page mode before including the page header
is often useful for setting and displaying the $operation
to be echo'ed above the data.


----------------------------------------------------------
  Validation of user input
----------------------------------------------------------

An example of PHP validation for phpMyEdit forms is posted at
http://www.php-form-generator.com/index.php?s=59


----------------------------------------------------------
  phpMyEdit
----------------------------------------------------------

phpMyEdit program files and documentation are available from
http://platon.sk. The following assumes that you already have
a fundamental understanding of how phpMyEdit operates.

The official phpMyEdit homepage is:
http://platon.sk/projects/phpMyEdit/

The phpMyEdit project management page is:
http://platon.sk/projects/main_page.php?project_id=5

phpMyEdit is licensed under the GNU General Public License.

----------------------------------------------------------

Doug Hockinson has paid a Commercial License Fee to the
developers of phpMyEdit.

----------------------------------------------------------
