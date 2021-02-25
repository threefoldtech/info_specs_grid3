module tfgrid

// commands which are execute by our digital twin and it serves as proxy to the TFGrid DB
// we do this because we don't have client for parity

struct TFGrid {
mut:
	// gives us connection to our personal twin, which we need as proxy to the TFGrid DB for the write actions
	explorer Explorer
}

// inits grid obj with connection to your own digital twin
// will use personal twin as well as explorer to get info
pub fn tfgrid_new() ?TFGrid {
	mut explorer := explorer_new() ?
	mut grid := TFGrid{
		explorer: explorer
	}
	return grid
}

// GET TO THE OBJECTS OF THE GRID DB (get only for now)

pub fn (mut grid TFGrid) entity_list() ?[]TFGridEntity {
	return grid.explorer.entity_list()
}

pub fn (mut grid TFGrid) entity_get_by_id(entity_id string) ?TFGridEntity {
	return grid.explorer.entity_by_id(entity_id)
}

pub fn (mut grid TFGrid) twin_list() ?[]TFGridTwin {
	return grid.explorer.twin_list()
}

pub fn (mut grid TFGrid) twin_get_by_id(twin_id string) ?TFGridTwin {
	return grid.explorer.twin_by_id(twin_id)
}

pub fn (mut grid TFGrid) nodes_list() ?[]TFGridNode {
	return grid.explorer.nodes_list()
}

pub fn (mut grid TFGrid) nodes_get_by_id(node_id string) ?TFGridNode {
	return grid.explorer.node_by_id(node_id)
}

pub fn (mut grid TFGrid) farms_list() ?[]TFGridFarmer {
	return grid.explorer.farms_list()
}

pub fn (mut grid TFGrid) farm_get_by_id(farm_id string) ?TFGridFarmer {
	return grid.explorer.farm_by_id(farm_id)
}

// TODO: arguments to be added
pub fn (mut grid TFGrid) node_register() TFGridNode {
	// use personal digital twin as proxy
	return TFGridNode{}
}

// what did we forget
