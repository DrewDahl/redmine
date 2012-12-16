class InsertOpenIdProviders < ActiveRecord::Migration
  def self.up
    OpenIdProvider.reset_column_information
    google = OpenIdProvider.new(:name => 'Google', :url => 'https://www.google.com/accounts/o8/id')
    google.save

    yahoo = OpenIdProvider.new(:name => 'Yahoo', :url => 'http://me.yahoo.com/')
    yahoo.save

    aol = OpenIdProvider.new(:name => 'AOL', :url => 'http://openid.aol.com/{username}')
    aol.save

    myopenid = OpenIdProvider.new(:name => 'MyOpenID', :url => 'http://{username}.myopenid.com/')
    myopenid.save

    livejournal = OpenIdProvider.new(:name => 'LiveJournal', :url => 'http://{username}.livejournal.com/')
    livejournal.save

    wordpress = OpenIdProvider.new(:name => 'Wordpress', :url => 'http://{username}.wordpress.com/')
    wordpress.save

    blogger = OpenIdProvider.new(:name => 'Blogger', :url => 'http://{username}.blogspot.com/')
    blogger.save

    verisign = OpenIdProvider.new(:name => 'Verisign', :url => 'http://{username}.pip.verisignlabs.com/')
    verisign.save

    claimid = OpenIdProvider.new(:name => 'ClaimID', :url => 'http://claimid.com/{username}')
    claimid.save

    clickpass = OpenIdProvider.new(:name => 'ClickPass', :url => 'http://clickpass.com/public/{username}')
    clickpass.save

    googleprofile = OpenIdProvider.new(:name => 'Google Profile', :url => 'http://www.google.com/profiles/{username}')
    googleprofile.save
  end

  def self.down
    OpenIdProvider.destroy_all 
  end
end
