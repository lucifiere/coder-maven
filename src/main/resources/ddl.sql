CREATE TABLE `rt_app_wm_mv_poi_expose`(
 `wm_poi_id` int        comment '门店id',
 `dt` int        comment 'yyyyMMdd',
 `exp_num` int        comment '曝光次数',
 `exp_cnt` int        comment '曝光人数',
 `buss_exp_num` int        comment '商圈曝光次数',
 `buss_exp_cnt` int        comment '商圈曝光人数',
 `buss_top_exp_num` int        comment '商圈top10曝光次数',
 `buss_top_exp_cnt` int        comment '商圈top10曝光人数'
)

-- 商家分时曝光
CREATE TABLE  `rt_app_wm_mv_poi_expose_hour`
(
 `wm_poi_id`         int        comment '门店id',
 `hour`              int        comment '小时',
 `dt`                int        comment 'yyyyMMdd',
 `exp_num`           int        comment '曝光次数',
 `exp_cnt`           int        comment '曝光人数',
 `buss_exp_num`      int        comment '商圈曝光次数',
 `buss_exp_cnt`      int        comment '商圈曝光人数',
 `buss_top_exp_num`  int        comment '商圈top10曝光次数',
 `buss_top_exp_cnt`  int        comment '商圈top10曝光人数'
)

-- 商家当日累计点击
CREATE TABLE  `rt_app_wm_mv_poi_click`
(
 `wm_poi_id`           int        comment '门店id',
 `dt`                  int        comment 'yyyyMMdd',
 `click_num`           int        comment '点击次数',
 `click_cnt`           int        comment '点击人数',
 `buss_click_num`      int        comment '商圈点击次数',
 `buss_click_cnt`      int        comment '商圈点击人数',
 `buss_top_click_num`  int        comment '商圈top10点击次数',
 `buss_top_click_cnt`  int        comment '商圈top10点击人数'
)
-- 商家分时点击
CREATE TABLE  `rt_app_wm_mv_poi_click_hour`
(
 `wm_poi_id`           int        comment '门店id',
 `hour`                int        comment '小时',
 `dt`                  int        comment 'yyyyMMdd',
 `click_num`           int        comment '点击次数',
 `click_cnt`           int        comment '点击人数',
 `buss_click_num`      int        comment '商圈点击次数',
 `buss_click_cnt`      int        comment '商圈点击人数',
 `buss_top_click_num`  int        comment '商圈top10点击次数',
 `buss_top_click_cnt`  int        comment '商圈top10点击人数'
)

CREATE TABLE `rt_app_b_trade_hour`
(
 `wm_poi_id`                    int            COMMENT '门店id',
 `hour`                        int            COMMENT '小时',
 `dt`                           int            COMMENT 'yyyyMMdd',
 `submit_ord_num`               int            COMMENT "提单数",
 `ord_num`                      int            COMMENT "订单数(提单未取消)",
 `actual_price`                 bigint         COMMENT "实付交易额(提单未取消)",
 `avg_actual_price`             bigint         COMMENT "单均实付交易额(提单未取消)",
 `shipping_fee`                 bigint         COMMENT "配送费(提单未取消)",
 `user_num`                     int            COMMENT "下单用户数",
 `valid_ord_num`                int            COMMENT '有效订单数',
 `turnover`                     bigint         COMMENT '营业额',
 `settle_income`                bigint         COMMENT '收入',
 `settle_expenses`              bigint         COMMENT '支出=营业额-收入',
 `act_desc_amt`                 bigint         COMMENT '活动补贴=营业额-实付价+美团配送费',
 `buss_submit_ord_num`          int            COMMENT "商圈提单数",
 `buss_ord_num`                 int            COMMENT "商圈订单数(提单未取消)",
 `buss_actual_price`            bigint         COMMENT "商圈实付交易额(提单未取消)",
 `buss_avg_actual_price`        bigint         COMMENT "商圈单均实付交易额(提单未取消)",
 `buss_shipping_fee`            bigint         COMMENT "商圈配送费(提单未取消)",
 `buss_user_num`                int            COMMENT "商圈下单用户数",
 `buss_valid_ord_num`           int            COMMENT '商圈有效订单数',
 `buss_turnover`                bigint         COMMENT '商圈营业额',
 `buss_settle_income`           bigint         COMMENT '商圈收入',
 `buss_settle_expenses`         bigint         COMMENT '商圈支出=营业额-收入',
 `buss_act_desc_amt`            bigint         COMMENT '商圈活动补贴=营业额-实付价+美团配送费',
 `buss_top_submit_ord_num`      int            COMMENT "商圈top10提单数",
 `buss_top_ord_num`             int            COMMENT "商圈top10订单数(提单未取消)",
 `buss_top_actual_price`        bigint         COMMENT "商圈top10实付交易额(提单未取消)",
 `buss_top_avg_actual_price`    bigint         COMMENT "商圈top10单均实付交易额(提单未取消)",
 `buss_top_shipping_fee`        bigint         COMMENT "商圈top10配送费(提单未取消)",
 `buss_top_user_num`            int            COMMENT "商圈top10下单用户数"
 `buss_top_valid_ord_num`       int            COMMENT '商圈top10有效订单数',
 `buss_top_turnover`            bigint         COMMENT '商圈top10营业额',
 `buss_top_settle_income`       bigint         COMMENT '商圈top10收入',
 `buss_top_settle_expenses`     bigint         COMMENT '商圈top10支出=营业额-收入',
 `buss_top_act_desc_amt`        bigint         COMMENT '商圈top10活动补贴=营业额-实付价+美团配送费'
)

