<?php

/*
Clipped from a Forum posting:
uploaded an after trigger that jumps to view mode 
after add/change (discussed a couple time in the forums). 
several questions arise: - should it override 'apply' 
if hit (currently not) - should the recreate_* be executed 
in the core class regardless of what's hit (currently no)
(it would not have to be in the trigger)

looking at the source code, recreate_fdd() is not neccessary
in the trigger, but backward_compatibility() is, hmmm, things change...

another trigger would be with php emulation of js functions, 
but we would need an API to display users input back to him... 
(long and painfull story, connected to #241 and merging 
display_add_record() and display_change_field($row, $k); 
will open a feature request...)

 insert/update trigger that 
jumps to view mode of the record that was just added/changed
by michal, GPL
*/

$this->rec = $this->key;

$this->operation = $this->labels['View'];

$this->recreate_fdd();

$this->recreate_displayed();

?>
