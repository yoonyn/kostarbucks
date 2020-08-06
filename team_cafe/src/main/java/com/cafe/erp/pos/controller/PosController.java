package com.cafe.erp.pos.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe.erp.home.service.PosPasswordService;
import com.cafe.erp.pos.service.PosOrderService;
import com.cafe.erp.pos.service.PosOrderlistAddService;
import com.cafe.erp.pos.service.PosOrderlistService;
import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductAddService;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.sale.service.ProductService;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.service.OrderWebService;
import com.cafe.erp.userWeb.service.ProductCartService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
@RequestMapping("pos/")
public class PosController {
	
	@Resource
	private PosOrderlistAddService posOrderlistAddService;
	
	@Resource
	private PosOrderlistService posOrderlistService;
	
	@Resource
	private PosOrderService posOrderService;
	
	@Resource
	private ProductService productService;
	
	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private ProductAddService productAddService;
	
	@Resource
	private PosPasswordService posPasswordService;
	
	@Resource
	private OrderWebService orderWebService;
	
	@Resource
	private ProductCartService productCartService;
	
	
	@RequestMapping("main.cafe")
	public String posMain(Model model) {
		return "pos/password";
	}
	//passwordCheck.cafe
	@RequestMapping("passwordCheck.cafe")
	public String passwordCheck(HttpServletRequest request) {
		String cafe_pospassword = request.getParameter("cafe_pospassword");
		String pwd = posPasswordService.getPosPassword();
		if (pwd.toLowerCase().equals(cafe_pospassword.toLowerCase())) {
			return "pos/home";
		}else {
			return "pos/password";
		}
	}
	
	
	
