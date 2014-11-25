yourfile = '/tdr/somelocation/we're/writing/these/to.xml' 
File.open(yourfile, 'w') { |file|
   file.write(a.datastreams["RECORD-XML"].content)
}
a.datastreams['RECORD-XML'].delete
ds_opts = {:dsid => 'RECORD-XML', :label => 'RECORD-XML',:controlGroup => 'E',:dsLocation => 'http://bucket01.lib.tufts.edu/somelocation/we're/writing/these/to.xml}
ds = a.create_datastream(ActiveFedora::Datastream,'RECORD-XML',ds_opts)
a.add_datastream ds
a.displays = ['dl','elections'] # needed to pass validation
a.save!