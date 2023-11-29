package com.fastcampus.ch2.service;

import com.fastcampus.ch2.domain.BoardDto;
import com.fastcampus.ch2.domain.CommentDto;
import com.fastcampus.ch2.domain.SearchCondition;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

public interface CommentService {
    int getCount(Integer bno) throws Exception;

    @Transactional(rollbackFor = Exception.class)
    int remove(Integer cno, Integer bno, String commenter) throws Exception;

    @Transactional(rollbackFor = Exception.class)
    int write(CommentDto commentDto) throws Exception;

    List<CommentDto> getList(Integer bno) throws Exception;

    CommentDto read(Integer cno) throws Exception;

    int modify(CommentDto commentDto) throws Exception;

    List<CommentDto> getPage(SearchCondition sc) throws Exception;

    int getResultCnt(SearchCondition sc) throws Exception;


}