	@RequestMapping("home.cafe")
	public String posHome(Model model) {
		return "pos/home";
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//											web 주문 확인
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@ResponseBody
	@RequestMapping("webOrderCheck.cafe")
	public String webOrderCheck(){
	int check=orderWebService.getOrderWebCheck();
	String result = "null";
	if (check !=0) {
	result = "exit";
	}
	return result;			//null이면 접수안된 주문이 없는것
	}
	
	@RequestMapping("orderlist.cafe")				//주문 list 불러오기
	public String orderlist(HttpServletRequest request) {
	//주문테이블에 오늘날짜의 주문 list 가져오기
	
	String pattern = "yyyy/MM/dd";
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
	String date = simpleDateFormat.format(new Date());
	date =date.substring(2);
	
	List<OrderWebDTO> orderlist = orderWebService.getOrderWebListAll(date);
	request.setAttribute("orderlist", orderlist);
	
	return "pos/order/orderList";
	}
	
	
	@RequestMapping("orderlistview.cafe")				//주문 list 불러오기
	public String orderlistview(HttpServletRequest request) {
	int order_web_code = Integer.parseInt(request.getParameter("orderWebCode"));
	request.setAttribute("orderWebCode", order_web_code);
	
	List<ProductVO> productlist = productCartService.getProductList();
	request.setAttribute("productlist", productlist);
	
	HashMap map = new HashMap();
	List<ProductAddDTO> addlist = productAddService.getProductAddList(map);
	request.setAttribute("addlist", addlist);
	
	//주문내역 테이블 가져오기 
	//주문내역 추가사항내역테이블 가져오기
	//join..
	List<OrderWebListAddJoinDTO> list = orderWebService.getOrderWebListAddJoinList(order_web_code);
	request.setAttribute("list", list);
	
	return "pos/order/orderListView";
	}
	
	@RequestMapping("orderconfirm.cafe")
	public String orderconfirm(HttpServletRequest request) {
	int order_web_code = Integer.parseInt(request.getParameter("orderWebCode"));
	orderWebService.updateOrderWebCheck(order_web_code);
	return "redirect:/pos/orderlist.cafe";
	
	}
	
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//											pos
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	// 음료 타입 선택시 리스트를 생성하여 보냄
	@ResponseBody
	@RequestMapping("typeSelect.cafe")
	public List<ProductVO> posTypeSelect(@RequestParam(value = "code") String code) {
		System.out.println(code);
		int pcode = Integer.parseInt(code);
		return productService.getProductListByCategory(pcode);
	}
	
	// 음료 선택시 음료의 정보를 보냄
	@ResponseBody
	@RequestMapping("productSelect.cafe")
	public ProductVO posProductSelect(@RequestParam(value = "id") String id) {
		System.out.println(id);
		int pid = Integer.parseInt(id);
		return productService.getProductByCode(pid);
	}
	
	// 음료의 옵션에 대한 리스트를 생성하여 보냄
	@ResponseBody
	@RequestMapping("optionList.cafe")
	public List<ProductAddDTO> posOptionList(){
		HashMap map = new HashMap();
		return productAddService.getProductAddList(map);
	}
	
	// 음료 옵션 선택시 옵션에 대한 정보를 보냄
	@ResponseBody
	@RequestMapping("optionSelect.cafe")
	public ProductAddDTO posOptionSelect(@RequestParam(value = "id") String id) {
		int oid = Integer.parseInt(id);
		return productAddService.getProductAddByCode(oid);
	}
	
	// 결제 시 회원 정보를 조회 후 스탬프 적립 / 사용자가 주문한 음료 리스트를 가지고 DB에 저장
	@ResponseBody
	@RequestMapping(value = "orderData.cafe", method = RequestMethod.POST)
	public String posProductOrder(@RequestBody String jsonString) {
		String msg = null;
		int check;
		HashMap orderMap = new HashMap();
		HashMap anonymous = new HashMap();
		HashMap stamp = new HashMap();

		JsonParser Parser = new JsonParser();
		JsonObject jsonObj = (JsonObject) Parser.parse(jsonString);
		int listcount = Integer.parseInt(jsonObj.get("count").toString().replaceAll("\"", ""));

		String phone = jsonObj.get("customer").toString().replaceAll("\"", "");
		if (phone.equals("")) {
			check = 2;
		} else {
			check = posOrderService.phoneCheck(phone);
		}

		System.out.println(check + "찍힘");
		if (check == 0) { // 폰 번호가 없다면
			anonymous.put("customer_phone", phone);
			anonymous.put("customer_stamp", listcount);
			posOrderService.insertAnonymous(anonymous);

		} else if (check == 1) { // 폰 번호가 있으면
			stamp.put("order_count", listcount);
			stamp.put("customer_phone", phone);
			posOrderService.updateStamp(stamp);
		} else { // 비회원일 경우
			phone = null;
		}

		String totalprice = jsonObj.get("total").toString().replaceAll("\"", "");
		orderMap.put("order_total", totalprice);
		orderMap.put("order_count", jsonObj.get("count").toString().replaceAll("\"", ""));
		orderMap.put("customer_phone", phone);
		orderMap.put("order_accountType", jsonObj.get("payment").toString().replaceAll("\"", ""));
		// orderinsert
		posOrderService.insertOrder(orderMap);

		JsonArray memberArray = (JsonArray) jsonObj.get("order");
		System.out.println();

		for (int i = 0; i < memberArray.size(); i++) {
			JsonObject object = (JsonObject) memberArray.get(i);
			System.out.println("번호 : " + object.get("code").toString().replaceAll("\"", ""));
			System.out.println(object.get("price").toString());
			System.out.println("이름 : " + object.get("name"));
			System.out.println("가격 : " + object.get("price"));
			System.out.println("옵션 : " + object.get("option").getAsJsonArray().size());

			orderMap.put("cafe_product_code", object.get("code").toString().replaceAll("\"", ""));
			posOrderlistService.insertOrderList(orderMap);

			for (int j = 0; j < object.get("option").getAsJsonArray().size(); j++) {
				System.out.println(object.getAsJsonArray("option").get(j).toString().replaceAll("\"", ""));
				orderMap.put("PRODUCT_ADD_CODE",
						object.getAsJsonArray("option").get(j).toString().replaceAll("\"", ""));
				posOrderlistAddService.insertOrderListAdd(orderMap);
			}

			System.out.println("------------------------");
		}

		msg = "success";
		return msg;
	}
	
	
	// 직원의 이름과 주민등록번호로 근무 출/퇴근 등록
	@ResponseBody
	@RequestMapping(value = "attendInsert.cafe", produces = "application/text; charset=utf8")
	public String posInsertAttend(@RequestBody Map<String, Object> map) {
		String returnMsg = "";
		int checkEmp;
		int count;
		
		String attendType = map.get("inout").toString();
		String name = map.get("name").toString();
		String jumin = map.get("jumin").toString();
		
		HashMap attendInput = new HashMap();
		attendInput.put("employee_name", name);
		attendInput.put("employee_jumin", jumin);
		
		System.out.println(attendType);
		
		if(attendType.equals("출근")) {
			checkEmp = posOrderService.isEmployee(attendInput);
			
			if(checkEmp == 0) {
				returnMsg = "직원이 아닙니다.\n다시 입력해주세요!";
				return returnMsg;
			}
			
			count = posOrderService.checkAttend(attendInput);
			
			if(count == 0) {
				posOrderService.insertAttend(attendInput);
				returnMsg = "출근 등록이 완료되었습니다!";
				
			} else if(count != 0) {
				returnMsg = "이미 출근 등록을 했습니다!";
			}
			
		} else if(attendType.equals("퇴근")) {
			
			count = posOrderService.checkAttend(attendInput);
			
			if(count == 0) {
				returnMsg = "먼저 출근 등록을 해주세요!";
			} else {
				HashMap checkOff = posOrderService.checkOffWork(attendInput);
				
				if(!checkOff.containsKey("EMPTNA_ENDTIME")) {
					posOrderService.updateAttend(attendInput);
					returnMsg = "퇴근 등록이 완료되었습니다!";
				} else {
					returnMsg = "이미 퇴근 등록을 했습니다!";
				}
			}
		}
		
		return returnMsg;
	}
	
	// 마감 정산 모달창 부를때 금일 정산에 대한 정보를 보냄 (총판액, 결제타입별 금액, 총 주문수....)
	@ResponseBody
	@RequestMapping("dayend.cafe")
	public List posDayEnd() {
	      HashMap card = new HashMap();
	      HashMap cash = new HashMap();
	      int check = posOrderService.hasTodayPosStart();
	      
	      if(check == 0) {
	         return null;
	      }
	      
	      List dayEndMap = posOrderService.sellByGroup();
	      
	      if(dayEndMap.size() == 2) {
	         HashMap sellInfo = (HashMap)dayEndMap.get(0);
	         
	         if(sellInfo.get("ORDER_ACCOUNTTYPE").equals("카드")) {
	            cash.put("ORDER_ACCOUNTTYPE", "현금");
	            cash.put("SELLTOTAL", "0");
	            cash.put("SELLCOUNT", "0");
	            dayEndMap.add(1, cash);
	            
	         } else if(sellInfo.get("ORDER_ACCOUNTTYPE").equals("현금")) {
	            card.put("ORDER_ACCOUNTTYPE", "카드");
	            card.put("SELLTOTAL", "0");
	            card.put("SELLCOUNT", "0");
	            dayEndMap.add(0, card);
	         }
	      }
	      
	      
	      if(dayEndMap.isEmpty()) {
	         HashMap total = new HashMap();
	         card.put("ORDER_ACCOUNTTYPE", "카드");
	         card.put("SELLTOTAL", "0");
	         card.put("SELLCOUNT", "0");
	         
	         cash.put("ORDER_ACCOUNTTYPE", "현금");
	         cash.put("SELLTOTAL", "0");
	         cash.put("SELLCOUNT", "0");
	         
	         total.put("SELLTOTAL", "0");
	         total.put("SELLCOUNT", "0");
	         
	         dayEndMap.add(card);
	         dayEndMap.add(cash);
	         dayEndMap.add(total);
	      }
	      
	      HashMap endtime = posOrderService.getEndTime();
	      HashMap startInfo = posOrderService.getPosStartInfo();
	      dayEndMap.add(endtime);
	      dayEndMap.add(startInfo);
	      
	      return dayEndMap;
	}
	
	// 마감 정산 모달창에서 확인을 누를시 정보를 DB에 저장
	@ResponseBody
	@RequestMapping(value = "dayendSubmit.cafe", produces = "application/text; charset=utf8")
	public String posDayEndSubmit(@RequestBody HashMap<String, Object> map) {
		int check = posOrderService.hasTodayPosEnd();
		
		if(check != 0) {
			return "이미 POS 마감정산을 등록하였습니다!";
		}
		posOrderService.updatePosStartEnd(map);
		posOrderService.insertPosEndInfo(map);
		return "POS 마감정산이 등록되었습니다!";
	}
	
	// 영업 준비 시 시작 시간을 보냄
	@ResponseBody
	@RequestMapping("dayStart.cafe")
	public HashMap posDayStart() {
		HashMap startTime = posOrderService.getEndTime();
		System.out.println(startTime);
		return startTime;
	}
	
	// 영업 준비 등록시 시작 시간과 준비금액을 DB에 저장
	@ResponseBody
	@RequestMapping(value = "dayStartSubmit.cafe", produces = "application/text; charset=utf8")
	public String posDayStartSubmit(@RequestBody HashMap<String, Object> map) {
		int check = posOrderService.hasTodayPosStart();
		if(check != 0) {
			return "이미 POS 시작 준비를 등록하였습니다!";
		}
		
		posOrderService.insertPosStartInfo(map);
		return "POS 시작 준비가 등록되었습니다!";
	}
	
	   // 회원의 스탬프 개수 조회
	   @ResponseBody
	   @RequestMapping("selectStamp.cafe")
	   public HashMap selectStamp(@RequestParam(value = "phone") String phone) {
	      String msg = null;
	      int result =0;
	      HashMap map = new HashMap();
	      
	      int result2 = posOrderService.phoneCheck(phone);
	      System.out.println("없는 번호를 조회하면?q" + result2);
	      
	      if(result2 == 0) {
	         msg = "null";
	         map.put("msg", msg);
	         return map;
	      } else {
	         result = posOrderService.selectStamp(phone);
	      }
	      
	      System.out.println("result" + result);
	      if(result >= 10) {
	         msg = "yes";
	         map.put("msg", msg);
	         map.put("count", result);
	      } else if(result < 10) {
	         msg = "no";
	         map.put("msg", msg);
	         map.put("count", result);
	      }
	      
	      return map;
	   }
	   
	   
	   // 쿠폰 사용 처리
	   @ResponseBody
	   @RequestMapping("coupon.cafe")
	   public String coupon(@RequestParam(value = "phone") String phone) {
	      String msg = null;
	      HashMap map = new HashMap();
	      
	      int result2 = posOrderService.phoneCheck(phone);
	            
	      if(result2 == 0) {
	         msg = "null";
	         return msg;
	      }
	      
	      int stamp = posOrderService.selectStamp(phone);
	      map.put("customer_phone", phone);
	      map.put("customer_stamp", stamp);
	      
	      if(stamp < 10) {
	         msg = "no";
	         return msg;
	      } else if(stamp >= 10) {
	         posOrderService.useStamp(map);
	         msg = "yes";
	      }
	      return msg;
	   }
	
	
	
	
	@RequestMapping("login.cafe")
	public String posLogin(HttpServletRequest request, HttpServletResponse response) {
		return "pos/login";
	}
	
	@RequestMapping("admin/main.cafe")
	public String admin(Authentication auth) {
		return "admin/main";
	}
}
