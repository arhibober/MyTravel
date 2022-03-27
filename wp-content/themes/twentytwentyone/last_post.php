<?php
/**
/* Template Name: Первые символы последнего поста */

	get_header ();
	$args = array
		(
			"numberposts" => 1,
			"post_status" => "publish",
		);
	$last_posts = wp_get_recent_posts ($args);
	echo substr ($last_posts [0]["post_content"], 0, 100);
	get_footer ();