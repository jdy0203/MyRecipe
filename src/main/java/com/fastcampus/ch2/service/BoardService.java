package com.fastcampus.ch2.service;

import com.fastcampus.ch2.domain.BoardDto;

import java.util.*;

public interface BoardService {
    int getCount() throws Exception;
    List<BoardDto> getList() throws Exception;
    List<BoardDto> getPage(Map map) throws Exception;
}
