package com.cafe.erp.store.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.ERPController;
import com.cafe.erp.store.model.OrderDTO;
import com.cafe.erp.store.model.StockDTO;
import com.cafe.erp.store.service.OrderService;

@Controller
@RequestMapping("admin/store")
public class OrderController {

   @Resource
   private OrderService orderService;
   @Resource
   private ERPController erpController;
   
   //발주 신청목록보기
   @RequestMapping("/stockorder.cafe")
   public String order(HttpServletRequest req) {
      erpController.menuMethod(req);
      ModelAndView mav = new ModelAndView();

      int pg = 1;
      String strPg = req.getParameter("pg");

      if (strPg != null) {
         pg = Integer.parseInt(strPg);
      }

      int rowSize = 10;
      int start = (pg * rowSize) - (rowSize - 1);
      int end = pg * rowSize;

      int total = orderService.getStockCount(); // 총 게시글수
//      System.out.println("start : " + start + "end : " + end);
//      System.out.println("write count : " + total);

      int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
      int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
//      System.out.println("page count : " + allPage);

      int block = 10; // 한페이지에 보여줄 범위 [1][2][3]~~[10]
      int fromPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
      int toPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝

      if (toPage > allPage) { // ex)20>17
         toPage = allPage;
      }

      HashMap map = new HashMap();
      map.put("start", start);
      map.put("end", end);

      List<StockDTO> list = orderService.getStockList(map);
      req.setAttribute("list", list);
      req.setAttribute("pg", pg);
      req.setAttribute("allPage", allPage);
      req.setAttribute("block", block);
      req.setAttribute("fromPage", fromPage);
      req.setAttribute("toPage", toPage);
      
      
      return "store/stock/stockorder";
   }
   
   //임시 발주 테이블에 담기
   @RequestMapping("/ordercartinsert.cafe")
   public String ordercartinsert(OrderDTO dto, HttpServletResponse resp) throws Exception{
//		System.out.println(dto.getCart_stock_detailname() + dto.getCart_stock_quantity());
		
		
		int count = orderService.getstockcode(dto.getStock_code());
		
		if(count == 0 ) {
//		System.out.println("등록되어 있지 않음 insert 진행");
//		System.out.println("insert controller 진입");
		orderService.insertordercart(dto);
//		System.out.println("insertordercart 완료");
		}
		else if(count == 1) {
			System.out.println("등록 되어있음 update 진행");
			orderService.updatecount(dto);
		}

		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<script>");
		out.print("alert('" + dto.getCart_stock_detailname() +" "+ dto.getCart_stock_quantity() +"개 담기 완료');");
		out.print("location.href='stockorder.cafe'; ");
		out.print("</script>");
		out.close();
//		return "redirect:stockorder.cafe";
		return null;
	}
   
   //임시 발주 테이블 목록
   @RequestMapping("/stockorderlist.cafe")
   public String showordercartlist(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      erpController.menuMethod(req);
      ModelAndView mav = new ModelAndView();
      int ordercafecount = orderService.cafeordercartcount();
      if (ordercafecount == 0) {
         resp.setContentType("text/html; charset=UTF-8");
         PrintWriter out = resp.getWriter();
         out.print("<script>");
         out.print("alert('발주 목록이 없습니다 등록후 확인해주세요.');");
         out.print("location.href='stockorder.cafe'; ");
         out.print("</script>");
         out.close();
      }
      else {
      int pg = 1;
      String strPg = req.getParameter("pg");

      if (strPg != null) {
         pg = Integer.parseInt(strPg);
      }

      int rowSize = 10;
      int start = (pg * rowSize) - (rowSize - 1);
      int end = pg * rowSize;

      int total = orderService.getStockOrderCount(); // 총 게시글수
//      System.out.println("start : " + start + "end : " + end);
//      System.out.println("write count : " + total);

      int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
      int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
//      System.out.println("page count : " + allPage);

      int block = 10; // 한페이지에 보여줄 범위 [1][2][3]~~[10]
      int fromPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
      int toPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝

      if (toPage > allPage) { // ex)20>17
         toPage = allPage;
      }

      HashMap map = new HashMap();
      map.put("start", start);
      map.put("end", end);
      List<OrderDTO> order_list = orderService.getStockOrderList(map);
      int cart_total = orderService.getcarttotal();
      req.setAttribute("cart_total", cart_total);
      req.setAttribute("order_list", order_list);
      req.setAttribute("pg", pg);
      req.setAttribute("allPage", allPage);
      req.setAttribute("block", block);
      req.setAttribute("fromPage", fromPage);
      req.setAttribute("toPage", toPage);
//      System.out.println(order_list);
      }
      return "store/stock/stockorderlist";
   }
   
   //임시 발주 테이블 목록 수정페이지
   @RequestMapping("/stockorderupdateform.cafe")
   public String stockorderupdateform(int cart_number, int pg, Model model) {
      erpController.menuMethod(model);
//      System.out.println("stockorderupdateform 진입");
//      System.out.println("cart_number" + cart_number);
      OrderDTO dto = orderService.getOrder(cart_number);
      
      model.addAttribute("c", dto);
      model.addAttribute("pg", pg);
//      System.out.println("수정하기               "+dto.getCart_stock_quantity());
      return "store/stock/stockorderlistupdate";
   }
   
   //임시 발주 테이블 수정
   @RequestMapping("/stockorderlistupdate.cafe")
   public String stockorderupdate (OrderDTO dto, int pg) {
   //   System.out.println("stockorderupdate 진입");
//      System.out.println("수정한 수량 = " + dto.getCart_stock_quantity());
      orderService.updateordercart(dto);
      
      return "redirect:stockorderlist.cafe?pg=" + pg;
   }
   
   //임시 발주 테이블 목록 삭제
   @RequestMapping("/stockorderdelete.cafe")
   public String stockorderdelete(OrderDTO dto, int pg, HttpServletResponse resp) throws Exception {
      //System.out.println("stockorderdelete 진입");
      orderService.deleteordercart(dto);
      //System.out.println("stockorderdelete 완료");
      String detailname = dto.getCart_stock_detailname();

    	resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.print("<script>");
		out.print("alert('" + dto.getCart_stock_detailname() +" "+ "삭제 완료');");
		out.print("location.href='stockorderlist.cafe'; ");
		out.print("</script>");
		out.close();

//    return "redirect:stockorderlist.cafe?pg=" + pg;
		return null;
   }
   

}