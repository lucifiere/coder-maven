package com.lucfiere.utils

import org.apache.commons.lang3.StringUtils

class CommonUtils {

    static String changeStyle(String str, boolean camel) {
        if (!str || str.size() <= 1) return str
        if (camel) {
            String r = str.toLowerCase().split('_').collect { cc -> StringUtils.capitalize(cc) }.join('')
            return r[0].toLowerCase() + r[1..-1]
        } else {
            str = str[0].toLowerCase() + str[1..-1]
            return str.collect { cc -> (cc as char).isUpperCase() ? '_' + cc.toLowerCase() : cc }.join('')
        }
    }

    static String toCamel(String str) {
        changeStyle(str, true)
    }

    static String toUnderline(String str) {
        changeStyle(str, false)
    }

    static String capitalFirst(String str) {
        if (StringUtils.isNotEmpty(str)) {
            char[] cs = str.toCharArray()
            cs[0] = ((cs[0] as int) - 32) as char
            return String.valueOf(cs)
        }
        str
    }

}