CREATE TABLE `rt_app_b_trade_dt`
(
 `wm_poi_id`                    int            COMMENT '门店id',
 `dt`                           int            COMMENT 'yyyyMMdd',
 `submit_ord_num`               int            COMMENT '提单数',
 `ord_num`                      int            COMMENT '订单数：提单未取消',
 `actual_price`                 bigint         COMMENT '实付交易额：提单未取消',
 `avg_actual_price`             bigint         COMMENT '单均实付交易额：提单未取消',
 `shipping_fee`                 bigint         COMMENT '配送费：提单未取消',
 `user_num`                     int            COMMENT '下单用户数',
 `valid_ord_num`                int            COMMENT '有效订单数',
 `turnover`                     bigint         COMMENT '营业额',
 `settle_income`                bigint         COMMENT '收入',
 `settle_expenses`              bigint         COMMENT '支出=营业额-收入',
 `act_desc_amt`                 bigint         COMMENT '活动补贴=营业额-实付价+美团配送费',
 `buss_submit_ord_num`          int            COMMENT '商圈提单数',
 `buss_ord_num`                 int            COMMENT '商圈订单数：提单未取消',
 `buss_actual_price`            bigint         COMMENT '商圈实付交易额：提单未取消',
 `buss_avg_actual_price`        bigint         COMMENT '商圈单均实付交易额：提单未取消',
 `buss_shipping_fee`            bigint         COMMENT '商圈配送费：提单未取消',
 `buss_user_num`                int            COMMENT '商圈下单用户数',
 `buss_valid_ord_num`           int            COMMENT '商圈有效订单数',
 `buss_turnover`                bigint         COMMENT '商圈营业额',
 `buss_settle_income`           bigint         COMMENT '商圈收入',
 `buss_settle_expenses`         bigint         COMMENT '商圈支出=营业额-收入',
 `buss_act_desc_amt`            bigint         COMMENT '商圈活动补贴=营业额-实付价+美团配送费',
 `buss_top_submit_ord_num`      int            COMMENT '商圈top10提单数',
 `buss_top_ord_num`             int            COMMENT '商圈top10订单数：提单未取消',
 `buss_top_actual_price`        bigint         COMMENT '商圈top10实付交易额：提单未取消',
 `buss_top_avg_actual_price`    bigint         COMMENT '商圈top10单均实付交易额：提单未取消',
 `buss_top_shipping_fee`        bigint         COMMENT '商圈top10配送费：提单未取消',
 `buss_top_user_num`            int            COMMENT '商圈top10下单用户数'
 `buss_top_valid_ord_num`       int            COMMENT '商圈top10有效订单数',
 `buss_top_turnover`            bigint         COMMENT '商圈top10营业额',
 `buss_top_settle_income`       bigint         COMMENT '商圈top10收入',
 `buss_top_settle_expenses`     bigint         COMMENT '商圈top10支出=营业额-收入',
 `buss_top_act_desc_amt`        bigint         COMMENT '商圈top10活动补贴=营业额-实付价+美团配送费'
)

