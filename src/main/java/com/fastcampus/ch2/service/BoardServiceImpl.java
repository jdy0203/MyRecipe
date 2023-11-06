package com.fastcampus.ch2.service;

import com.fastcampus.ch2.dao.BoardDao;
import com.fastcampus.ch2.domain.BoardDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    BoardDao boardDao;

    @Override
    public int getCount() throws Exception {
        return boardDao.count();
    }

    @Override
    public List<BoardDto> getList() throws Exception {
        return boardDao.selectAll();
    }
    @Override
    public List<BoardDto> getPage(Map map) throws Exception {
        return boardDao.selectPage(map);
    }
}
