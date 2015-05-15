
							<!-- phpMyEdit form ends above -->

							<!-- Terminate the container table cell and div opened in header2.php -->

							<br>

						</div>

					</td>

					<td class="nopadding" background="images/page_edge_right.gif"><img src="images/spacer.gif" width="1" height="1" alt="" border="0" /></td>

				</tr>

				<tr>

					<td class="nopadding"><img src="images/page_corner_bl.gif" width="30" height="30" alt="" border="0" /></td>

					<td class="nopadding" background="images/page_edge_bottom.gif"><img src="images/page_edge_bottom.gif" width="1" height="1" alt="" border="0" /></td>

					<td class="nopadding"><img src="images/page_corner_br.gif" width="30" height="30" alt="" border="0" /></td>

				</tr>

			</table>

		</td>

	</tr>

</table>

<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// require_once('./inc/useragent.php'); 

if(isset($operation) && $operation == $opts['mfg']['oper_label']){

	if(isset($opts['navigation']) && stristr($opts['navigation'], 'G')){

		require_once($INC_DIR.'includes/output/inc/legend.php'); 

		// require_once($INC_DIR.'includes/output/inc/legend2.php'); 

	}

}

@mysql_close();

?>

</body>

</html>
