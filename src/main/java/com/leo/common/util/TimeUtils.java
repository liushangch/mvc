package com.leo.common.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 常用时间处理
 *
 * @author LiuChao
 */
public final class TimeUtils {
    public static final String YYYY_MM_DD = "yyyy-MM-dd";
    public static final String YYYY_MM_DD_HH_MM = "yyyy-MM-dd HH:mm";
    public static final String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";
    public static final String YYYYMM = "yyyyMM";
    public static final String YYYYMMDD = "yyyyMMdd";
    public static final String YYYYMMDDHHMMSS = "yyyyMMddHHmmss";

    /**
     * Date转String
     *
     * @param date   Date类型日期
     * @param format 转换格式
     * @return String类型日期
     */
    public static String format(Date date, String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(date);
    }

    /**
     * String转Date
     *
     * @param dateStr String类型日期
     * @param format  转换格式
     * @return Date类型日期
     */
    public static Date parse(String dateStr, String format) {
        Date date = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            date = sdf.parse(dateStr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 获取当前日期
     *
     * @return String类型日期
     */
    public static String nowStringDate() {
        return nowStringDate(YYYY_MM_DD_HH_MM_SS);
    }

    /**
     * 获取当前日期
     *
     * @return String类型日期
     */
    public static String nowStringDate(String format) {
        return format(new Date(), format);
    }

    /**
     * 获取当前日期（秒）
     *
     * @return Long类型日期
     */
    public static Long nowLongDate() {
        return System.currentTimeMillis() / 1000;
    }

    /**
     * 获取年份
     */
    public static Integer getYear(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        return cal.get(Calendar.YEAR);
    }

    /**
     * 获取月份开始时间
     */
    public static Date getMonthBegin(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, monthNum);
        cal.set(Calendar.DAY_OF_MONTH, 1);
        return cal.getTime();
    }

    /**
     * 获取月份结束时间
     */
    public static Date getMonthEnd(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, 1 + monthNum);
        cal.set(Calendar.DAY_OF_MONTH, 1);
        cal.add(Calendar.DAY_OF_MONTH, -1);
        return cal.getTime();
    }

    /**
     * 获取季度开始时间
     */
    public static Date getQuarterBegin(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int month = cal.get(Calendar.MONTH);
        if (month < 3) {
            cal.set(Calendar.MONTH, 0);
        } else if (month < 6) {
            cal.set(Calendar.MONTH, 3);
        } else if (month < 9) {
            cal.set(Calendar.MONTH, 6);
        } else {
            cal.set(Calendar.MONTH, 9);
        }
        cal.add(Calendar.MONTH, (monthNum * 3));
        cal.set(Calendar.DAY_OF_MONTH, 1);
        return cal.getTime();
    }

    /**
     * 获取季度结束时间
     */
    public static Date getQuarterEnd(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int month = cal.get(Calendar.MONTH);
        if (month < 3) {
            cal.set(Calendar.MONTH, 2);
        } else if (month < 6) {
            cal.set(Calendar.MONTH, 5);
        } else if (month < 9) {
            cal.set(Calendar.MONTH, 8);
        } else {
            cal.set(Calendar.MONTH, 11);
        }
        cal.set(Calendar.DAY_OF_MONTH, 1);
        cal.add(Calendar.MONTH, 1 + (monthNum * 3));
        cal.add(Calendar.DAY_OF_MONTH, -1);
        return cal.getTime();
    }

    /**
     * 获取同期月份时间
     *
     * @param date     原日期
     * @param monthNum 月数
     * @return 同期月份时间
     */
    public static Date getMonthSameTime(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, monthNum);
        return cal.getTime();
    }

    /**
     * 获取同期季度时间
     *
     * @param date     原日期
     * @param monthNum 月数
     * @return 同期季度时间
     */
    public static Date getQuarterSameTime(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, monthNum * 3);
        return cal.getTime();
    }

    /**
     * 根据天数获取日期
     *
     * @param date   原日期
     * @param dayNum 天数
     * @return 计算后的日期
     */
    public static Date addDayNum(Date date, int dayNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, dayNum);
        return cal.getTime();
    }

    /**
     * 根据月数获取日期
     *
     * @param date     原日期
     * @param monthNum 月数
     * @return 计算后的日期
     */
    public static Date addMonthNum(Date date, int monthNum) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, monthNum);
        return cal.getTime();
    }

    /**
     * 根据秒获取时间
     *
     * @param timestampString
     * @param formats
     * @return
     */
    public static String TimeStamp2Date(String timestampString, String formats) {
        Long timestamp = Long.parseLong(timestampString) * 1000;
        String date = new java.text.SimpleDateFormat(formats).format(new java.util.Date(timestamp));
        return date;
    }

    /**
     * 计算两个日期之间相差的天数
     *
     * @param smDate 较小的时间
     * @param bDate  较大的时间
     * @return 相差天数
     */
    public static Integer getDaysBetween(Date smDate, Date bDate) {
        Integer days = null;
        try {
            smDate = parse(format(smDate, YYYY_MM_DD), YYYY_MM_DD);
            bDate = parse(format(bDate, YYYY_MM_DD), YYYY_MM_DD);
            Calendar cal = Calendar.getInstance();
            cal.setTime(smDate);
            long time1 = cal.getTimeInMillis();
            cal.setTime(bDate);
            long time2 = cal.getTimeInMillis();
            long between_days = (time2 - time1) / (1000 * 3600 * 24);
            days = Integer.parseInt(String.valueOf(between_days));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return days;
    }

    /**
     * 计算两个日期之间相差的天数
     *
     * @param smDate 较小的时间
     * @param bDate  较大的时间
     * @return 相差天数
     */
    public static Integer getDaysBetween(String smDate, String bDate) {
        Integer days = null;
        try {
            days = getDaysBetween(parse(smDate, YYYY_MM_DD), parse(bDate, YYYY_MM_DD));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return days;
    }

    /**
     * 计算和当前时间相差天数
     *
     * @param date 需要计算的时间
     * @return 相差天数
     */
    public static Integer getDaysBetweenNow(String date) {
        if (StringUtils.isNullOrEmpty(date)) {
            return null;
        }
        Integer days = null;
        try {
            days = getDaysBetween(new Date(), parse(date, YYYY_MM_DD));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return days;
    }

    /**
     * 计算年龄
     *
     * @param birthDay 出生日期
     * @return 年龄
     */
    public static Integer getAge(Date birthDay) {
        Calendar cal = Calendar.getInstance();
        if (cal.before(birthDay)) {
            throw new IllegalArgumentException(
                    "The birthDay is before Now.It's unbelievable!");
        }
        int yearNow = cal.get(Calendar.YEAR);
        int monthNow = cal.get(Calendar.MONTH);
        int dayOfMonthNow = cal.get(Calendar.DAY_OF_MONTH);
        cal.setTime(birthDay);
        int yearBirth = cal.get(Calendar.YEAR);
        int monthBirth = cal.get(Calendar.MONTH);
        int dayOfMonthBirth = cal.get(Calendar.DAY_OF_MONTH);
        int age = yearNow - yearBirth;
        if (monthNow <= monthBirth) {
            if (monthNow == monthBirth) {
                if (dayOfMonthNow < dayOfMonthBirth) age--;
            } else {
                age--;
            }
        }
        return age;
    }

    /**
     * 计算年龄
     *
     * @param birthDay 出生日期
     * @return 年龄
     */
    public static Integer getAge(String birthDay) {
        if (StringUtils.isNullOrEmpty(birthDay)) {
            return null;
        }
        return getAge(parse(birthDay, YYYY_MM_DD));
    }
}
