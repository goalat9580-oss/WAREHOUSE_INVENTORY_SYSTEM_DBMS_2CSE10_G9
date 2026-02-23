<mxfile host="app.diagrams.net">
  <diagram name="Warehouse Inventory System">
    <mxGraphModel dx="1200" dy="800" grid="1" gridSize="10" guides="1" tooltips="1" connect="1">
      <root>
        <mxCell id="0"/>
        <mxCell id="1" parent="0"/>

        <!-- ENTITIES -->

        <mxCell id="warehouse" value="WAREHOUSE&#xa;W_ID (PK)&#xa;Name&#xa;Location&#xa;Capacity&#xa;Manag_Name"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="50" y="250" width="170" height="140" as="geometry"/>
        </mxCell>

        <mxCell id="inventory" value="INVENTORY&#xa;Inventory_ID (PK)&#xa;Rec_Level&#xa;Last_Updated"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="300" y="100" width="180" height="120" as="geometry"/>
        </mxCell>

        <mxCell id="product" value="PRODUCT&#xa;PR_ID (PK)&#xa;PR_Name&#xa;Description"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="350" y="300" width="180" height="120" as="geometry"/>
        </mxCell>

        <mxCell id="supplier" value="SUPPLIER&#xa;Supplier_ID (PK)&#xa;S_Name&#xa;Contact&#xa;Address"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="350" y="500" width="200" height="130" as="geometry"/>
        </mxCell>

        <mxCell id="customer" value="CUSTOMER&#xa;Customer_ID (PK)&#xa;C_Name&#xa;Contact&#xa;Address"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="650" y="100" width="200" height="130" as="geometry"/>
        </mxCell>

        <mxCell id="shipment" value="SHIPMENT&#xa;S_ID (PK)&#xa;S_Date&#xa;Tracking_No&#xa;Status"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="700" y="300" width="200" height="130" as="geometry"/>
        </mxCell>

        <mxCell id="purchase" value="PURCHASE_ORDER&#xa;PO_ID (PK)&#xa;Order_Date&#xa;Quantity&#xa;Total_Amount"
        style="shape=rectangle;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="700" y="500" width="220" height="140" as="geometry"/>
        </mxCell>

        <!-- RELATIONSHIPS -->

        <mxCell id="has" value="HAS (1:N)"
        style="shape=rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="200" y="200" width="100" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="stores" value="STORES (1:N)"
        style="shape=rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="250" y="320" width="100" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="provides" value="PROVIDES (1:N)"
        style="shape=rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="420" y="430" width="120" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="contains" value="CONTAINS (N:1)"
        style="shape=rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="580" y="320" width="120" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="receives" value="RECEIVES (1:N)"
        style="shape=rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="700" y="220" width="120" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="includes" value="INCLUDES (1:N)"
        style="shape=rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="550" y="500" width="120" height="60" as="geometry"/>
        </mxCell>

        <!-- CONNECTIONS -->

        <mxCell edge="1" parent="1" source="warehouse" target="has"/>
        <mxCell edge="1" parent="1" source="has" target="inventory"/>

        <mxCell edge="1" parent="1" source="warehouse" target="stores"/>
        <mxCell edge="1" parent="1" source="stores" target="product"/>

        <mxCell edge="1" parent="1" source="supplier" target="provides"/>
        <mxCell edge="1" parent="1" source="provides" target="product"/>

        <mxCell edge="1" parent="1" source="product" target="contains"/>
        <mxCell edge="1" parent="1" source="contains" target="shipment"/>

        <mxCell edge="1" parent="1" source="customer" target="receives"/>
        <mxCell edge="1" parent="1" source="receives" target="shipment"/>

        <mxCell edge="1" parent="1" source="product" target="includes"/>
        <mxCell edge="1" parent="1" source="includes" target="purchase"/>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
