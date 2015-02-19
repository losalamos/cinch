#------------------------------------------------------------------------------#
# Configuration file for userguide.
#------------------------------------------------------------------------------#

opts = {

    #--------------------------------------------------------------------------#
    # Document
    #
    # The ngc document service supports multiple document targets
    # from within the distributed documentation tree, potentially within
    # a single file.  This option specifies which document should be used
    # to produce the output target of this configuration file.
    #--------------------------------------------------------------------------#

    'document' : 'User Guide',

    #--------------------------------------------------------------------------#
    # Chapters Prepend List
    #
    # This options allows you to specify an order for the first N chapters
    # of the document, potentially leaving the overall ordering arbitrary.
    #--------------------------------------------------------------------------#

#    'chapters-prepend' : [
#    'Introduction'
#    ],

    #--------------------------------------------------------------------------#
    # Chapters List
    #
    # This option allows you to specify an order for some or all of the
    # chapters in the the document.
    #--------------------------------------------------------------------------#

    'chapters' : [
    'Overview',
	 'Installation',
	 'Structure',
    'CLI',
    'Interface'
    ],

    #--------------------------------------------------------------------------#
    # Chapters Append List
    #
    # This options allows you to specify an order for the last N chapters
    # of the document, potentially leaving the overall ordering arbitrary.
    #--------------------------------------------------------------------------#

#    'chapters-append' : [
#    'Conclusion'
#    ]
}