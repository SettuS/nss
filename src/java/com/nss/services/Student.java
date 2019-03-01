package com.nss.services;


import com.dao.dbconnect;
import java.sql.Statement;


public class Student {
    
    private String name;
    private String dept;
    private String shift;
    private String rollno;
    private String dob;
    private String gender;
    private String Community;
    private Long aadharno;
    private String parentname;
    private String contactaddress;
    private String permanentaddress;
    private Long whatsapp;
    private Long mobile;
    private String bloodgroup;
    private String talent;
    private String aoi;
    private String eos;
    private String participate;
    private String collegehostel;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public String getRollno() {
        return rollno;
    }

    public void setRollno(String rollno) {
        this.rollno = rollno;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCommunity() {
        return Community;
    }

    public void setCommunity(String Community) {
        this.Community = Community;
    }

    public Long getAadharno() {
        return aadharno;
    }

    public void setAadharno(Long aadharno) {
        this.aadharno = aadharno;
    }

    public String getParentname() {
        return parentname;
    }

    public void setParentname(String parentname) {
        this.parentname = parentname;
    }

    public String getContactaddress() {
        return contactaddress;
    }

    public void setContactaddress(String contactaddress) {
        this.contactaddress = contactaddress;
    }

    public String getPermanentaddress() {
        return permanentaddress;
    }

    public void setPermanentaddress(String permanentaddress) {
        this.permanentaddress = permanentaddress;
    }

    public Long getWhatsappno() {
        return whatsapp;
    }

    public void setWhatsappno(Long whatsapp) {
        this.whatsapp = whatsapp;
    }

    public Long getMobileno() {
        return mobile;
    }
 
    public void setMobileno(Long mobile) {
        this.mobile = mobile;
    }

    public String getBloodgroup() {
        return bloodgroup;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    public String getTalent() {
        return talent;
    }

    public void setTalent(String talent) {
        this.talent = talent;
    }

    public String getAoi() {
        return aoi;
    }

    public void setAoi(String aoi) {
        this.aoi = aoi;
    }

    public String getEos() {
        return eos;
    }

    public void setEos(String eos) {
        this.eos = eos;
    }

    public String getParticipate() {
        return participate;
    }

    public void setParticipate(String participate) {
        this.participate = participate;
    }

    public String getCollegehostel() {
        return collegehostel;
    }

    public void setCollegehostel(String collegehostel) {
        this.collegehostel = collegehostel;
    }

    public boolean save() {
        try{
             Statement st = dbconnect.getConnection();
             int res = st.executeUpdate("insert into student(rollno,name,department,gender,dob,shift)"
                     + " values('"+getRollno()+"','"+getName()+"','"+getDept()+"','"+getGender()+"','"+getDob()+"','"+getShift()+"') ");
             
             int res2 = st.executeUpdate("insert into student_details(community,aadharno,parentname,contactaddress,permanentaddress,whatsappno,mobileno,bloodgroup,talent,aoi,eos,participate,collegehostel,rollno) values('"+getCommunity()+"','"+getAadharno()+"','"+getParentname()+"','"+getContactaddress()+"','"+getPermanentaddress()+"','"+getWhatsappno()+"','"+getMobileno()+"','"+getBloodgroup()+"','"+getTalent()+"','"+getAoi()+"','"+getEos()+"','"+getParticipate()+"','"+getCollegehostel()+"','"+getRollno()+"') ");
                   
            if((res>=0)&&(res2>=0)){
                System.out.println("registration successful");
                return true;
            }else{
                System.out.println("Error with registration");
                return false;
            }
          
        }catch(Exception e){
            System.out.print(e);
        }
    return false;
    }
    
            
    
        
}

