package xyz.nuze.model;

import java.math.BigDecimal;

public class House {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.house_id
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer houseId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.city
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private String city;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.host_id
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer hostId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.lat
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Double lat;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.lng
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Double lng;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.brife_infor
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private String brifeInfor;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.description
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private String description;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.bedrooms
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer bedrooms;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.bathrooms
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer bathrooms;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.beds
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer beds;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.guest_capacity
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer guestCapacity;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.neighborhood
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private String neighborhood;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.preview_amenities
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private String previewAmenities;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.reviews_count
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Integer reviewsCount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.star_rating
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private Float starRating;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.space_type
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private String spaceType;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.price
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private BigDecimal price;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.clean_fee
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    private BigDecimal cleanFee;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.house_id
     *
     * @return the value of house.house_id
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getHouseId() {
        return houseId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.house_id
     *
     * @param houseId the value for house.house_id
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.city
     *
     * @return the value of house.city
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public String getCity() {
        return city;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.city
     *
     * @param city the value for house.city
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.host_id
     *
     * @return the value of house.host_id
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getHostId() {
        return hostId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.host_id
     *
     * @param hostId the value for house.host_id
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setHostId(Integer hostId) {
        this.hostId = hostId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.lat
     *
     * @return the value of house.lat
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Double getLat() {
        return lat;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.lat
     *
     * @param lat the value for house.lat
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setLat(Double lat) {
        this.lat = lat;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.lng
     *
     * @return the value of house.lng
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Double getLng() {
        return lng;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.lng
     *
     * @param lng the value for house.lng
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setLng(Double lng) {
        this.lng = lng;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.brife_infor
     *
     * @return the value of house.brife_infor
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public String getBrifeInfor() {
        return brifeInfor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.brife_infor
     *
     * @param brifeInfor the value for house.brife_infor
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setBrifeInfor(String brifeInfor) {
        this.brifeInfor = brifeInfor == null ? null : brifeInfor.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.description
     *
     * @return the value of house.description
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.description
     *
     * @param description the value for house.description
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.bedrooms
     *
     * @return the value of house.bedrooms
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getBedrooms() {
        return bedrooms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.bedrooms
     *
     * @param bedrooms the value for house.bedrooms
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setBedrooms(Integer bedrooms) {
        this.bedrooms = bedrooms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.bathrooms
     *
     * @return the value of house.bathrooms
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getBathrooms() {
        return bathrooms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.bathrooms
     *
     * @param bathrooms the value for house.bathrooms
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setBathrooms(Integer bathrooms) {
        this.bathrooms = bathrooms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.beds
     *
     * @return the value of house.beds
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getBeds() {
        return beds;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.beds
     *
     * @param beds the value for house.beds
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setBeds(Integer beds) {
        this.beds = beds;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.guest_capacity
     *
     * @return the value of house.guest_capacity
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getGuestCapacity() {
        return guestCapacity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.guest_capacity
     *
     * @param guestCapacity the value for house.guest_capacity
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setGuestCapacity(Integer guestCapacity) {
        this.guestCapacity = guestCapacity;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.neighborhood
     *
     * @return the value of house.neighborhood
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public String getNeighborhood() {
        return neighborhood;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.neighborhood
     *
     * @param neighborhood the value for house.neighborhood
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood == null ? null : neighborhood.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.preview_amenities
     *
     * @return the value of house.preview_amenities
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public String getPreviewAmenities() {
        return previewAmenities;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.preview_amenities
     *
     * @param previewAmenities the value for house.preview_amenities
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setPreviewAmenities(String previewAmenities) {
        this.previewAmenities = previewAmenities == null ? null : previewAmenities.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.reviews_count
     *
     * @return the value of house.reviews_count
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Integer getReviewsCount() {
        return reviewsCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.reviews_count
     *
     * @param reviewsCount the value for house.reviews_count
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setReviewsCount(Integer reviewsCount) {
        this.reviewsCount = reviewsCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.star_rating
     *
     * @return the value of house.star_rating
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public Float getStarRating() {
        return starRating;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.star_rating
     *
     * @param starRating the value for house.star_rating
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setStarRating(Float starRating) {
        this.starRating = starRating;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.space_type
     *
     * @return the value of house.space_type
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public String getSpaceType() {
        return spaceType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.space_type
     *
     * @param spaceType the value for house.space_type
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setSpaceType(String spaceType) {
        this.spaceType = spaceType == null ? null : spaceType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.price
     *
     * @return the value of house.price
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.price
     *
     * @param price the value for house.price
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.clean_fee
     *
     * @return the value of house.clean_fee
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public BigDecimal getCleanFee() {
        return cleanFee;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.clean_fee
     *
     * @param cleanFee the value for house.clean_fee
     *
     * @mbg.generated Tue Jul 16 22:06:49 AEST 2019
     */
    public void setCleanFee(BigDecimal cleanFee) {
        this.cleanFee = cleanFee;
    }
}