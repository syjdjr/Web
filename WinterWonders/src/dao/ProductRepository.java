package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product Tree1 = new Product("T1", "vintage gold mini tree", 36000);
		Tree1.setDescription("빈티지 골드 미니트리 ");
		Tree1.setCategory("Trees");
		Tree1.setUnitsInStock(1000);
		Tree1.setFilename("Tree1.jpeg");
		
		Product Tree2 = new Product("T2", "teddy bear basket tree", 35900);
		Tree2.setDescription("테디베어 바스켓 미니 트리 2 sizes ");
		Tree2.setCategory("Trees");
		Tree2.setUnitsInStock(1000);
		Tree2.setFilename("Tree2.jpeg");
		
		Product Tree3 = new Product("T3", "gold basket tree", 35900);
		Tree3.setDescription("골드 바스켓 트리 2 sizes");
		Tree3.setCategory("Trees");
		Tree3.setUnitsInStock(1000);
		Tree3.setFilename("Tree3.jpeg");
		
		Product Tree4 = new Product("T4", "gingerbread mini tree", 25000);
		Tree4.setDescription("진저브레드 미니트리");
		Tree4.setCategory("Trees");
		Tree4.setUnitsInStock(1000);
		Tree4.setFilename("Tree4.jpg");
		
		Product Tree5 = new Product("T5", "Merry signature premium tree", 179000);
		Tree5.setDescription("메리트리 크리스마스 트리");
		Tree5.setCategory("Trees");
		Tree5.setUnitsInStock(1000);
		Tree5.setFilename("Tree5.jpeg");
		
		Product Tree6 = new Product("T6", "Blooms fine premium tree", 36000);
		Tree6.setDescription("블룸스 트리 크리스마스 트리");
		Tree6.setCategory("Trees");
		Tree6.setUnitsInStock(1000);
		Tree6.setFilename("Tree6.jpeg");
		
		Product Wreath1 = new Product("W1", "premium Belle wreath", 49000);
		Wreath1.setDescription("프리미엄 크리스마스 벨 리스");
		Wreath1.setCategory("Wreath");
		Wreath1.setUnitsInStock(1000);
		Wreath1.setFilename("wreath1.jpeg");
		
		Product Wreath2 = new Product("W2", "christmas premium wreath", 49000);
		Wreath2.setDescription("프리미엄 크리스마스 리스 ");
		Wreath2.setCategory("Wreath");
		Wreath2.setUnitsInStock(1000);
		Wreath2.setFilename("wreath2.jpeg");
		
		Product Ornaments1 = new Product("ORN1" ,"teddy bear ornaments set", 19000);
		Ornaments1.setDescription("테디베어 오너먼트 세트 구성");
		Ornaments1.setCategory("Ornaments");
		Ornaments1.setUnitsInStock(1000);
		Ornaments1.setFilename("ornaments1.jpeg");
		
		Product Ornaments2 = new Product("ORN2" ,"tears glass ornaments", 29000);
		Ornaments2.setDescription("티얼스 고드름 유리 오너먼트(6개입)");
		Ornaments2.setCategory("Ornaments");
		Ornaments2.setUnitsInStock(1000);
		Ornaments2.setFilename("ornaments2.jpeg");
		
		Product Ornaments3 = new Product("ORN3" ,"Ball ornaments", 5500);
		Ornaments3.setDescription("볼 오너먼트 8종");
		Ornaments3.setCategory("Ornaments");
		Ornaments3.setUnitsInStock(1000);
		Ornaments3.setFilename("ornaments3.jpeg");
		
		Product Ornaments4 = new Product("ORN4" ,"RED velvet ribbon ornament", 2500);
		Ornaments4.setDescription("벨벳 리본오너먼트");
		Ornaments4.setCategory("Ornaments");
		Ornaments4.setUnitsInStock(1000);
		Ornaments4.setFilename("ornaments4.jpeg");
		
		Product Ornaments5 = new Product("ORN5" ,"special tree ornaments", 16000);
		Ornaments5.setDescription("스페셜 트리 오너먼트");
		Ornaments5.setCategory("Ornaments");
		Ornaments5.setUnitsInStock(1000);
		Ornaments5.setFilename("ornaments5.jpeg");
		
		Product Lights1 = new Product("L1" ,"LED wire bulb", 22900);
		Lights1.setDescription("크리스마스 전구 지네전구 (200구)");
		Lights1.setCategory("Lights");
		Lights1.setUnitsInStock(1000);
		Lights1.setFilename("light.jpeg");
		
		Product Lights2 = new Product("L2" ,"LED wire bulb", 36900);
		Lights2.setDescription("크리스마스 전구 지네전구 (400구)");
		Lights2.setCategory("Lights");
		Lights2.setUnitsInStock(1000);
		Lights2.setFilename("light.jpeg");
		
		Product Orgel1 = new Product("ORG1" ,"mini red brick house snowball", 14900);
		Orgel1.setDescription("미니 레드 브릭하우스 스노우볼 워터볼");
		Orgel1.setCategory("Orgels");
		Orgel1.setUnitsInStock(1000);
		Orgel1.setFilename("orgel1.jpeg");
		
		Product Orgel2 = new Product("ORG2" ,"tree truck santa waterball orgel", 94000);
		Orgel2.setDescription("트리트럭 산타 워터볼 오르골");
		Orgel2.setCategory("Orgels");
		Orgel2.setUnitsInStock(1000);
		Orgel2.setFilename("orgel2.jpeg");
		
		Product Orgel3 = new Product("ORG3" ,"candy shop waterball orgel", 69000);
		Orgel3.setDescription("캔디샵 워터볼 오르골");
		Orgel3.setCategory("Orgels");
		Orgel3.setUnitsInStock(1000);
		Orgel3.setFilename("orgel3.jpeg");
		
		Product Orgel4 = new Product("ORG4" ,"fireplace house santa waterball orgel", 79000);
		Orgel4.setDescription("벽난로 산타 워터볼 오르골");
		Orgel4.setCategory("Orgels");
		Orgel4.setUnitsInStock(1000);
		Orgel4.setFilename("orgel4.jpeg");
		
		Product Orgel5 = new Product("ORG5" ,"2in1 train waterball orgel", 159000);
		Orgel5.setDescription("2단 기차 워터볼 오르골");
		Orgel5.setCategory("Orgels");
		Orgel5.setUnitsInStock(1000);
		Orgel5.setFilename("orgel5.jpeg");
		
		
		listOfProducts.add(Tree1);
		listOfProducts.add(Tree2);
		listOfProducts.add(Tree3);
		listOfProducts.add(Tree4);
		listOfProducts.add(Tree5);
		listOfProducts.add(Tree6);
		
		listOfProducts.add(Wreath1);
		listOfProducts.add(Wreath2);
		
		listOfProducts.add(Ornaments1);
		listOfProducts.add(Ornaments2);
		listOfProducts.add(Ornaments3);
		listOfProducts.add(Ornaments4);
		listOfProducts.add(Ornaments5);
		
		listOfProducts.add(Lights1);
		listOfProducts.add(Lights2);
		
		listOfProducts.add(Orgel1);
		listOfProducts.add(Orgel2);
		listOfProducts.add(Orgel3);
		listOfProducts.add(Orgel4);
		listOfProducts.add(Orgel5);
		
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId){
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId()!=null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
}
