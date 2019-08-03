package xyz.nuze.model;

import java.math.BigDecimal;
import java.util.Date;

public class Booking {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.house_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer houseId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.host_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer hostId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.client_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer clientId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.check_in
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Date checkIn;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.check_out
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Date checkOut;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.adults
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer adults;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.children
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer children;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.rooms
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer rooms;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.create_time
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Date createTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.update_time
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Date updateTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.isReview
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private Integer isreview;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column booking.price
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    private BigDecimal price;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.id
     *
     * @return the value of booking.id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */

    private String picUrl;

    private Integer reviewsCount;

    private String brifeInfor;

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public Integer getReviewsCount() {
        return reviewsCount;
    }

    public void setReviewsCount(Integer reviewsCount) {
        this.reviewsCount = reviewsCount;
    }

    public String getBrifeInfor() {
        return brifeInfor;
    }

    public void setBrifeInfor(String brifeInfor) {
        this.brifeInfor = brifeInfor;
    }

    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.id
     *
     * @param id the value for booking.id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.house_id
     *
     * @return the value of booking.house_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getHouseId() {
        return houseId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.house_id
     *
     * @param houseId the value for booking.house_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.host_id
     *
     * @return the value of booking.host_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getHostId() {
        return hostId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.host_id
     *
     * @param hostId the value for booking.host_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setHostId(Integer hostId) {
        this.hostId = hostId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.client_id
     *
     * @return the value of booking.client_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getClientId() {
        return clientId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.client_id
     *
     * @param clientId the value for booking.client_id
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.check_in
     *
     * @return the value of booking.check_in
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Date getCheckIn() {
        return checkIn;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.check_in
     *
     * @param checkIn the value for booking.check_in
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.check_out
     *
     * @return the value of booking.check_out
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Date getCheckOut() {
        return checkOut;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.check_out
     *
     * @param checkOut the value for booking.check_out
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.adults
     *
     * @return the value of booking.adults
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getAdults() {
        return adults;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.adults
     *
     * @param adults the value for booking.adults
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setAdults(Integer adults) {
        this.adults = adults;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.children
     *
     * @return the value of booking.children
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getChildren() {
        return children;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.children
     *
     * @param children the value for booking.children
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setChildren(Integer children) {
        this.children = children;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.rooms
     *
     * @return the value of booking.rooms
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getRooms() {
        return rooms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.rooms
     *
     * @param rooms the value for booking.rooms
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setRooms(Integer rooms) {
        this.rooms = rooms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.create_time
     *
     * @return the value of booking.create_time
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.create_time
     *
     * @param createTime the value for booking.create_time
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.update_time
     *
     * @return the value of booking.update_time
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.update_time
     *
     * @param updateTime the value for booking.update_time
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.isReview
     *
     * @return the value of booking.isReview
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public Integer getIsreview() {
        return isreview;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.isReview
     *
     * @param isreview the value for booking.isReview
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setIsreview(Integer isreview) {
        this.isreview = isreview;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column booking.price
     *
     * @return the value of booking.price
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column booking.price
     *
     * @param price the value for booking.price
     *
     * @mbg.generated Fri Aug 02 21:04:25 AEST 2019
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}