package com.dao;

import com.entity.ZiliaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ZiliaoView;

/**
 * 阅读资料 Dao 接口
 *
 * @author 
 */
public interface ZiliaoDao extends BaseMapper<ZiliaoEntity> {

   List<ZiliaoView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
