package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository(){
        Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("used");
        
        Product shoes = new Product("P1235", "에어포스", 120000);
		shoes.setDescription("270, 실착 1회, 하자없음");
		shoes.setCategory("Shoes");
		shoes.setManufacturer("Nike");
		shoes.setUnitsInStock(2);
		shoes.setCondition("used");
        
        Product Outer = new Product("P1236", "자켓", 125000);
		Outer.setDescription("105, 실착 2회, 가죽 자켓 흠집 하자 없음");
		Outer.setCategory("Outer");
		Outer.setManufacturer("보세");
		Outer.setUnitsInStock(1);
		Outer.setCondition("used");
        
        Product Windbreaker = new Product("P1237", "바람막이", 95000);
		Windbreaker.setDescription("100, 노스페이스 바람막이, 새상품");
		Windbreaker.setCategory("Windbreaker");
		Windbreaker.setManufacturer("노스페이스");
		Windbreaker.setUnitsInStock(1);
		Windbreaker.setCondition("new");
        
        Product Chair = new Product("P1238", "의자", 40000);
		Chair.setDescription("시디즈 의자, 바퀴 달림");
		Chair.setCategory("Chair");
		Chair.setManufacturer("시디즈");
		Chair.setUnitsInStock(1);
		Chair.setCondition("used");
        
        Product Hoodie = new Product("P1239", "후드티", 20000);
		Hoodie.setDescription("사이즈 : M, 실착 3번, 쿨거래");
		Hoodie.setCategory("Hoodie");
		Hoodie.setManufacturer("디스이즈네버뎃");
		Hoodie.setUnitsInStock(1);
		Hoodie.setCondition("used");

        listOfProducts.add(phone);
		listOfProducts.add(shoes);
		listOfProducts.add(Outer);
        listOfProducts.add(Windbreaker);
        listOfProducts.add(Chair);
        listOfProducts.add(Hoodie);
		// listOfProducts.add(상품명);


    }
    
    public ArrayList<Product> getAllProducts() {
		return listOfProducts;
    }
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

}