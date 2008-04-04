package MT::Plugin::MTSuperBasicTemplateSets;

use strict;
use base qw( MT::Plugin );
our $VERSION = '0.2'; 
my $plugin = MT::Plugin::MTSuperBasicTemplateSets->new({
   id          => 'MTSuperBasicTemplateSest',
   key         => 'super-basic-template-sets',
   name        => 'Super Basic Template Sets',
   description => "Super Basic Template Sets for learning Movable Type.",
   version     => $VERSION,
   author_name => "Beau Smith",
   author_link => "http://www.beausmith.com",
   plugin_link => "http://plugins.movabletype.org",
});
MT->add_plugin($plugin);

sub init_registry {
    my $plugin = shift;
    $plugin->registry({
        callbacks => {
            'blog_template_set_change' => \&on_template_set_change,
        },
        template_sets => {
            basic1 => {
                label => "SuperBasic - w/o Comments",
                base_path => 'templates/basic1',
                order => 600,
                templates => {
                    index => {
                        'index' => {
                            label => 'Index',
                            outfile => 'index.html',
                            rebuild_me => '1',
                        },
                        'archives' => {
                            label => 'Archives',
                            outfile => 'archives.html',
                            rebuild_me => '1',
                        },
                        'styles' => {
                            label => 'Styles',
                            outfile => 'styles.css',
                            rebuild_me => '1',
                        },
                    },
                    archive => {
                        'monthly_entry_listing' => {
                            label => 'Monthly Archive',
                            mappings => {
                                monthly => {
                                    archive_type => 'Monthly',
                                },
                            },
                        },
                        'category_entry_listing' => {
                            label => 'Category Archive',
                            mappings => {
                                category => {
                                    archive_type => 'Category',
                                },
                            },
                        },
                    },
                    individual => {
                        'entry' => {
                            label => 'Entry',
                            mappings => {
                                entry_archive => {
                                    archive_type => 'Individual',
                                },
                            },
                        },
                        'page' => {
                            label => 'Page',
                            mappings => {
                                page_archive => {
                                    archive_type => 'Page',
                                },
                            },
                        },
                    },
                    module => {
                        'header' => {
                            label => 'Header',
                        },
                        'footer' => {
                            label => 'Footer',
                        },
                        'sidebar' => {
                            label => 'Sidebar',
                        },
                    },
                },
            },
        },
    });
}

1;