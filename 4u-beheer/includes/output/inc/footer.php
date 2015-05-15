
				<!-- phpMyEdit form ends above -->

				<!-- Terminate the container table cell opened in header.php -->

			</td>

		</tr>

		<tr>

			<td>

				<!-- Icon Legend -->

				<table border="0" cellpadding="3" cellspacing="0">

					<tr>

						<td width="16"><img class="pme-navigation-0" src="images/pme-view.png" height="15" width="16" border="0" alt="View" title="View" /></td><td width="5">=</td><td>View&nbsp;&nbsp;&nbsp;</td>

						<td width="16"><img class="pme-navigation-0" src="images/pme-change.png" height="15" width="16" border="0" alt="Change" title="Change" /></td><td width="5">=</td><td>Change&nbsp;&nbsp;&nbsp;</td>

						<td width="16"><img class="pme-navigation-0" src="images/pme-copy.png" height="15" width="16" border="0" alt="coPy" title="coPy" /></td><td width="5">=</td><td>coPy&nbsp;&nbsp;&nbsp;</td>

						<td width="16"><img class="pme-navigation-0" src="images/pme-delete.png" height="15" width="16" border="0" alt="Delete" title="Delete" /></td><td width="5">=</td><td>Delete</td>

					</tr>

				</table>

			</td>

		</tr>

		<!-- Optional row below container cell -->

		<!-- <tr><td class="pme-message">YourTextHere</td></tr> -->

</table>


<?php 

// Output the stylesheet selector if a cookie is found.

if(isset($_COOKIE['style'])){ 

?>

	<br>

	<table border="1" cellpadding="0" cellspacing="1" style="border-collapse:separate;color:#000000;background-color:#ffff00" width="640">

		<tr><td align="center" colspan="6" style="padding:3px;font-family:verdana,helvetica,arial,sans-serif;font-size:x-small"><strong>Cookie Based Stylesheet Selector</strong></td></tr>

		<tr align="center">

			<?php

			$stylesheets = array('generic.css', 'generic.small.css', 'generic.minimal.css', 'blue.php', 'blue2.php', 'monospace.css');

			foreach($stylesheets as $k => $v){

				echo $_COOKIE['style'] == $k 
					? "\n".'<td style="padding:3px;color:#000000;background-color:#ccffcc;font-family:verdana,helvetica,arial,sans-serif;font-size:x-small">'.$v.'</td>' 
						: "\n".'<td style="padding:3px;font-family:verdana,helvetica,arial,sans-serif;font-size:x-small"><a style="font-size:x-small" href="'.basename($_SERVER['PHP_SELF']).'?css='.$k.'">'.$v.'</a></td>';
			}


			?>

		</tr>

		<tr><td colspan="6" style="padding:10px;font-family:verdana,helvetica,arial,sans-serif;font-size:x-small">
				There are nearly 70 styles available in phpMyEdit-based forms. Six different stylesheets are provided with the purchase of the Multi Form Generator. The two blue stylesheets are PHP scripts capable of evaluating the current page mode before outputting the stylesheet. Multi Form Generator adds an extra style that is used to right-justify numeric columns. Line-height is set to 140% in the body tag of each stylesheet.
		</td></tr>

		<tr><td align="center" colspan="6" style="padding:10px;font-family:verdana,helvetica,arial,sans-serif;font-size:x-small">
				More <a title="Examples" href="index.php">Examples</a>
		</td></tr>

	</table>


<?php

}

// require_once('./inc/useragent.php'); 

@mysql_close();

?>

</body>

</html>