CREATE TABLE `rt_app_wm_mv_poi_expose`(
 `wm_poi_id` bigint        comment '门店id',
 `dt` varchar        comment 'yyyyMMdd',
 `wm_poi_name` varchar        comment '外卖商家名称',
 `wm_poi_id` bigint        comment '二级品类ID',
 `exp_num` int        comment '曝光次数',
 `exp_cnt` int        comment '曝光人数',
 `buss_exp_num` int        comment '商圈曝光次数',
 `buss_exp_cnt` int        comment '商圈曝光人数',
 `buss_top_exp_num` int        comment '商圈top10曝光次数',
 `buss_top_exp_cnt` int        comment '商圈top10曝光人数'
)

CREATE TABLE `topic_flow_poi_ba_d` (
`wm_poi_id` bigint comment '外卖商家id-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`wm_poi_name` varchar comment '外卖商家名称-来源表->dim_poi_area_dd',
`second_tag_id` bigint comment '二级品类id-来源表->dim_poi_area_dd',
`second_tag_name` varchar comment '二级品类名称-来源表->dim_poi_area_dd',
`third_tag_id` bigint comment '三级品类id-来源表->dim_poi_area_dd',
`third_tag_name` varchar comment '三级品类名称-来源表->dim_poi_area_dd',
`second_city_id` bigint comment '二级城市id-来源表->dim_poi_area_dd',
`second_city_name` varchar comment '二级城市名称-来源表->dim_poi_area_dd',
`aor_id` int comment '蜂窝id-来源表->dim_poi_area_dd',
`aor_name` varchar comment '蜂窝name-来源表->dim_poi_area_dd',
`click_num` bigint comment '商家点击次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`click_uv` bigint comment '商家点击人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_num` bigint comment '商家曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_uv` bigint comment '商家曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_num` bigint comment '商家页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_uv` bigint comment '商家页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_num` bigint comment '提单页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_uv` bigint comment '提单页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_num` bigint comment '推单数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_uv` bigint comment '推单人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`dt` varchar comment '日期分区，格式yyyyMMdd-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd'
)

CREATE TABLE `topic_flow_poi_ba_week` (
`wm_poi_id` bigint comment '外卖商家id-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`wm_poi_name` varchar comment '外卖商家名称-来源表->dim_poi_area_dd',
`second_tag_id` bigint comment '二级品类id-来源表->dim_poi_area_dd',
`second_tag_name` varchar comment '二级品类名称-来源表->dim_poi_area_dd',
`third_tag_id` bigint comment '三级品类id-来源表->dim_poi_area_dd',
`third_tag_name` varchar comment '三级品类名称-来源表->dim_poi_area_dd',
`second_city_id` bigint comment '二级城市id-来源表->dim_poi_area_dd',
`second_city_name` varchar comment '二级城市名称-来源表->dim_poi_area_dd',
`aor_id` int comment '蜂窝id-来源表->dim_poi_area_dd',
`aor_name` varchar comment '蜂窝name-来源表->dim_poi_area_dd',
`click_num` bigint comment '商家点击次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`click_uv` bigint comment '商家点击人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_num` bigint comment '商家曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_uv` bigint comment '商家曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_num` bigint comment '商家页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_uv` bigint comment '商家页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_num` bigint comment '提单页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_uv` bigint comment '提单页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_num` bigint comment '推单数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_uv` bigint comment '推单人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`dt` varchar comment '日期分区，格式yyyyMMdd-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd'
)

