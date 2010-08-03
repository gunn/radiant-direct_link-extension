class DirectLinkExtension < Radiant::Extension
  version "0.1.1"
  description "Adds direct links to your pages from the tree view."
  url "http://gunn.co.nz/"
  
  def activate
    # this is how we do it in 0.8.x anyway:
    node = admin.page.index["node"]
    node[node.index("status_column")] = "admin/pages/status_column"
    
    main = admin.page.edit["main"]
    main[main.index("edit_header")] = "admin/pages/edit_header"
  end
  
end
