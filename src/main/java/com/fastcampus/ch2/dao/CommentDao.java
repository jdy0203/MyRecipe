package com.fastcampus.ch2.dao;

import com.fastcampus.ch2.domain.CommentDto;
import com.fastcampus.ch2.domain.SearchCondition;

import java.util.List;


public interface CommentDao {
    int deleteAll(Integer bno) throws Exception;

    int count(Integer bno) throws Exception;

    int delete(Integer cno, String commenter) throws Exception;

    int insert(CommentDto dto) throws Exception;

    List<CommentDto> selectAll(Integer bno) throws Exception;

    CommentDto select(Integer cno) throws Exception;

    int update(CommentDto dto) throws Exception;

    List<CommentDto> commentSelectPage(SearchCondition sc) throws Exception;

    int commentResultCnt(SearchCondition sc) throws Exception;
}
