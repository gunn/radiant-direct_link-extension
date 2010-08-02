class DirectLinkExtension < Radiant::Extension
  version "0.1"
  description "Adds direct links to your pages from the tree view."
  url "http://gunn.co.nz/"
  
  def activate
    # this is how we do it in 0.8.x anyway:
    node_region = admin.page.index["node"]
    node_region[node_region.index("status_column")] = "admin/pages/status_column"
  end
  
end
