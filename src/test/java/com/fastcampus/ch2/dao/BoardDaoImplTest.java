package com.fastcampus.ch2.dao;

import com.fastcampus.ch2.domain.*;
import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

import java.util.*;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDaoImplTest {

    @Autowired
    private BoardDao boardDao;

    @Test
    public void searchSelectPageTest() throws Exception{
        boardDao.deleteAll();
        for(int i = 1; i <= 20; i++){
            BoardDto boardDto = new BoardDto("力格"+i, "asdafafasa", "asdf");
            boardDao.insert(boardDto);
        }
        SearchCondition sc = new SearchCondition(1, 10, "力格2", "T");
        List<BoardDto> list = boardDao.searchSelectPage(sc);
        System.out.println("list" + list);
        assertTrue(list.size()==2);

    }

    @Test
    public void searchResultCntTest() throws Exception{
        boardDao.deleteAll();
        for(int i = 1; i <= 20; i++){
            BoardDto boardDto = new BoardDto("力格"+i, "asdafafasa", "asdf");
            boardDao.insert(boardDto);
        }
        SearchCondition sc = new SearchCondition(1, 10, "力格2", "T");
        int cnt = boardDao.searchResultCnt(sc);
        assertTrue(cnt==2);

    }



}
