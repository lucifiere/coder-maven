-- 商家当日累计曝光
CREATE TABLE  rt_app_wm_mv_poi_expose
(
 wm_poi_id         int        comment '门店id',
 dt                int        comment 'yyyyMMdd',
 exp_num           int        comment '曝光次数',
 exp_cnt           int        comment '曝光人数',
 buss_exp_num      int        comment '商圈曝光次数',
 buss_exp_cnt      int        comment '商圈曝光人数',
 buss_top_exp_num  int        comment '商圈top10曝光次数',
 buss_top_exp_cnt  int        comment '商圈top10曝光人数'
)
UNIQUE KEY(wm_poi_id,dt)
PARTITION BY RANGE(dt)
(
PARTITION p20200616 VALUES LESS THAN ("20200616"),
PARTITION p20200617 VALUES LESS THAN ("20200617")
)
DISTRIBUTED BY HASH(wm_poi_id) BUCKETS 32
;

CREATE TABLE `coupon_couponinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `flow_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `coupon_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template_type` int(11) NOT NULL COMMENT '券模板类型(也是券类型)',
  `template_code` bigint(20) NOT NULL COMMENT '券模板code',
  `product_type` int(11) NOT NULL COMMENT '券应用的商品类别(1.电影票，2.卖品)',
  `batch_code` bigint(20) DEFAULT NULL COMMENT '批次码',
  `coupon_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '券外部名称',
  `price` bigint(20) NOT NULL COMMENT '面值',
  `start_time` datetime NOT NULL COMMENT '券有效开始时间',
  `end_time` datetime NOT NULL COMMENT '券有效结束时间',
  `base_price` bigint(20) NOT NULL COMMENT '基础价格',
  `state` int(11) NOT NULL COMMENT '券状态(1.有效，2.已核销，3.作废，4.已锁定 5.已过期 6.未激活)',
  `issuer` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '发行方',
  `create_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `modify_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `gmt_modify` datetime DEFAULT NULL COMMENT '修改时间',
  `gmt_check` datetime DEFAULT NULL COMMENT '核销时间',
  `check_channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '核销渠道',
  `system_source` int(11) NOT NULL COMMENT '券系统来源(1.会员，2.营销，3.第三方,4.批次发券,5.手动发券，7.销售单，8.pos)',
  `source_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '来源系统code(会员发券类型，营销活动id)',
  `account_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '会员id',
  `extension` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '扩展字段',
  `coupon_snapshot` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '券信息',
  `film_upgrade_policy` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '影片升级策略',
  `lease_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '租户编码',
  `reprice_coupon_price` bigint(20) DEFAULT NULL COMMENT '重新定价券新定价（只指针对重新定价券，其他券类型无意义）',
  `print_count` int(11) DEFAULT '0' COMMENT '打印次数',
  `print_state` int(11) DEFAULT '1' COMMENT '打印状态（1：未打印、2：已打印）',
  `compensate_party` int(11) DEFAULT '1' COMMENT '补差方',
  `index_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '预制券码流水号',
  `prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '预制券码前缀',
  `detail_source_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'source_code粒度太粗，再细一点的在这里\n'
) ENGINE=InnoDB AUTO_INCREMENT=21438132 DEFAULT CHARSET=utf8 COMMENT='券码表';

CREATE TABLE `rt_app_wm_mv_poi_expose`(
 `wm_poi_id` int(1)        comment '门店id',
 `dt` int(1)        comment 'yyyyMMdd',
 `exp_num` int(1)        comment '曝光次数',
 `exp_cnt` int(1)        comment '曝光人数',
 `buss_exp_num` int(1)        comment '商圈曝光次数',
 `buss_exp_cnt` int(1)        comment '商圈曝光人数',
 `buss_top_exp_num` int(1)        comment '商圈top10曝光次数',
 `buss_top_exp_cnt` int(1)        comment '商圈top10曝光人数'
)
-- 商家分时曝光
CREATE TABLE  rt_app_wm_mv_poi_expose_hour
(
 wm_poi_id         int        comment '门店id',
 hour              int        comment '小时',
 dt                int        comment 'yyyyMMdd',
 exp_num           int        comment '曝光次数',
 exp_cnt           int        comment '曝光人数',
 buss_exp_num      int        comment '商圈曝光次数',
 buss_exp_cnt      int        comment '商圈曝光人数',
 buss_top_exp_num  int        comment '商圈top10曝光次数',
 buss_top_exp_cnt  int        comment '商圈top10曝光人数'
)
UNIQUE KEY(wm_poi_id,hour,dt)
PARTITION BY RANGE(dt)
(
PARTITION p20200616 VALUES LESS THAN ("20200616"),
PARTITION p20200617 VALUES LESS THAN ("20200617")
)
DISTRIBUTED BY HASH(wm_poi_id) BUCKETS 32
;

-- 商家当日累计点击
CREATE TABLE  rt_app_wm_mv_poi_click
(
 wm_poi_id           int        comment '门店id',
 dt                  int        comment 'yyyyMMdd',
 click_num           int        comment '点击次数',
 click_cnt           int        comment '点击人数',
 buss_click_num      int        comment '商圈点击次数',
 buss_click_cnt      int        comment '商圈点击人数',
 buss_top_click_num  int        comment '商圈top10点击次数',
 buss_top_click_cnt  int        comment '商圈top10点击人数'
)
UNIQUE KEY(wm_poi_id,dt)
PARTITION BY RANGE(dt)
(
PARTITION p20200616 VALUES LESS THAN ("20200616"),
PARTITION p20200617 VALUES LESS THAN ("20200617")
)
DISTRIBUTED BY HASH(wm_poi_id) BUCKETS 32
;
-- 商家分时点击
CREATE TABLE  rt_app_wm_mv_poi_click_hour
(
 wm_poi_id           int        comment '门店id',
 hour                int        comment '小时',
 dt                  int        comment 'yyyyMMdd',
 click_num           int        comment '点击次数',
 click_cnt           int        comment '点击人数',
 buss_click_num      int        comment '商圈点击次数',
 buss_click_cnt      int        comment '商圈点击人数',
 buss_top_click_num  int        comment '商圈top10点击次数',
 buss_top_click_cnt  int        comment '商圈top10点击人数'
)
UNIQUE KEY(wm_poi_id,hour,dt)
PARTITION BY RANGE(dt)
(
PARTITION p20200616 VALUES LESS THAN ("20200616"),
PARTITION p20200617 VALUES LESS THAN ("20200617")
)
DISTRIBUTED BY HASH(wm_poi_id) BUCKETS 32
;