package com.fastcampus.ch2.service;

import com.fastcampus.ch2.domain.BoardDto;
import com.fastcampus.ch2.domain.SearchCondition;

import java.util.*;

public interface BoardService {
    int getCount() throws Exception;
    List<BoardDto> getList() throws Exception;
    List<BoardDto> getPage(Map map) throws Exception;
    BoardDto read(Integer bno) throws Exception;
    int remove(Integer bno, String writer) throws Exception;
    int write(BoardDto boardDto) throws Exception;
    int modify(BoardDto boardDto) throws Exception;
    List<BoardDto> getSearchResultPage(SearchCondition sc) throws Exception;
    int getSearchResultCnt(SearchCondition sc) throws Exception;

}
