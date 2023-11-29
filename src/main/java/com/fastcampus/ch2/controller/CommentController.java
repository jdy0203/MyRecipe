package com.fastcampus.ch2.controller;

import com.fastcampus.ch2.domain.BoardDto;
import com.fastcampus.ch2.domain.CommentDto;
import com.fastcampus.ch2.domain.PageHandler;
import com.fastcampus.ch2.domain.SearchCondition;
import com.fastcampus.ch2.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class CommentController {
    @Autowired
    CommentService service;

    //댓글을 수정하는 메서드
    @PatchMapping("/comments/{cno}")
    public ResponseEntity<String> modify(@PathVariable Integer cno, @RequestBody CommentDto dto, HttpSession session){
        String commenter = (String)session.getAttribute("id");
        dto.setCommenter(commenter);
        dto.setCno(cno);

        try {
            if(service.modify(dto)!=1){
                throw new Exception("Modify failed.");
            }
            return new ResponseEntity<>("MOD_OK", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("MOD_ERR", HttpStatus.BAD_REQUEST);
        }
    }

    //댓글을 등록하는 메서드
    @PostMapping("/comments")
    public ResponseEntity<String> write(@RequestBody CommentDto dto, Integer bno, HttpSession session){
        String commenter = (String)session.getAttribute("id");
//        String commenter = "asdf";
        dto.setCommenter(commenter);
        dto.setBno(bno);
        System.out.println("dto =" + dto);

        try {
            if(service.write(dto)!=1){
                throw new Exception("Write failed.");
            }
            return new ResponseEntity<>("WRT_OK", HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("WRT_ERR", HttpStatus.BAD_REQUEST);
        }
    }

    //지정된 댓글을 삭제하는 메서드
    @DeleteMapping("/comments/{cno}")
    public ResponseEntity<String> remove(@PathVariable Integer cno, Integer bno, HttpSession session){
        String commenter = (String)session.getAttribute("id");
        try {
            int rowCnt = service.remove(cno, bno, commenter);
            if(rowCnt!=1){
                throw new Exception("Delete Failed");
            }
            return new ResponseEntity<>("DEL_OK", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("DEL_ERR", HttpStatus.BAD_REQUEST);
        }

    }

    //지정된 게시물의 모든 댓글을 가져오는 메서드
    @GetMapping("/comments")
    public ResponseEntity<List<CommentDto>> list(SearchCondition sc, Model m, Integer bno) {
        List<CommentDto> list = null;
        try {
            list = service.getList(bno);
            int totalCnt = service.getResultCnt(sc);
            m.addAttribute("totalCnt", totalCnt);

            PageHandler pageHandler = new PageHandler(bno, sc);

            List<CommentDto> pageList = service.getPage(sc);
            m.addAttribute("list", pageList);
            m.addAttribute("ph", pageHandler);

            return new ResponseEntity<List<CommentDto>>(list, HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<List<CommentDto>>(HttpStatus.BAD_REQUEST);
        }

    }
}
