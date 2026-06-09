package com.emranhss.GarmentsManagement.entity;

import jakarta.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "riders")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Rider {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;



    private String vehicleType;

    private String vehicleNumber;

    private String nidNumber;

    //Zone Management-------------

    // Rider Recover Multiple Thanas; One Thana Have Multiple Riders.

    //Creates A Riders Zone Join table Automitaccaly.

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "rider_zones",
            joinColumns = @JoinColumn(name = "rider_id"),
            InversJoinColumns=@JoinColumn(name = "police_station_id")
    )

    private Set<PoliceStation> zones=new HashSet<>();




    private Double rating = 0.0;

    private Integer totalDeliveries = 0;

    private Double totalEarnings = 0.0;

    private Boolean active = true;

    private String image;


    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

}