CREATE TABLE `topic_flow_poi_ba_month` (
`wm_poi_id` bigint comment '外卖商家id-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`wm_poi_name` varchar comment '外卖商家名称-来源表->dim_poi_area_dd',
`second_tag_id` bigint comment '二级品类id-来源表->dim_poi_area_dd',
`second_tag_name` varchar comment '二级品类名称-来源表->dim_poi_area_dd',
`third_tag_id` bigint comment '三级品类id-来源表->dim_poi_area_dd',
`third_tag_name` varchar comment '三级品类名称-来源表->dim_poi_area_dd',
`second_city_id` bigint comment '二级城市id-来源表->dim_poi_area_dd',
`second_city_name` varchar comment '二级城市名称-来源表->dim_poi_area_dd',
`aor_id` int comment '蜂窝id-来源表->dim_poi_area_dd',
`aor_name` varchar comment '蜂窝name-来源表->dim_poi_area_dd',
`click_num` bigint comment '商家点击次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`click_uv` bigint comment '商家点击人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_num` bigint comment '商家曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_uv` bigint comment '商家曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_num` bigint comment '商家页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_uv` bigint comment '商家页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_num` bigint comment '提单页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_uv` bigint comment '提单页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_num` bigint comment '推单数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_uv` bigint comment '推单人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`dt` varchar comment '日期分区，格式yyyyMMdd-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd'
)

CREATE TABLE `topic_flow_poi_area_d` (
`second_tag_id` bigint comment '二级品类id-来源表->dim_poi_area_dd',
`second_tag_name` varchar comment '二级品类名称-来源表->dim_poi_area_dd',
`third_tag_id` bigint comment '三级品类id-来源表->dim_poi_area_dd',
`third_tag_name` varchar comment '三级品类名称-来源表->dim_poi_area_dd',
`second_city_id` bigint comment '二级城市id-来源表->dim_poi_area_dd',
`second_city_name` varchar comment '二级城市名称-来源表->dim_poi_area_dd',
`aor_id` int comment '蜂窝id-来源表->dim_poi_area_dd',
`aor_name` varchar comment '蜂窝name-来源表->dim_poi_area_dd',
`click_num` bigint comment '商家点击次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`click_uv` bigint comment '商家点击人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_num` bigint comment '商家曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_uv` bigint comment '商家曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_num` bigint comment '商家页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_uv` bigint comment '商家页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_num` bigint comment '提单页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_uv` bigint comment '提单页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_num` bigint comment '推单数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_uv` bigint comment '推单人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_expose_uv` double comment '前10%商家曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_expose_uv` double comment '商家曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_click_uv` double comment '前10%商家页曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_click_uv` double comment '商家页曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_push_order_uv` double comment '前10%推单人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_push_order_uv` double comment '推单人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`dt` varchar comment '日期分区，格式yyyyMMdd-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd'
)

CREATE TABLE `topic_flow_poi_area_week` (
`second_tag_id` bigint comment '二级品类id-来源表->dim_poi_area_dd',
`second_tag_name` varchar comment '二级品类名称-来源表->dim_poi_area_dd',
`third_tag_id` bigint comment '三级品类id-来源表->dim_poi_area_dd',
`third_tag_name` varchar comment '三级品类名称-来源表->dim_poi_area_dd',
`second_city_id` bigint comment '二级城市id-来源表->dim_poi_area_dd',
`second_city_name` varchar comment '二级城市名称-来源表->dim_poi_area_dd',
`aor_id` int comment '蜂窝id-来源表->dim_poi_area_dd',
`aor_name` varchar comment '蜂窝name-来源表->dim_poi_area_dd',
`click_num` bigint comment '商家点击次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`click_uv` bigint comment '商家点击人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_num` bigint comment '商家曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_uv` bigint comment '商家曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_num` bigint comment '商家页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_uv` bigint comment '商家页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_num` bigint comment '提单页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_uv` bigint comment '提单页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_num` bigint comment '推单数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_uv` bigint comment '推单人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_expose_uv` double comment '前10%商家曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_expose_uv` double comment '商家曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_click_uv` double comment '前10%商家页曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_click_uv` double comment '商家页曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_push_order_uv` double comment '前10%推单人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_push_order_uv` double comment '推单人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`dt` varchar comment '日期分区，格式yyyyMMdd-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd'
)

