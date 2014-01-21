package epost

class PostCard {
    String senderfirst;
    String sendersurname;
    String senderemail;
    String message;
    String name;
    String address1;
    String address2;
    String city;
    String postcode;
    String country;
    String image

    static constraints = {
        senderfirst(size:1..15, blank:false)
        sendersurname(size:3..15, blank:false)
        senderemail(size:3..25, blank:false)
        message(size:1..256, blank:false)
        name(size:3..64, blank:false)
        address1(size:3..25, blank:false)
        address2(size:3..25)
        city(size:3..25, blank:false)
        postcode(size:3..25, blank:false)
        country(size:3..25, blank:false)
        image(blank:false)
    }
}