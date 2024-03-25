{
name: "GEO", 
index: "world", 
valid_begin: [0,0], 
valid_end: [0,0],
mother: "", 
type: "box",
size: [2000.0, 2000.0, 2000.0], 
material: "air",
invisible: 1, 
}

{
name: "GEO",           //The name indicates what kind of file this is meant to be. In this case a .geo file
index: "TPC",          //Index is the name of this particular piece of the geometry. 
valid_begin: [0,0],    //Truthfully, I'm still a bit confused as to what valid_begin and valid_end refer to
valid_end: [0,0],      //The documentation is unclear and I have yet to find a case where they are set to anything other than [0,0]
mother: "world",       //mother is the mother volume for this particular geometry (with "world" being the index of the mother volume in this case)
		       //If the geometry has no mother vokume, i.e. it's the world volume, then this is indicated with empty quotes ""
type: "tube"	       //type refers to the shape or kind of geometry. These incluedes basic shapes such as "box" or "tube", but also "pmtarray", "border" and other misc. items
r_max: 3000.0,	       //Most types of geometries have additional paremeters which have to be specified. For tube this includes the outer and inner radius and the side length
size_z: 1500.0,
material: "liquid_Xe", //The material (see material.ratdb for the list of pre-defined materials)
}

{
name: "GEO",
index: "pmts",
valid_begin: [0,0],
valid_end: [0,0],
mother: "TPC",
type: "pmtarray",
pmt_model: "r7081pe", 			//rat has several pre-defined pmts. More can be added in ratdb
pmt_detector_type: "idpmt", 
sensitive_detector: "/mydet/pmt/inner", //there are only two options for sensitive detector: inner and veto pmts.
efficiency_correction: 1.000, 
pos_table: "PMTINFO_inner",		//The location and orientation of the pmts are defined in the pos_table name .ratdb kept in the same folder as the .geo file
orientation: "manual",
light_cone: 0,
}