CREATE TABLE `topic_flow_poi_area_month` (
`second_tag_id` bigint comment '二级品类id-来源表->dim_poi_area_dd',
`second_tag_name` varchar comment '二级品类名称-来源表->dim_poi_area_dd',
`third_tag_id` bigint comment '三级品类id-来源表->dim_poi_area_dd',
`third_tag_name` varchar comment '三级品类名称-来源表->dim_poi_area_dd',
`second_city_id` bigint comment '二级城市id-来源表->dim_poi_area_dd',
`second_city_name` varchar comment '二级城市名称-来源表->dim_poi_area_dd',
`aor_id` int comment '蜂窝id-来源表->dim_poi_area_dd',
`aor_name` varchar comment '蜂窝name-来源表->dim_poi_area_dd',
`click_num` bigint comment '商家点击次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`click_uv` bigint comment '商家点击人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_num` bigint comment '商家曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`expose_uv` bigint comment '商家曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_num` bigint comment '商家页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`poi_home_uv` bigint comment '商家页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_num` bigint comment '提单页曝光次数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`p_submit_order_uv` bigint comment '提单页曝光人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_num` bigint comment '推单数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`push_order_uv` bigint comment '推单人数-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_expose_uv` double comment '前10%商家曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_expose_uv` double comment '商家曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_click_uv` double comment '前10%商家页曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_click_uv` double comment '商家页曝光人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_top10p_push_order_uv` double comment '前10%推单人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`avg_push_order_uv` double comment '推单人数均值-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd',
`dt` varchar comment '日期分区，格式yyyyMMdd-来源表->mart_waimai.aggr_flow_sdk_poi_entry_unionid_sd'
)

CREATE TABLE `rt_app_wm_poi_flow_funnel`
(
 `wm_poi_id`              int        comment '门店id',
 `dt`                    int        comment 'yyyyMMdd',
 `deadline`               char   comment '统计截止时间yyyy-mm-dd HH:MM:ss',
 `exp_num`                int        comment '曝光次数',
 `exp_cnt`                int        comment '曝光人数',
 `click_num`              int        comment '点击次数',
 `click_cnt`              int        comment '点击人数',
 `ord_num`                int        comment '下单次数',
 `user_num`               int        comment '下单人数',
 `busi_exp_num`           int        comment '商圈曝光次数',
 `busi_exp_cnt`           int        comment '商圈曝光人数',
 `busi_click_num`         int        comment '商圈点击次数',
 `busi_click_cnt`         int        comment '商圈点击人数',
 `busi_ord_num`           int        comment '商圈下单次数',
 `busi_user_num`          int        comment '商圈下单人数',
 `busi_top_exp_num`       int        comment '商圈top曝光次数',
 `busi_top_exp_cnt`       int        comment '商圈top曝光人数',
 `busi_top_click_num`     int        comment '商圈top点击次数',
 `busi_top_click_cnt`     int        comment '商圈top点击人数',
 `busi_top_ord_num`       int        comment '商圈top下单次数',
 `busi_top_user_num`      int        comment '商圈top下单人数'
)

CREATE TABLE `rt_app_wm_poi_flow_funnel_hour`
(
 `wm_poi_id`              int        comment '门店id',
 `hour`                   int        comment '小时',
 `dt`                     int        comment 'yyyyMMdd',
 `deadline`               char(19)   comment '统计截止时间yyyy-mm-dd HH:MM:ss',
 `exp_num`                int        comment '曝光次数',
 `exp_cnt`                int        comment '曝光人数',
 `click_num`              int        comment '点击次数',
 `click_cnt`              int        comment '点击人数',
 `ord_num`                int        comment '下单次数',
 `user_num`               int        comment '下单人数',
 `busi_exp_num`           int        comment '商圈曝光次数',
 `busi_exp_cnt`           int        comment '商圈曝光人数',
 `busi_click_num`        int        comment '商圈点击次数',
 `busi_click_cnt`         int        comment '商圈点击人数',
 `busi_ord_num`           int        comment '商圈下单次数',
 `busi_user_num`          int        comment '商圈下单人数',
 `busi_top_exp_num`       int        comment '商圈top曝光次数',
 `busi_top_exp_cnt`       int        comment '商圈top曝光人数',
 `busi_top_click_num`     int        comment '商圈top点击次数',
 `busi_top_click_cnt`     int        comment '商圈top点击人数',
 `busi_top_ord_num`       int        comment '商圈top下单次数',
 `busi_top_user_num`      int        comment '商圈top下单人数'
)