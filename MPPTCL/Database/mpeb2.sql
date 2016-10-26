/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.1.30-community : Database - mpeb2
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`mpeb2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mpeb2`;

/*Table structure for table `a_vector_group_and_polarity_test` */

DROP TABLE IF EXISTS `a_vector_group_and_polarity_test`;

CREATE TABLE `a_vector_group_and_polarity_test` (
  `Voltage_given_1u_1v` float DEFAULT NULL,
  `Voltage_given_1v_1w` float DEFAULT NULL,
  `Voltage_given_1w_2u` float DEFAULT NULL,
  `Voltages_measured_1u_1n` float DEFAULT NULL,
  `Voltages_measured_1n_2n` float DEFAULT NULL,
  `Voltages_measured_1u_2n` float DEFAULT NULL,
  `Voltages_measured_1v_2v` float DEFAULT NULL,
  `Voltages_measured_1w_2w` float DEFAULT NULL,
  `Voltages_measured_1v_2w` float DEFAULT NULL,
  `Voltages_measured_1w_2v` float DEFAULT NULL,
  `OTI_Phase` varchar(50) DEFAULT NULL,
  `OTI_Alarm` varchar(50) DEFAULT NULL,
  `OTI_Trip` varchar(50) DEFAULT NULL,
  `OTI_Fan_auto_start` varchar(50) DEFAULT NULL,
  `WTI_HV_HV_Phase` varchar(50) DEFAULT NULL,
  `WTI_HV_Alarm` varchar(50) DEFAULT NULL,
  `WTI_HV_Trip` varchar(50) DEFAULT NULL,
  `WTI_HV_Fan_auto_start` varchar(50) DEFAULT NULL,
  `WTI_IV_IV Phase` varchar(50) DEFAULT NULL,
  `WTI_IV_Alarm` varchar(50) DEFAULT NULL,
  `WTI_IV_Trip` varchar(50) DEFAULT NULL,
  `WTI_IV_Fan_auto_start` varchar(50) DEFAULT NULL,
  `WTI_LV_LV_Phase` varchar(50) DEFAULT NULL,
  `WTI_LV_Alarm` varchar(50) DEFAULT NULL,
  `WTI_LV_Trip` varchar(50) DEFAULT NULL,
  `WTI_LV_Fan_auto_start` varchar(50) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `a_vector_group_and_polarity_test` */

/*Table structure for table `annunciation_test_details` */

DROP TABLE IF EXISTS `annunciation_test_details`;

CREATE TABLE `annunciation_test_details` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  `Date_of_Teting` varchar(20) DEFAULT NULL,
  `Reason_of_testing_maintenance` varchar(255) DEFAULT NULL,
  `OTA` varchar(255) DEFAULT NULL,
  `OTT` varchar(255) DEFAULT NULL,
  `WTA` varchar(255) DEFAULT NULL,
  `WTT` varchar(255) DEFAULT NULL,
  `PRV1_trip` varchar(255) DEFAULT NULL,
  `PRV2_trip` varchar(255) DEFAULT NULL,
  `PRV3_trip` varchar(255) DEFAULT NULL,
  `OLTC_buchhoiztrip` varchar(255) DEFAULT NULL,
  `main_buchhalarm` varchar(255) DEFAULT NULL,
  `main_bucchtrip` varchar(255) DEFAULT NULL,
  `low_oil_level_alarm` varchar(255) DEFAULT NULL,
  `differential_trip` varchar(255) DEFAULT NULL,
  `HV_over_current_trip` varchar(255) DEFAULT NULL,
  `IV_over_current_and_EF_trip` varchar(255) DEFAULT NULL,
  `master_trip` varchar(255) DEFAULT NULL,
  `CB_low_air_pressure_alarm` varchar(255) DEFAULT NULL,
  `CB_low_SF6_alarm` varchar(255) DEFAULT NULL,
  `Remarks_and_name_of_Engineer` varchar(255) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `annunciation_test_details` */

/*Table structure for table `breathing_arrangment_maintenance` */

DROP TABLE IF EXISTS `breathing_arrangment_maintenance`;

CREATE TABLE `breathing_arrangment_maintenance` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(100) DEFAULT NULL,
  `changing_of_Silica_gel_of_Breather` varchar(255) DEFAULT NULL,
  `Inflating_of_aircell_in_conservator` varchar(255) DEFAULT NULL,
  `Making_up_oil_level_in_main_conservator` varchar(255) DEFAULT NULL,
  `maintenance_of_MOG` varchar(255) DEFAULT NULL,
  `attending_problem_in_pipeline_conc_conservator_and_main_tank` varchar(255) DEFAULT NULL,
  `attending_problems_in_radiators` varchar(255) DEFAULT NULL,
  `thermosyphon_maintenance` varchar(255) DEFAULT NULL,
  `maintenance_of_main_Buchholz_relay` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_Engineer` varchar(255) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `breathing_arrangment_maintenance` */

/*Table structure for table `bushing_detail` */

DROP TABLE IF EXISTS `bushing_detail`;

CREATE TABLE `bushing_detail` (
  `Type1u` varchar(127) DEFAULT NULL,
  `Type1v` varchar(127) DEFAULT NULL,
  `Type1w` varchar(127) DEFAULT NULL,
  `Typenb` varchar(127) DEFAULT NULL,
  `Type2u` varchar(127) DEFAULT NULL,
  `Type2v` varchar(127) DEFAULT NULL,
  `Type2w` varchar(127) DEFAULT NULL,
  `Type3u` varchar(127) DEFAULT NULL,
  `Type3v` varchar(127) DEFAULT NULL,
  `Type3w` varchar(127) DEFAULT NULL,
  `ref_s1u` varchar(127) DEFAULT NULL,
  `ref_s1v` varchar(127) DEFAULT NULL,
  `ref_s1w` varchar(127) DEFAULT NULL,
  `ref_snb` varchar(127) DEFAULT NULL,
  `ref_s2u` varchar(127) DEFAULT NULL,
  `ref_s2v` varchar(127) DEFAULT NULL,
  `ref_s2w` varchar(127) DEFAULT NULL,
  `ref_s3u` varchar(127) DEFAULT NULL,
  `ref_s3v` varchar(127) DEFAULT NULL,
  `ref_s3w` varchar(127) DEFAULT NULL,
  `volt1u` varchar(127) DEFAULT NULL,
  `volt1v` varchar(127) DEFAULT NULL,
  `volt1w` varchar(127) DEFAULT NULL,
  `voltnb` varchar(127) DEFAULT NULL,
  `volt2u` varchar(127) DEFAULT NULL,
  `volt2v` varchar(127) DEFAULT NULL,
  `volt2w` varchar(127) DEFAULT NULL,
  `volt3u` varchar(127) DEFAULT NULL,
  `volt3v` varchar(127) DEFAULT NULL,
  `volt3w` varchar(127) DEFAULT NULL,
  `cur1u` varchar(127) DEFAULT NULL,
  `cur1v` varchar(127) DEFAULT NULL,
  `cur1w` varchar(127) DEFAULT NULL,
  `curnb` varchar(127) DEFAULT NULL,
  `cur2u` varchar(127) DEFAULT NULL,
  `cur2v` varchar(127) DEFAULT NULL,
  `cur2w` varchar(127) DEFAULT NULL,
  `cur3u` varchar(127) DEFAULT NULL,
  `cur3v` varchar(127) DEFAULT NULL,
  `cur3w` varchar(127) DEFAULT NULL,
  `sn1u` varchar(127) DEFAULT NULL,
  `sn1v` varchar(127) DEFAULT NULL,
  `sn1w` varchar(127) DEFAULT NULL,
  `snnb` varchar(127) DEFAULT NULL,
  `sn2u` varchar(127) DEFAULT NULL,
  `sn2v` varchar(127) DEFAULT NULL,
  `sn2w` varchar(127) DEFAULT NULL,
  `sn3u` varchar(127) DEFAULT NULL,
  `sn3v` varchar(127) DEFAULT NULL,
  `sn3w` varchar(127) DEFAULT NULL,
  `imp1u` varchar(127) DEFAULT NULL,
  `imp1v` varchar(127) DEFAULT NULL,
  `imp1w` varchar(127) DEFAULT NULL,
  `impnb` varchar(127) DEFAULT NULL,
  `imp2u` varchar(127) DEFAULT NULL,
  `imp2v` varchar(127) DEFAULT NULL,
  `imp2w` varchar(127) DEFAULT NULL,
  `imp3u` varchar(127) DEFAULT NULL,
  `imp3v` varchar(127) DEFAULT NULL,
  `imp3w` varchar(127) DEFAULT NULL,
  `impwithvolt1u` varchar(127) DEFAULT NULL,
  `impwithvolt1v` varchar(127) DEFAULT NULL,
  `impwithvolt1w` varchar(127) DEFAULT NULL,
  `impwithvoltnb` varchar(127) DEFAULT NULL,
  `impwithvolt2u` varchar(127) DEFAULT NULL,
  `impwithvolt2v` varchar(127) DEFAULT NULL,
  `impwithvolt2w` varchar(127) DEFAULT NULL,
  `impwithvolt3u` varchar(127) DEFAULT NULL,
  `impwithvolt3v` varchar(127) DEFAULT NULL,
  `impwithvolt3w` varchar(127) DEFAULT NULL,
  `minvolt1u` varchar(127) DEFAULT NULL,
  `minvolt1v` varchar(127) DEFAULT NULL,
  `minvolt1w` varchar(127) DEFAULT NULL,
  `minvoltnb` varchar(127) DEFAULT NULL,
  `minvolt2u` varchar(127) DEFAULT NULL,
  `minvolt2v` varchar(127) DEFAULT NULL,
  `minvolt2w` varchar(127) DEFAULT NULL,
  `minvolt3u` varchar(127) DEFAULT NULL,
  `minvolt3v` varchar(127) DEFAULT NULL,
  `minvolt3w` varchar(127) DEFAULT NULL,
  `lvl1u` varchar(127) DEFAULT NULL,
  `lvl1v` varchar(127) DEFAULT NULL,
  `lvl1w` varchar(127) DEFAULT NULL,
  `lvlnb` varchar(127) DEFAULT NULL,
  `lvl2u` varchar(127) DEFAULT NULL,
  `lvl2v` varchar(127) DEFAULT NULL,
  `lvl2w` varchar(127) DEFAULT NULL,
  `lvl3u` varchar(127) DEFAULT NULL,
  `lvl3v` varchar(127) DEFAULT NULL,
  `lvl3w` varchar(127) DEFAULT NULL,
  `rat1u` varchar(127) DEFAULT NULL,
  `rat1v` varchar(127) DEFAULT NULL,
  `rat1w` varchar(127) DEFAULT NULL,
  `ratnb` varchar(127) DEFAULT NULL,
  `rat2u` varchar(127) DEFAULT NULL,
  `rat2v` varchar(127) DEFAULT NULL,
  `rat2w` varchar(127) DEFAULT NULL,
  `rat3u` varchar(127) DEFAULT NULL,
  `rat3v` varchar(127) DEFAULT NULL,
  `rat3w` varchar(127) DEFAULT NULL,
  `freq1u` varchar(127) DEFAULT NULL,
  `freq1v` varchar(127) DEFAULT NULL,
  `freq1w` varchar(127) DEFAULT NULL,
  `freqnb` varchar(127) DEFAULT NULL,
  `freq2u` varchar(127) DEFAULT NULL,
  `freq2v` varchar(127) DEFAULT NULL,
  `freq2w` varchar(127) DEFAULT NULL,
  `freq3u` varchar(127) DEFAULT NULL,
  `freq3v` varchar(127) DEFAULT NULL,
  `freq3w` varchar(127) DEFAULT NULL,
  `dis1u` varchar(127) DEFAULT NULL,
  `dis1v` varchar(12712) DEFAULT NULL,
  `dis1w` varchar(7127) DEFAULT NULL,
  `disnb` varchar(127) DEFAULT NULL,
  `dis2u` varchar(127) DEFAULT NULL,
  `dis2v` varchar(127) DEFAULT NULL,
  `dis2w` varchar(127) DEFAULT NULL,
  `dis3u` varchar(127) DEFAULT NULL,
  `dis3v` varchar(127) DEFAULT NULL,
  `dis3w` varchar(127) DEFAULT NULL,
  `year1u` varchar(127) DEFAULT NULL,
  `year1v` varchar(127) DEFAULT NULL,
  `year1w` varchar(127) DEFAULT NULL,
  `yearnb` varchar(127) DEFAULT NULL,
  `year2u` varchar(127) DEFAULT NULL,
  `year2v` varchar(127) DEFAULT NULL,
  `year2w` varchar(127) DEFAULT NULL,
  `year3u` varchar(127) DEFAULT NULL,
  `year3v` varchar(127) DEFAULT NULL,
  `year3w` varchar(127) DEFAULT NULL,
  `max1u` varchar(127) DEFAULT NULL,
  `max1v` varchar(127) DEFAULT NULL,
  `max1w` varchar(127) DEFAULT NULL,
  `maxnb` varchar(127) DEFAULT NULL,
  `max2u` varchar(127) DEFAULT NULL,
  `max2v` varchar(127) DEFAULT NULL,
  `max2w` varchar(127) DEFAULT NULL,
  `max3u` varchar(127) DEFAULT NULL,
  `max3v` varchar(127) DEFAULT NULL,
  `max3w` varchar(127) DEFAULT NULL,
  `style1u` varchar(127) DEFAULT NULL,
  `style1v` varchar(127) DEFAULT NULL,
  `style1w` varchar(127) DEFAULT NULL,
  `stylenb` varchar(127) DEFAULT NULL,
  `style2u` varchar(127) DEFAULT NULL,
  `style2v` varchar(127) DEFAULT NULL,
  `style2w` varchar(127) DEFAULT NULL,
  `style3u` varchar(127) DEFAULT NULL,
  `style3v` varchar(127) DEFAULT NULL,
  `style3w` varchar(127) DEFAULT NULL,
  `oil1u` varchar(127) DEFAULT NULL,
  `oil1v` varchar(127) DEFAULT NULL,
  `oil1w` varchar(127) DEFAULT NULL,
  `oilnb` varchar(127) DEFAULT NULL,
  `oil2u` varchar(127) DEFAULT NULL,
  `oil2v` varchar(127) DEFAULT NULL,
  `oil2w` varchar(127) DEFAULT NULL,
  `oil3u` varchar(127) DEFAULT NULL,
  `oil3v` varchar(127) DEFAULT NULL,
  `oil3w` varchar(127) DEFAULT NULL,
  `weight1u` varchar(127) DEFAULT NULL,
  `weight1v` varchar(127) DEFAULT NULL,
  `weight1w` varchar(127) DEFAULT NULL,
  `weightnb` varchar(127) DEFAULT NULL,
  `weight2u` varchar(127) DEFAULT NULL,
  `weight2v` varchar(127) DEFAULT NULL,
  `weight2w` varchar(127) DEFAULT NULL,
  `weight3u` varchar(127) DEFAULT NULL,
  `weight3v` varchar(127) DEFAULT NULL,
  `weight3w` varchar(127) DEFAULT NULL,
  `test1u` varchar(127) DEFAULT NULL,
  `test1v` varchar(127) DEFAULT NULL,
  `test1w` varchar(127) DEFAULT NULL,
  `testnb` varchar(127) DEFAULT NULL,
  `test2u` varchar(127) DEFAULT NULL,
  `test2v` varchar(127) DEFAULT NULL,
  `test2w` varchar(127) DEFAULT NULL,
  `test3u` varchar(127) DEFAULT NULL,
  `test3v` varchar(127) DEFAULT NULL,
  `test3w` varchar(127) DEFAULT NULL,
  `cap1u` varchar(127) DEFAULT NULL,
  `cap1v` varchar(127) DEFAULT NULL,
  `cap1w` varchar(127) DEFAULT NULL,
  `capnb` varchar(127) DEFAULT NULL,
  `cap2u` varchar(127) DEFAULT NULL,
  `cap2v` varchar(127) DEFAULT NULL,
  `cap2w` varchar(127) DEFAULT NULL,
  `cap3u` varchar(127) DEFAULT NULL,
  `cap3v` varchar(127) DEFAULT NULL,
  `cap3w` varchar(127) DEFAULT NULL,
  `tan1u` varchar(127) DEFAULT NULL,
  `tan1v` varchar(127) DEFAULT NULL,
  `tan1w` varchar(127) DEFAULT NULL,
  `tannb` varchar(127) DEFAULT NULL,
  `tan2u` varchar(127) DEFAULT NULL,
  `tan2v` varchar(127) DEFAULT NULL,
  `tan2w` varchar(127) DEFAULT NULL,
  `tan3u` varchar(127) DEFAULT NULL,
  `tan3v` varchar(127) DEFAULT NULL,
  `tan3w` varchar(127) DEFAULT NULL,
  `ir1u` varchar(127) DEFAULT NULL,
  `ir1v` varchar(127) DEFAULT NULL,
  `ir1w` varchar(127) DEFAULT NULL,
  `irnb` varchar(127) DEFAULT NULL,
  `ir2u` varchar(127) DEFAULT NULL,
  `ir2v` varchar(127) DEFAULT NULL,
  `ir2w` varchar(127) DEFAULT NULL,
  `ir3u` varchar(127) DEFAULT NULL,
  `ir3v` varchar(127) DEFAULT NULL,
  `ir3w` varchar(127) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bushing_detail` */

insert  into `bushing_detail`(`Type1u`,`Type1v`,`Type1w`,`Typenb`,`Type2u`,`Type2v`,`Type2w`,`Type3u`,`Type3v`,`Type3w`,`ref_s1u`,`ref_s1v`,`ref_s1w`,`ref_snb`,`ref_s2u`,`ref_s2v`,`ref_s2w`,`ref_s3u`,`ref_s3v`,`ref_s3w`,`volt1u`,`volt1v`,`volt1w`,`voltnb`,`volt2u`,`volt2v`,`volt2w`,`volt3u`,`volt3v`,`volt3w`,`cur1u`,`cur1v`,`cur1w`,`curnb`,`cur2u`,`cur2v`,`cur2w`,`cur3u`,`cur3v`,`cur3w`,`sn1u`,`sn1v`,`sn1w`,`snnb`,`sn2u`,`sn2v`,`sn2w`,`sn3u`,`sn3v`,`sn3w`,`imp1u`,`imp1v`,`imp1w`,`impnb`,`imp2u`,`imp2v`,`imp2w`,`imp3u`,`imp3v`,`imp3w`,`impwithvolt1u`,`impwithvolt1v`,`impwithvolt1w`,`impwithvoltnb`,`impwithvolt2u`,`impwithvolt2v`,`impwithvolt2w`,`impwithvolt3u`,`impwithvolt3v`,`impwithvolt3w`,`minvolt1u`,`minvolt1v`,`minvolt1w`,`minvoltnb`,`minvolt2u`,`minvolt2v`,`minvolt2w`,`minvolt3u`,`minvolt3v`,`minvolt3w`,`lvl1u`,`lvl1v`,`lvl1w`,`lvlnb`,`lvl2u`,`lvl2v`,`lvl2w`,`lvl3u`,`lvl3v`,`lvl3w`,`rat1u`,`rat1v`,`rat1w`,`ratnb`,`rat2u`,`rat2v`,`rat2w`,`rat3u`,`rat3v`,`rat3w`,`freq1u`,`freq1v`,`freq1w`,`freqnb`,`freq2u`,`freq2v`,`freq2w`,`freq3u`,`freq3v`,`freq3w`,`dis1u`,`dis1v`,`dis1w`,`disnb`,`dis2u`,`dis2v`,`dis2w`,`dis3u`,`dis3v`,`dis3w`,`year1u`,`year1v`,`year1w`,`yearnb`,`year2u`,`year2v`,`year2w`,`year3u`,`year3v`,`year3w`,`max1u`,`max1v`,`max1w`,`maxnb`,`max2u`,`max2v`,`max2w`,`max3u`,`max3v`,`max3w`,`style1u`,`style1v`,`style1w`,`stylenb`,`style2u`,`style2v`,`style2w`,`style3u`,`style3v`,`style3w`,`oil1u`,`oil1v`,`oil1w`,`oilnb`,`oil2u`,`oil2v`,`oil2w`,`oil3u`,`oil3v`,`oil3w`,`weight1u`,`weight1v`,`weight1w`,`weightnb`,`weight2u`,`weight2v`,`weight2w`,`weight3u`,`weight3v`,`weight3w`,`test1u`,`test1v`,`test1w`,`testnb`,`test2u`,`test2v`,`test2w`,`test3u`,`test3v`,`test3w`,`cap1u`,`cap1v`,`cap1w`,`capnb`,`cap2u`,`cap2v`,`cap2w`,`cap3u`,`cap3v`,`cap3w`,`tan1u`,`tan1v`,`tan1w`,`tannb`,`tan2u`,`tan2v`,`tan2w`,`tan3u`,`tan3v`,`tan3w`,`ir1u`,`ir1v`,`ir1w`,`irnb`,`ir2u`,`ir2v`,`ir2w`,`ir3u`,`ir3v`,`ir3w`,`div`,`stn`,`s_no`) values ('1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('1','2','3','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL);

/*Table structure for table `calibration_of_temp_indicator` */

DROP TABLE IF EXISTS `calibration_of_temp_indicator`;

CREATE TABLE `calibration_of_temp_indicator` (
  `s_no` int(11) DEFAULT NULL,
  `oil_tem_indicator_done_on` varchar(100) DEFAULT NULL,
  `winding_temp_indicator_hv` varchar(20) DEFAULT NULL,
  `winding_temp_indicator_hv_done_on` varchar(100) DEFAULT NULL,
  `winding_temp_indicator_iv` varchar(20) DEFAULT NULL,
  `winding_temp_indicator_iv_done_on` varchar(100) DEFAULT NULL,
  `winding_temp_indicator_lv` varchar(20) DEFAULT NULL,
  `winding_temp_indicator_lv_done_on` varchar(100) DEFAULT NULL,
  `HV_Current_in_Ampere_1u_1v_1u` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1u_1v_1v` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1u_1v_1w` int(11) DEFAULT NULL,
  `IV_Current_in_Ampere_1u_1v_2u` int(11) DEFAULT NULL,
  `IV_Current_in_Ampere_1u_1v_2v` int(11) DEFAULT NULL,
  `IV_Current_in_Ampere_1u_1v_2w` int(11) DEFAULT NULL,
  `2N-SC Terminal_1u_1v_N_connected_to_earth` varchar(50) DEFAULT NULL,
  `2N-SC Terminal_1u_1v_N_not_connected_to_earth` varchar(50) DEFAULT NULL,
  `WTICT_Current_1u_1v_hv` int(11) DEFAULT NULL,
  `WTICT_Current_1u_1v_iv` int(11) DEFAULT NULL,
  `WTICT_Current_1u_1v_lv` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1v_1w_1u` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1v_1w_1v` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1v_1w_1w` int(11) DEFAULT NULL,
  `IV_Current_in_Ampere_1v_1w_2u` int(11) DEFAULT NULL,
  `IV_Current_in_Ampere_1v_1w_2v` int(11) DEFAULT NULL,
  `IV_Current_in_Ampere_1v_1w_2w` int(11) DEFAULT NULL,
  `2N-SC Terminal_1v_1w_N_connected_to_earth` varchar(50) DEFAULT NULL,
  `2N-SC Terminal_1v_1w_N_not_connected_to_earth` varchar(50) DEFAULT NULL,
  `WTICT_Current_1v_1w_hv` int(11) DEFAULT NULL,
  `WTICT_Current_1v_1w_iv` int(11) DEFAULT NULL,
  `WTICT_Current_1v_1w_lv` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1w_1u_1u` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1w_1u_1v` int(11) DEFAULT NULL,
  `HV_Current_in_Ampere_1w_1u_1w` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calibration_of_temp_indicator` */

/*Table structure for table `capacitance_and_tan_delta_measurements_of_cts` */

DROP TABLE IF EXISTS `capacitance_and_tan_delta_measurements_of_cts`;

CREATE TABLE `capacitance_and_tan_delta_measurements_of_cts` (
  `s_no` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `reasonoftesting` varchar(255) DEFAULT NULL,
  `HV_R_cap_pf` varchar(255) DEFAULT NULL,
  `HV_R_tan_dalta` varchar(255) DEFAULT NULL,
  `HV_Y_cap_pf` varchar(255) DEFAULT NULL,
  `HV_Y_tan_dalta` varchar(255) DEFAULT NULL,
  `HV_B_cap_pf` varchar(255) DEFAULT NULL,
  `HV_B_tan_dalta` varchar(255) DEFAULT NULL,
  `IV_R_cap_pf` varchar(255) DEFAULT NULL,
  `IV_R_tan_dalta` varchar(255) DEFAULT NULL,
  `IV_Y_cap_pf` varchar(255) DEFAULT NULL,
  `IV_Y_tan_dalta` varchar(255) DEFAULT NULL,
  `IV_B_cap_pf` varchar(255) DEFAULT NULL,
  `IV_B_tan_dalta` varchar(255) DEFAULT NULL,
  `LV_R_cap_pf` varchar(255) DEFAULT NULL,
  `LV_R_tan_dalta` varchar(255) DEFAULT NULL,
  `LV_Y_cap_pf` varchar(255) DEFAULT NULL,
  `LV_Y_tan_dalta` varchar(255) DEFAULT NULL,
  `LV_B_cap_pf` varchar(255) DEFAULT NULL,
  `LV_B_tan_dalta` varchar(255) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `capacitance_and_tan_delta_measurements_of_cts` */

/*Table structure for table `checking_of_neutral_earthing_arrangement` */

DROP TABLE IF EXISTS `checking_of_neutral_earthing_arrangement`;

CREATE TABLE `checking_of_neutral_earthing_arrangement` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(100) DEFAULT NULL,
  `reason_for_maintenance` varchar(750) DEFAULT NULL,
  `condition_of_1st_neutral_earthing_conductor_of_HV_Neutral` varchar(750) DEFAULT NULL,
  `condition_of_2nd_neutral_earthing_conductor_of_HV_Neutral` varchar(750) DEFAULT NULL,
  `condition_of_1st_neutral_earthing_conductor_of_LV_Neutral` varchar(750) DEFAULT NULL,
  `condition_of_2nd_neutral_earthing_conductor_of_LV_Neutral` varchar(750) DEFAULT NULL,
  `condition_of_clamps_of_all_four_neutral_earthing_conductors` varchar(750) DEFAULT NULL,
  `condition_of_clamps_and_earth_flats_of_LA_earthing_at_earth_pits` varchar(750) DEFAULT NULL,
  `condition_of_clamps_and_coductors_of_ransformer_body_earthing` varchar(750) DEFAULT NULL,
  `remarks_and_name_of_Engineer` varchar(750) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `checking_of_neutral_earthing_arrangement` */

/*Table structure for table `controlling_assistant_engineer_testing_division` */

DROP TABLE IF EXISTS `controlling_assistant_engineer_testing_division`;

CREATE TABLE `controlling_assistant_engineer_testing_division` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `Name_of_assistant_engineer` varchar(255) DEFAULT NULL,
  `name_of_sub-station` varchar(255) DEFAULT NULL,
  `testing_division` varchar(255) DEFAULT NULL,
  `period_from` varchar(255) DEFAULT NULL,
  `period_to` varchar(255) DEFAULT NULL,
  `remarks_major_activity` varchar(255) DEFAULT NULL,
  KEY `S.No` (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `controlling_assistant_engineer_testing_division` */

/*Table structure for table `d1_1` */

DROP TABLE IF EXISTS `d1_1`;

CREATE TABLE `d1_1` (
  `Tap_no` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3W_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3U_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3V_N` varchar(50) DEFAULT NULL,
  `Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3W_N` varchar(50) DEFAULT NULL,
  `s_no` varchar(50) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d1_1` */

insert  into `d1_1`(`Tap_no`,`Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1U_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1V_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1W_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1U_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1V_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1W_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1U_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1V_N`,`Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1W_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2U_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2V_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2W_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2U_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2V_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2W_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2U_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2V_N`,`Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2W_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3U_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3V_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3W_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3U_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3V_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3W_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3U_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3V_N`,`Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3W_N`,`s_no`,`div`,`stn`) values ('1','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('1','12','12','12','12','13','131','123','15','15','','12','12','12','12','12','1','12','2','12','12','12','123','23','23','2','','',NULL,NULL,NULL),('','1','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','7','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('1','1','2','3','4','5','6','7','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('1','','45','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('1','14','','','','','','','','','','','','','','','','','','00','','','','','','','','',NULL,NULL,NULL);

/*Table structure for table `d1_2` */

DROP TABLE IF EXISTS `d1_2`;

CREATE TABLE `d1_2` (
  `Tap_No_HV_1` varchar(50) DEFAULT NULL,
  `1U_N_V` varchar(100) DEFAULT NULL,
  `1U_C` varchar(100) DEFAULT NULL,
  `1V_1W_V` varchar(100) DEFAULT NULL,
  `1V_C` varchar(100) DEFAULT NULL,
  `1W_1U_V` varchar(100) DEFAULT NULL,
  `1W_C` varchar(100) DEFAULT NULL,
  `2U_N` varchar(100) DEFAULT NULL,
  `2U` varchar(100) DEFAULT NULL,
  `2V_N` varchar(100) DEFAULT NULL,
  `2V` varchar(100) DEFAULT NULL,
  `2W_N` varchar(100) DEFAULT NULL,
  `2W` varchar(100) DEFAULT NULL,
  `2U_2V` varchar(100) DEFAULT NULL,
  `2U_C` varchar(100) DEFAULT NULL,
  `2V_2W` varchar(100) DEFAULT NULL,
  `2V_C` varchar(1001) DEFAULT NULL,
  `2W_2U` varchar(100) DEFAULT NULL,
  `2W_C` varchar(100) DEFAULT NULL,
  `1U_1V` varchar(100) DEFAULT NULL,
  `1U` varchar(100) DEFAULT NULL,
  `1V_1W` varchar(100) DEFAULT NULL,
  `1V` varchar(100) DEFAULT NULL,
  `1W_1U` varchar(100) DEFAULT NULL,
  `1W` varchar(100) DEFAULT NULL,
  `3U_3V` varchar(100) DEFAULT NULL,
  `3U` varchar(100) DEFAULT NULL,
  `3V_3W` varchar(100) DEFAULT NULL,
  `3V` varchar(100) DEFAULT NULL,
  `3W_3U` varchar(100) DEFAULT NULL,
  `3W` varchar(100) DEFAULT NULL,
  `Tap_No_HV_2` varchar(1000) DEFAULT NULL,
  `Tap_No_IV_1` varchar(100) DEFAULT NULL,
  `Tap_No_IV_2` varchar(100) DEFAULT NULL,
  `Tap_No_LV_1` varchar(100) DEFAULT NULL,
  `s_no` varchar(100) DEFAULT NULL,
  `div` varchar(100) DEFAULT NULL,
  `stn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d1_2` */

insert  into `d1_2`(`Tap_No_HV_1`,`1U_N_V`,`1U_C`,`1V_1W_V`,`1V_C`,`1W_1U_V`,`1W_C`,`2U_N`,`2U`,`2V_N`,`2V`,`2W_N`,`2W`,`2U_2V`,`2U_C`,`2V_2W`,`2V_C`,`2W_2U`,`2W_C`,`1U_1V`,`1U`,`1V_1W`,`1V`,`1W_1U`,`1W`,`3U_3V`,`3U`,`3V_3W`,`3V`,`3W_3U`,`3W`,`Tap_No_HV_2`,`Tap_No_IV_1`,`Tap_No_IV_2`,`Tap_No_LV_1`,`s_no`,`div`,`stn`) values ('1','2','3','4','5','6','8','7','9','10','11','12','13','14','15','16','17','18','19','10','10','20','21','22','23','24','25','26','27','28','29','30','31','32','33',NULL,NULL,NULL),('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','','7','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','','','','','','','','','','7','','','','','','','','','','','','','','','','','','0000',NULL,NULL,NULL),('','1','2','3','4','5','6','','','8','','','','','','','','','','','','','','','','7','','','0000','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','','','','','','','','','','','8','','','','','','','','','','','','7','','','0000','','0000',NULL,NULL,NULL),('12345','1','2','3','4','5','6','','','','','','','','0000','','','','','','','','','','','','8','','0000','','','','','7','',NULL,NULL,NULL);

/*Table structure for table `d2_1` */

DROP TABLE IF EXISTS `d2_1`;

CREATE TABLE `d2_1` (
  `Voltage_1U_1V` varchar(100) DEFAULT NULL,
  `1U_1U_1V` varchar(100) DEFAULT NULL,
  `1V_1U_1V` varchar(100) DEFAULT NULL,
  `1W_1U_1V` varchar(100) DEFAULT NULL,
  `Voltage_1V_1W` varchar(100) DEFAULT NULL,
  `1U_1V_1W` varchar(100) DEFAULT NULL,
  `1V_1V_1W` varchar(100) DEFAULT NULL,
  `1W_1V_1W` varchar(100) DEFAULT NULL,
  `Voltage_1W_1U` varchar(100) DEFAULT NULL,
  `1U_1W_1U` varchar(100) DEFAULT NULL,
  `1V_1W_1U` varchar(100) DEFAULT NULL,
  `1W_1W_1U` varchar(100) DEFAULT NULL,
  `Voltage_1U_1V_2_1U_1V` varchar(100) DEFAULT NULL,
  `Current_in_HV_1U_1U_1V` varchar(100) DEFAULT NULL,
  `Current_in_HV_1V_1U_1V` varchar(100) DEFAULT NULL,
  `Current_in_HV_1W_1U_1V` varchar(100) DEFAULT NULL,
  `Current_in_LV_1U_1U_1V` varchar(100) DEFAULT NULL,
  `Current_in_LV_1V_1U_1V` varchar(100) DEFAULT NULL,
  `Current_in_LV_1W_1U_1V` varchar(100) DEFAULT NULL,
  `Voltage_1V_1W_2_1V_1W` varchar(100) DEFAULT NULL,
  `Current_in_HV_1U_1V_1W` varchar(100) DEFAULT NULL,
  `Current_in_HV_1V_1V_1W` varchar(100) DEFAULT NULL,
  `Current_in_HV_1W_1V_1W` varchar(100) DEFAULT NULL,
  `Current_in_LV_1U_1V_1W` varchar(100) DEFAULT NULL,
  `Current_in_LV_1V_1V_1W` varchar(100) DEFAULT NULL,
  `Current_in_LV_1W_1V_1W` varchar(100) DEFAULT NULL,
  `Voltage_1W_1U_2_1W_1U` varchar(100) DEFAULT NULL,
  `Current_in_HV_1U_1W_1U` varchar(100) DEFAULT NULL,
  `Current_in_HV_1V_1W_1U` varchar(100) DEFAULT NULL,
  `Current_in_HV_1W_1W_1U` varchar(100) DEFAULT NULL,
  `Current_in_LV_1U_1W_1U` varchar(100) DEFAULT NULL,
  `Current_in_LV_1V_1W_1U` varchar(100) DEFAULT NULL,
  `Current_in_LV_1W_1W_1U` varchar(100) DEFAULT NULL,
  `s_no` varchar(100) DEFAULT NULL,
  `div` varchar(100) DEFAULT NULL,
  `stn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d2_1` */

insert  into `d2_1`(`Voltage_1U_1V`,`1U_1U_1V`,`1V_1U_1V`,`1W_1U_1V`,`Voltage_1V_1W`,`1U_1V_1W`,`1V_1V_1W`,`1W_1V_1W`,`Voltage_1W_1U`,`1U_1W_1U`,`1V_1W_1U`,`1W_1W_1U`,`Voltage_1U_1V_2_1U_1V`,`Current_in_HV_1U_1U_1V`,`Current_in_HV_1V_1U_1V`,`Current_in_HV_1W_1U_1V`,`Current_in_LV_1U_1U_1V`,`Current_in_LV_1V_1U_1V`,`Current_in_LV_1W_1U_1V`,`Voltage_1V_1W_2_1V_1W`,`Current_in_HV_1U_1V_1W`,`Current_in_HV_1V_1V_1W`,`Current_in_HV_1W_1V_1W`,`Current_in_LV_1U_1V_1W`,`Current_in_LV_1V_1V_1W`,`Current_in_LV_1W_1V_1W`,`Voltage_1W_1U_2_1W_1U`,`Current_in_HV_1U_1W_1U`,`Current_in_HV_1V_1W_1U`,`Current_in_HV_1W_1W_1U`,`Current_in_LV_1U_1W_1U`,`Current_in_LV_1V_1W_1U`,`Current_in_LV_1W_1W_1U`,`s_no`,`div`,`stn`) values ('1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','14','18','19','02','21','21','23','21','23','25','26','27','28','29','30','31','31',NULL,NULL,NULL),('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','14','18','19','02','21','21','23','21','23','25','26','27','28','29','30','31','31',NULL,NULL,NULL),('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','14','18','19','02','21','21','23','21','23','25','26','27','28','29','30','31','31',NULL,NULL,NULL),('000000','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','14','18','19','02','100000000','21','23','21','23','0000','26','27','28','29','30','31','31',NULL,NULL,NULL);

/*Table structure for table `d2_2` */

DROP TABLE IF EXISTS `d2_2`;

CREATE TABLE `d2_2` (
  `Vector_Group_as_per_name_plate` varchar(50) DEFAULT NULL,
  `Voltage_1_1U_N` varchar(50) DEFAULT NULL,
  `Voltage_2_1U_2U` varchar(50) DEFAULT NULL,
  `Voltage_3_1V_3V` varchar(50) DEFAULT NULL,
  `Voltage_1_3W_N` varchar(50) DEFAULT NULL,
  `Voltage_2_2U_N` varchar(50) DEFAULT NULL,
  `Voltage_3_3W_2V` varchar(50) DEFAULT NULL,
  `Voltage_1_1U_3W` varchar(50) DEFAULT NULL,
  `Voltage_2_1W_3V` varchar(50) DEFAULT NULL,
  `Voltage_3_3W_2W` varchar(50) DEFAULT NULL,
  `s_no` varchar(50) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d2_2` */

insert  into `d2_2`(`Vector_Group_as_per_name_plate`,`Voltage_1_1U_N`,`Voltage_2_1U_2U`,`Voltage_3_1V_3V`,`Voltage_1_3W_N`,`Voltage_2_2U_N`,`Voltage_3_3W_2V`,`Voltage_1_1U_3W`,`Voltage_2_1W_3V`,`Voltage_3_3W_2W`,`s_no`,`div`,`stn`) values ('1','2','3','4','5','6','1',NULL,NULL,NULL,NULL,NULL,NULL),('no plate','1','2','4','3','4','5','6','7','8',NULL,NULL,NULL),('','','','','','','','','','',NULL,NULL,NULL),('','1','2','3','4','5','6','7','8','9',NULL,NULL,NULL),('','1','2','3','4','5','6','7','8','9',NULL,NULL,NULL),('','1','2','3','4','5','6','7','8','95',NULL,NULL,NULL),('1234','1','2','3','4','5','6','7','8','95',NULL,NULL,NULL);

/*Table structure for table `d3` */

DROP TABLE IF EXISTS `d3`;

CREATE TABLE `d3` (
  `Vector_Group_as_per_name_plate` varchar(50) DEFAULT NULL,
  `1U_1V` varchar(50) DEFAULT NULL,
  `1U_1W` varchar(50) DEFAULT NULL,
  `1W_1V` varchar(50) DEFAULT NULL,
  `1U_2V` varchar(50) DEFAULT NULL,
  `1U_2W` varchar(50) DEFAULT NULL,
  `1W_2V` varchar(50) DEFAULT NULL,
  `1V_2V` varchar(50) DEFAULT NULL,
  `1V_2W` varchar(50) DEFAULT NULL,
  `2W_1W` varchar(50) DEFAULT NULL,
  `2N_1N` varchar(50) DEFAULT NULL,
  `1U_1N` varchar(50) DEFAULT NULL,
  `1U_2N` varchar(50) DEFAULT NULL,
  `s_no` varchar(50) DEFAULT NULL,
  `div` varchar(50) DEFAULT NULL,
  `stn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `d3` */

insert  into `d3`(`Vector_Group_as_per_name_plate`,`1U_1V`,`1U_1W`,`1W_1V`,`1U_2V`,`1U_2W`,`1W_2V`,`1V_2V`,`1V_2W`,`2W_1W`,`2N_1N`,`1U_1N`,`1U_2N`,`s_no`,`div`,`stn`) values ('','54546','','','','','','','','','','','',NULL,NULL,NULL);

/*Table structure for table `details_of_oil_placement_and_reconditioning_works` */

DROP TABLE IF EXISTS `details_of_oil_placement_and_reconditioning_works`;

CREATE TABLE `details_of_oil_placement_and_reconditioning_works` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(750) DEFAULT NULL,
  `purpose` varchar(750) DEFAULT NULL,
  `parameters_temperature` varchar(255) DEFAULT NULL,
  `parameters_vaccum` varchar(255) DEFAULT NULL,
  `from_date_time` varchar(255) DEFAULT NULL,
  `to_date_time` varchar(255) DEFAULT NULL,
  `duration_hrs` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(750) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `details_of_oil_placement_and_reconditioning_works` */

insert  into `details_of_oil_placement_and_reconditioning_works`(`S_No`,`activity`,`purpose`,`parameters_temperature`,`parameters_vaccum`,`from_date_time`,`to_date_time`,`duration_hrs`,`remarks_and_name_of_engineer`,`div`,`stn`) values (1,'zx','','','','','','','',NULL,NULL);

/*Table structure for table `details_of_other_equipment_in_the_bay` */

DROP TABLE IF EXISTS `details_of_other_equipment_in_the_bay`;

CREATE TABLE `details_of_other_equipment_in_the_bay` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `details_of_other_equipment_in_the_bay` */

/*Table structure for table `details_of_replacement_of_equipment_installed_in_transformer_bay` */

DROP TABLE IF EXISTS `details_of_replacement_of_equipment_installed_in_transformer_bay`;

CREATE TABLE `details_of_replacement_of_equipment_installed_in_transformer_bay` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_initial_commisioning_of_old_equipment` varchar(20) DEFAULT NULL,
  `date_of_replacement_and_commissioning_of_new_equipment` varchar(20) DEFAULT NULL,
  `reason_of_replacement` varchar(255) DEFAULT NULL,
  `old_name` varchar(255) DEFAULT NULL,
  `old_make` varchar(255) DEFAULT NULL,
  `old_S.No` varchar(255) DEFAULT NULL,
  `old_detail` varchar(255) DEFAULT NULL,
  `new_name` varchar(255) DEFAULT NULL,
  `new_make` varchar(255) DEFAULT NULL,
  `new_S.No` varchar(255) DEFAULT NULL,
  `new_detail` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  KEY `S.No` (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `details_of_replacement_of_equipment_installed_in_transformer_bay` */

/*Table structure for table `details_of_spares_tools_tackles_etc` */

DROP TABLE IF EXISTS `details_of_spares_tools_tackles_etc`;

CREATE TABLE `details_of_spares_tools_tackles_etc` (
  `Jacks_Make` varchar(50) DEFAULT NULL,
  `Jacks_Year_of_Manufacture` int(4) DEFAULT NULL,
  `Jacks_Capacity` float DEFAULT NULL,
  `Jacks_Type` varchar(50) DEFAULT NULL,
  `Set_of_Squares_Size_1` varchar(50) DEFAULT NULL,
  `Set_of_Squares_Size_2` varchar(50) DEFAULT NULL,
  `Set_of_Squares_Size_3` varchar(50) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `details_of_spares_tools_tackles_etc` */

insert  into `details_of_spares_tools_tackles_etc`(`Jacks_Make`,`Jacks_Year_of_Manufacture`,`Jacks_Capacity`,`Jacks_Type`,`Set_of_Squares_Size_1`,`Set_of_Squares_Size_2`,`Set_of_Squares_Size_3`,`div`,`stn`,`s_no`) values ('123',2012,5,'50','50','type 1','type2',NULL,NULL,NULL);

/*Table structure for table `details_of_testing _measuring_and_maintainance_equipments` */

DROP TABLE IF EXISTS `details_of_testing _measuring_and_maintainance_equipments`;

CREATE TABLE `details_of_testing _measuring_and_maintainance_equipments` (
  `Drawn_against_sanctioned_estimate_No` int(11) DEFAULT NULL,
  `S_No_1` int(11) DEFAULT NULL,
  `Name_of_Items` varchar(50) DEFAULT NULL,
  `S_No_2` int(11) DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `Qty` int(8) DEFAULT NULL,
  `Other_Details_such_as_Model_No` varchar(100) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `details_of_testing _measuring_and_maintainance_equipments` */

/*Table structure for table `differential_relay_testing_details` */

DROP TABLE IF EXISTS `differential_relay_testing_details`;

CREATE TABLE `differential_relay_testing_details` (
  `make` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date_of_ins` varchar(255) DEFAULT NULL,
  `HV` varchar(255) DEFAULT NULL,
  `IV` varchar(255) DEFAULT NULL,
  `LV` varchar(255) DEFAULT NULL,
  `rec_current` varchar(255) DEFAULT NULL,
  `date_testing` varchar(255) DEFAULT NULL,
  `reason_testing` varchar(255) DEFAULT NULL,
  `found_current` varchar(255) DEFAULT NULL,
  `current_after_adjustment` varchar(255) DEFAULT NULL,
  `changes` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `differential_relay_testing_details` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` varchar(55) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  `contact` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

/*Table structure for table `erection_commisionising_engineers_of_manufacturer` */

DROP TABLE IF EXISTS `erection_commisionising_engineers_of_manufacturer`;

CREATE TABLE `erection_commisionising_engineers_of_manufacturer` (
  `Date_From_To_Erection_Details` varchar(100) DEFAULT NULL,
  `Date_From_To_Commisionising_Details` varchar(100) DEFAULT NULL,
  `No_of_Persons_Erection_Details` int(11) DEFAULT NULL,
  `No_of_Persons_Commisionising_Details` int(11) DEFAULT NULL,
  `Name_and_Desig_of_Comp_Eng_Erection_Details` varchar(255) DEFAULT NULL,
  `Name_and_Desig_of_Comp_Eng_Commisionising Details` varchar(255) DEFAULT NULL,
  `No_of_Days_Recommended_as_Order_Erection_Details` int(11) DEFAULT NULL,
  `No_of_Days_Recommended_as_Order_Commisionising_Details` int(11) DEFAULT NULL,
  `Amount_of_Bill_Erection_Details` float DEFAULT NULL,
  `Amount_of_Bill_Commisionising_Details` float DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `erection_commisionising_engineers_of_manufacturer` */

/*Table structure for table `f` */

DROP TABLE IF EXISTS `f`;

CREATE TABLE `f` (
  `I_V_WINDING_AVERAGE_OIL_TEMP_2U_1N` double DEFAULT NULL,
  `I_V_WINDING_AVERAGE_OIL_TEMP_2V_1N` double DEFAULT NULL,
  `I_V_WINDING_AVERAGE_OIL_TEMP_2W_1N` double DEFAULT NULL,
  `I_V_WINDING_AVERAGE_OIL_TEMP_Rav_at_tavg` double DEFAULT NULL,
  `I_V_WINDING_AVERAGE_OIL_TEMP_Rav_at_75C` double DEFAULT NULL,
  `L_VL_WINDING_3U_3W` double DEFAULT NULL,
  `L_VL_WINDING_3V_3U` double DEFAULT NULL,
  `L_VL_WINDING_3W_3V` double DEFAULT NULL,
  `L_VL_WINDING_Rav_at_tav` double DEFAULT NULL,
  `L_VL_WINDING_Phase_to_Phase` double DEFAULT NULL,
  `L_VL_WINDING_Phase_Value` double DEFAULT NULL,
  `Resistance_in_Ohm_for_series_1U_2U` double DEFAULT NULL,
  `Resistance_in_Ohm_for_series_1V_2V` double DEFAULT NULL,
  `Resistance_in_Ohm_for_series_1W_2W` double DEFAULT NULL,
  `Resistance_in_Ohm_for_series_Rav_at_tav` double DEFAULT NULL,
  `Resistance_in_Ohm_for_series_Rav_at_75C` double DEFAULT NULL,
  `Result_in_Ohm_for_HV_to_natural_winding_1U_1W` double DEFAULT NULL,
  `Result_in_Ohm_for_HV_to_natural_winding_1V_1U` double DEFAULT NULL,
  `Result_in_Ohm_for_HV_to_natural_winding_1W_1V` double DEFAULT NULL,
  `Result_in_Ohm_for_HV_to_natural_winding_Rav_at_tav` double DEFAULT NULL,
  `Result_in_Ohm_for_HV_to_natural_winding_Phase_to_Phase` double DEFAULT NULL,
  `Result_in_Ohm_for_HV_to_natural_winding_Phase_Value` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `f` */

/*Table structure for table `f_1` */

DROP TABLE IF EXISTS `f_1`;

CREATE TABLE `f_1` (
  `2U_1N` varchar(255) DEFAULT NULL,
  `2V_1N` varchar(255) DEFAULT NULL,
  `2W_1N` varchar(255) DEFAULT NULL,
  `Rav_at_tavg` varchar(255) DEFAULT NULL,
  `Rav_at_75_C` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `f_1` */

/*Table structure for table `f_2` */

DROP TABLE IF EXISTS `f_2`;

CREATE TABLE `f_2` (
  `3U_3W` varchar(255) DEFAULT NULL,
  `3V_3U` varchar(255) DEFAULT NULL,
  `3W_3V` varchar(255) DEFAULT NULL,
  `Rav_at_tav` varchar(255) DEFAULT NULL,
  `Phase_to_Phase` varchar(255) DEFAULT NULL,
  `Phase_Value` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `f_2` */

/*Table structure for table `f_3` */

DROP TABLE IF EXISTS `f_3`;

CREATE TABLE `f_3` (
  `1U_2U` varchar(255) DEFAULT NULL,
  `1V_2V` varchar(255) DEFAULT NULL,
  `1W_2W` varchar(255) DEFAULT NULL,
  `Rav_at_tav` varchar(255) DEFAULT NULL,
  `Rav_at_75_C` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `f_3` */

/*Table structure for table `f_4` */

DROP TABLE IF EXISTS `f_4`;

CREATE TABLE `f_4` (
  `1U_1W` varchar(255) DEFAULT NULL,
  `1V_1U` varchar(255) DEFAULT NULL,
  `1W_1V` varchar(255) DEFAULT NULL,
  `Rav_at_tav` varchar(255) DEFAULT NULL,
  `Phase_to_Phase` varchar(255) DEFAULT NULL,
  `Phase_Value` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `f_4` */

/*Table structure for table `g` */

DROP TABLE IF EXISTS `g`;

CREATE TABLE `g` (
  `Top_Oil_Temperature` double DEFAULT NULL,
  `CC_Merger` double DEFAULT NULL,
  `Winding_Temperature` double DEFAULT NULL,
  `CC_Make` varchar(50) DEFAULT NULL,
  `Test_Voltage` double DEFAULT NULL,
  `S_no` varchar(50) DEFAULT NULL,
  `HV_LV_plus_E_15` double DEFAULT NULL,
  `HV_LV_plus_E_60` double DEFAULT NULL,
  `HV_LV_plus_E_600` double DEFAULT NULL,
  `HV_LV_plus_E_rav_rms` double DEFAULT NULL,
  `HV_LV_plus_E_rrms_rav` double DEFAULT NULL,
  `HV_LV_plus_E_converted_at_80c` double DEFAULT NULL,
  `LV_LV_plus_E_15` double DEFAULT NULL,
  `LV_LV_plus_E_60` double DEFAULT NULL,
  `LV_LV_plus_E_600` double DEFAULT NULL,
  `LV_LV_plus_E_rav_rms` double DEFAULT NULL,
  `LV_LV_plus_E_rrms_rav` double DEFAULT NULL,
  `LV_LV_plus_E_converted_at_80c` double DEFAULT NULL,
  `HV_LV_15` double DEFAULT NULL,
  `HV_LV_60` double DEFAULT NULL,
  `HV_LV_600` double DEFAULT NULL,
  `HV_LV_rav_rms` double DEFAULT NULL,
  `HV_LV_rrms_rav` double DEFAULT NULL,
  `HV_LV_converted_at_80c` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `g` */

/*Table structure for table `general_information_of_transformer` */

DROP TABLE IF EXISTS `general_information_of_transformer`;

CREATE TABLE `general_information_of_transformer` (
  `Name_of_substation` varchar(255) DEFAULT NULL,
  `Make_of_Transformer` varchar(255) DEFAULT NULL,
  `Voltage_Ratio_Source` varchar(255) DEFAULT NULL,
  `Boards_Order_no` varchar(255) DEFAULT NULL,
  `Boards_Date` varchar(55) DEFAULT NULL,
  `Sr_No_of_Transformer` varchar(55) DEFAULT NULL,
  `Cost_of_Transformer` varchar(255) DEFAULT NULL,
  `Date_of_Commissioning` varchar(55) DEFAULT NULL,
  `Guarantee_period` varchar(255) DEFAULT NULL,
  `Total_oil_filled_in` varchar(255) DEFAULT NULL,
  `Impedance_at_normal_Tap` varchar(255) DEFAULT NULL,
  `Total_No_of_Taps_Normal_Tap` varchar(255) DEFAULT NULL,
  `Voltage_variation` varchar(255) DEFAULT NULL,
  `of_step_Voltage` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `general_information_of_transformer` */

insert  into `general_information_of_transformer`(`Name_of_substation`,`Make_of_Transformer`,`Voltage_Ratio_Source`,`Boards_Order_no`,`Boards_Date`,`Sr_No_of_Transformer`,`Cost_of_Transformer`,`Date_of_Commissioning`,`Guarantee_period`,`Total_oil_filled_in`,`Impedance_at_normal_Tap`,`Total_No_of_Taps_Normal_Tap`,`Voltage_variation`,`of_step_Voltage`,`div`,`stn`,`s_no`) values ('indore','indore','500',NULL,'2013-08-05','12','','','','','','','','','5','nothing','nothing'),('bhopal','','',NULL,'2013-08-15','','','','','','','','','','5','nothing','nothing'),('shahpura','','',NULL,'','','','','','','','','','','5','nothing','nothing'),('indore','','',NULL,'','','','','','','','','','','5','nothing','nothing'),('Indore','Indore 220v','2:1',NULL,'2013-08-05','2','Rs.50,000','2013-08-06','10 years','abc','xyz','abc','xyz ','abc','5','nothing','nothing'),('Indore','Indore 220v','2:1',NULL,'2013-08-05','2','Rs.50,000','2013-08-06','10 years','abc','xyz','abc','xyz ','abc','5','nothing','nothing'),('Indore','Indore 220v','2:1','500','2013-08-05','2','Rs.50,000','2013-08-06','10 years','abc','xyz','abc','xyz ','abc','5','nothing','nothing');

/*Table structure for table `general_maintenance` */

DROP TABLE IF EXISTS `general_maintenance`;

CREATE TABLE `general_maintenance` (
  `S_No` int(11) DEFAULT NULL,
  `date` varchar(12) DEFAULT NULL,
  `reason_for_maintenance_Routine_forced` varchar(1000) DEFAULT NULL,
  `details_of_works_carried_out` varchar(1000) DEFAULT NULL,
  `remarks_and_name_of_Engineer` varchar(1000) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `general_maintenance` */

/*Table structure for table `h` */

DROP TABLE IF EXISTS `h`;

CREATE TABLE `h` (
  `Megger_Make` varchar(50) DEFAULT NULL,
  `S_No` varchar(50) DEFAULT NULL,
  `KV` varchar(50) DEFAULT NULL,
  `Terminals` varchar(256) DEFAULT NULL,
  `End_Frame_Core_clamp_Tank` varchar(50) DEFAULT NULL,
  `Core_Tank` varchar(50) DEFAULT NULL,
  `End_Frame_Core` varchar(50) DEFAULT NULL,
  `Between_core_and_end_frame` varchar(50) DEFAULT NULL,
  `Between_core_and_Tank` varchar(50) DEFAULT NULL,
  `Between_core_and_frame_Core_clamp_and_Main_Tank` varchar(50) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `h` */

/*Table structure for table `hv_and_iv_magnetic_balance_test_at_normal_tap_no` */

DROP TABLE IF EXISTS `hv_and_iv_magnetic_balance_test_at_normal_tap_no`;

CREATE TABLE `hv_and_iv_magnetic_balance_test_at_normal_tap_no` (
  `1U_N_1U_N` double DEFAULT NULL,
  `1V_N_1U_N` double DEFAULT NULL,
  `1W_N_1U_N` double DEFAULT NULL,
  `2U_N_1U_N` double DEFAULT NULL,
  `2V_N_1U_N` double DEFAULT NULL,
  `2W_N_1U_N` double DEFAULT NULL,
  `1U_N_1V_N` double DEFAULT NULL,
  `1V_N_1V_N` double DEFAULT NULL,
  `1W_N_1V_N` double DEFAULT NULL,
  `2U_N_1V_N` double DEFAULT NULL,
  `2V_N_1V_N` double DEFAULT NULL,
  `2W_N_1V_N` double DEFAULT NULL,
  `1U_N_1W_N` double DEFAULT NULL,
  `1V_N_1W_N` double DEFAULT NULL,
  `1W_N_1W_N` double DEFAULT NULL,
  `2U_N_1W_N` double DEFAULT NULL,
  `2V_N_1W_N` double DEFAULT NULL,
  `2W_N_1W_N` double DEFAULT NULL,
  `voltage_1` double DEFAULT NULL,
  `voltage_2` double DEFAULT NULL,
  `voltage_3` double DEFAULT NULL,
  `tap_no` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hv_and_iv_magnetic_balance_test_at_normal_tap_no` */

insert  into `hv_and_iv_magnetic_balance_test_at_normal_tap_no`(`1U_N_1U_N`,`1V_N_1U_N`,`1W_N_1U_N`,`2U_N_1U_N`,`2V_N_1U_N`,`2W_N_1U_N`,`1U_N_1V_N`,`1V_N_1V_N`,`1W_N_1V_N`,`2U_N_1V_N`,`2V_N_1V_N`,`2W_N_1V_N`,`1U_N_1W_N`,`1V_N_1W_N`,`1W_N_1W_N`,`2U_N_1W_N`,`2V_N_1W_N`,`2W_N_1W_N`,`voltage_1`,`voltage_2`,`voltage_3`,`tap_no`,`div`,`stn`,`s_no`) values (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,'22',NULL,NULL,NULL),(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,'22',NULL,NULL,NULL),(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,'22',NULL,NULL,NULL),(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,'21',NULL,NULL,NULL);

/*Table structure for table `hv_circuit_breaker_maintenance_details` */

DROP TABLE IF EXISTS `hv_circuit_breaker_maintenance_details`;

CREATE TABLE `hv_circuit_breaker_maintenance_details` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hv_circuit_breaker_maintenance_details` */

/*Table structure for table `hv_ct _maintenance` */

DROP TABLE IF EXISTS `hv_ct _maintenance`;

CREATE TABLE `hv_ct _maintenance` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hv_ct _maintenance` */

/*Table structure for table `hv_magenetising_current_3phase_3spare_method` */

DROP TABLE IF EXISTS `hv_magenetising_current_3phase_3spare_method`;

CREATE TABLE `hv_magenetising_current_3phase_3spare_method` (
  `TAP_NO_1U_1V` int(11) DEFAULT NULL,
  `1U_PHASE_1U_1V` float DEFAULT NULL,
  `1V_PHASE_1U_1V` float DEFAULT NULL,
  `1W_PHASE_1U_1V` float DEFAULT NULL,
  `TAP_NO_1V_1W` int(11) DEFAULT NULL,
  `1U_PHASE_1V_1W` float DEFAULT NULL,
  `1V_PHASE_1V_1W` float DEFAULT NULL,
  `1W_PHASE_1V_1W` float DEFAULT NULL,
  `TAP_NO_1W_1U` int(11) DEFAULT NULL,
  `1U_PHASE_1W_1U` float DEFAULT NULL,
  `1V_PHASE_1W_1U` float DEFAULT NULL,
  `1W_PHASE_1W_1U` float DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hv_magenetising_current_3phase_3spare_method` */

insert  into `hv_magenetising_current_3phase_3spare_method`(`TAP_NO_1U_1V`,`1U_PHASE_1U_1V`,`1V_PHASE_1U_1V`,`1W_PHASE_1U_1V`,`TAP_NO_1V_1W`,`1U_PHASE_1V_1W`,`1V_PHASE_1V_1W`,`1W_PHASE_1V_1W`,`TAP_NO_1W_1U`,`1U_PHASE_1W_1U`,`1V_PHASE_1W_1U`,`1W_PHASE_1W_1U`,`div`,`stn`,`s_no`) values (10,1,2,3,4,5,9,6,5,123,5,2,'4','2',6);

/*Table structure for table `hv_magenetising_current_3phase_3wire_method` */

DROP TABLE IF EXISTS `hv_magenetising_current_3phase_3wire_method`;

CREATE TABLE `hv_magenetising_current_3phase_3wire_method` (
  `TAP_NO_1U_1V` varchar(50) DEFAULT NULL,
  `1U_PHASE_1U_1V` double DEFAULT NULL,
  `1V_PHASE_1U_1V` double DEFAULT NULL,
  `1W_PHASE_1U_1V` double DEFAULT NULL,
  `TAP_NO_1V_1W` varchar(50) DEFAULT NULL,
  `1U_PHASE_1V_1W` double DEFAULT NULL,
  `1V_PHASE_1V_1W` double DEFAULT NULL,
  `1W_PHASE_1V_1W` double DEFAULT NULL,
  `TAP_NO_1W_1U` varchar(50) DEFAULT NULL,
  `1U_PHASE_1W_1U` double DEFAULT NULL,
  `1V_PHASE_1W_1U` double DEFAULT NULL,
  `1W_PHASE_1W_1U` double DEFAULT NULL,
  `voltage_1` double DEFAULT NULL,
  `voltage_2` double DEFAULT NULL,
  `voltage_3` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hv_magenetising_current_3phase_3wire_method` */

insert  into `hv_magenetising_current_3phase_3wire_method`(`TAP_NO_1U_1V`,`1U_PHASE_1U_1V`,`1V_PHASE_1U_1V`,`1W_PHASE_1U_1V`,`TAP_NO_1V_1W`,`1U_PHASE_1V_1W`,`1V_PHASE_1V_1W`,`1W_PHASE_1V_1W`,`TAP_NO_1W_1U`,`1U_PHASE_1W_1U`,`1V_PHASE_1W_1U`,`1W_PHASE_1W_1U`,`voltage_1`,`voltage_2`,`voltage_3`,`div`,`stn`,`s_no`) values ('1',2,3,4,'5',6,7,8,'9',10,11,12,13,14,15,NULL,NULL,NULL);

/*Table structure for table `hv_magenetising_current_single_phase_method` */

DROP TABLE IF EXISTS `hv_magenetising_current_single_phase_method`;

CREATE TABLE `hv_magenetising_current_single_phase_method` (
  `TAP_NO_1U_N` varchar(50) DEFAULT NULL,
  `1U_PHASE_1U_N` double DEFAULT NULL,
  `1V_PHASE_1U_N` double DEFAULT NULL,
  `1W_PHASE_1U_N` double DEFAULT NULL,
  `TAP_NO_1V_N` varchar(50) DEFAULT NULL,
  `1U_PHASE_1V_N` double DEFAULT NULL,
  `1V_PHASE_1V_N` double DEFAULT NULL,
  `1W_PHASE_1V_N` double DEFAULT NULL,
  `TAP_NO_1W_N` varchar(50) DEFAULT NULL,
  `1U_PHASE_1W_N` double DEFAULT NULL,
  `1V_PHASE_1W_N` double DEFAULT NULL,
  `1W_PHASE_1W_N` double DEFAULT NULL,
  `voltage_1` double DEFAULT NULL,
  `voltage_2` double DEFAULT NULL,
  `voltage_3` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hv_magenetising_current_single_phase_method` */

insert  into `hv_magenetising_current_single_phase_method`(`TAP_NO_1U_N`,`1U_PHASE_1U_N`,`1V_PHASE_1U_N`,`1W_PHASE_1U_N`,`TAP_NO_1V_N`,`1U_PHASE_1V_N`,`1V_PHASE_1V_N`,`1W_PHASE_1V_N`,`TAP_NO_1W_N`,`1U_PHASE_1W_N`,`1V_PHASE_1W_N`,`1W_PHASE_1W_N`,`voltage_1`,`voltage_2`,`voltage_3`,`div`,`stn`,`s_no`) values ('1',2,3,4,'5',6,7,8,'9',10,10,11,12,13,14,'15','16',NULL);

/*Table structure for table `i` */

DROP TABLE IF EXISTS `i`;

CREATE TABLE `i` (
  `Equipment_used` varchar(250) DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `S_No` varchar(20) DEFAULT NULL,
  `Ambient` varchar(50) DEFAULT NULL,
  `Oil_Temperature` double DEFAULT NULL,
  `Test_voltage` double DEFAULT NULL,
  `S_No_1U` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_1U` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_1U` double DEFAULT NULL,
  `Tan_Delta_Bushing_1U` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_1U` double DEFAULT NULL,
  `S_No_1V` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_1V` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_1V` double DEFAULT NULL,
  `Tan_Delta_Bushing_1V` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_1V` double DEFAULT NULL,
  `S_No_1W` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_1W` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_1W` double DEFAULT NULL,
  `Tan_Delta_Bushing_1W` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_1W` double DEFAULT NULL,
  `S_No_N` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_N` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_N` double DEFAULT NULL,
  `Tan_Delta_Bushing_N` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_N` double DEFAULT NULL,
  `S_No_2U` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_2U` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_2U` double DEFAULT NULL,
  `Tan_Delta_Bushing_2U` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_2U` double DEFAULT NULL,
  `S_No_2V` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_2V` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_2V` double DEFAULT NULL,
  `Tan_Delta_Bushing_2V` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_2V` double DEFAULT NULL,
  `S_No_2W` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_2W` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_2W` double DEFAULT NULL,
  `Tan_Delta_Bushing_2W` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_2W` double DEFAULT NULL,
  `S_No_3U` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_3U` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_3U` double DEFAULT NULL,
  `Tan_Delta_Bushing_3U` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_3U` double DEFAULT NULL,
  `S_No_3V` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_3V` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_3V` double DEFAULT NULL,
  `Tan_Delta_Bushing_3V` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_3V` double DEFAULT NULL,
  `S_No_3W` int(11) DEFAULT NULL,
  `Capacitance_pf_Bushing_3W` double DEFAULT NULL,
  `Capacitance_pf_Test_Tap_to_Earth_3W` double DEFAULT NULL,
  `Tan_Delta_Bushing_3W` double DEFAULT NULL,
  `Tan_Delta_Test_Tap_to_Earth_3W` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `i` */

/*Table structure for table `induce_voltage` */

DROP TABLE IF EXISTS `induce_voltage`;

CREATE TABLE `induce_voltage` (
  `test1` varchar(127) DEFAULT NULL,
  `test2` varchar(127) DEFAULT NULL,
  `test3` varchar(127) DEFAULT NULL,
  `test4` varchar(127) DEFAULT NULL,
  `test5` varchar(127) DEFAULT NULL,
  `sup1` varchar(127) DEFAULT NULL,
  `sup2` varchar(127) DEFAULT NULL,
  `sup3` varchar(127) DEFAULT NULL,
  `sup4` varchar(127) DEFAULT NULL,
  `sup5` varchar(127) DEFAULT NULL,
  `ter1` varchar(127) DEFAULT NULL,
  `ter2` varchar(127) DEFAULT NULL,
  `ter3` varchar(127) DEFAULT NULL,
  `ter4` varchar(127) DEFAULT NULL,
  `ter5` varchar(127) DEFAULT NULL,
  `freq1` varchar(127) DEFAULT NULL,
  `freq2` varchar(127) DEFAULT NULL,
  `freq3` varchar(127) DEFAULT NULL,
  `freq4` varchar(127) DEFAULT NULL,
  `freq5` varchar(127) DEFAULT NULL,
  `time1` varchar(127) DEFAULT NULL,
  `time2` varchar(127) DEFAULT NULL,
  `time3` varchar(127) DEFAULT NULL,
  `time4` varchar(127) DEFAULT NULL,
  `time5` varchar(127) DEFAULT NULL,
  `res1` varchar(127) DEFAULT NULL,
  `res2` varchar(127) DEFAULT NULL,
  `res3` varchar(127) DEFAULT NULL,
  `res4` varchar(127) DEFAULT NULL,
  `res5` varchar(127) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `induce_voltage` */

insert  into `induce_voltage`(`test1`,`test2`,`test3`,`test4`,`test5`,`sup1`,`sup2`,`sup3`,`sup4`,`sup5`,`ter1`,`ter2`,`ter3`,`ter4`,`ter5`,`freq1`,`freq2`,`freq3`,`freq4`,`freq5`,`time1`,`time2`,`time3`,`time4`,`time5`,`res1`,`res2`,`res3`,`res4`,`res5`,`div`,`stn`,`s_no`) values ('123','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('123','','','','','133','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL),('1','11','','','','2','22','','','','3','33','','','','4','44','','','','5','55','','','','fine','good','','','',NULL,NULL,NULL),('1','11','22324','','','2','22','','','','3','33','','','','4','44','','','','5','55','','','','fine','good','','','',NULL,NULL,NULL);

/*Table structure for table `initial_mode_of_transportation_system` */

DROP TABLE IF EXISTS `initial_mode_of_transportation_system`;

CREATE TABLE `initial_mode_of_transportation_system` (
  `By_rail` varchar(50) DEFAULT NULL,
  `By_Road` varchar(50) DEFAULT NULL,
  `With_Oil` varchar(50) DEFAULT NULL,
  `Without_Oil` varchar(50) DEFAULT NULL,
  `N2_Pressure_Checked_at_Site` varchar(50) DEFAULT NULL,
  `N2_Cylinder_Returnable` varchar(50) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `initial_mode_of_transportation_system` */

insert  into `initial_mode_of_transportation_system`(`By_rail`,`By_Road`,`With_Oil`,`Without_Oil`,`N2_Pressure_Checked_at_Site`,`N2_Cylinder_Returnable`,`div`,`stn`,`s_no`) values ('1','2','3','4','5',NULL,'7','8',9);

/*Table structure for table `intertrip_test_details` */

DROP TABLE IF EXISTS `intertrip_test_details`;

CREATE TABLE `intertrip_test_details` (
  `S.No` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `reason_of_testing_maintenance_tripping` varchar(255) DEFAULT NULL,
  `trip_test_taken_through_protection_command` varchar(255) DEFAULT NULL,
  `HV_CB_tripped` varchar(255) DEFAULT NULL,
  `IV_CB_tripped` varchar(255) DEFAULT NULL,
  `LV_CB_tripped` varchar(255) DEFAULT NULL,
  `relay_indication` varchar(255) DEFAULT NULL,
  `window_indication` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `intertrip_test_details` */

/*Table structure for table `ir_values_between_core_or_end_frame_or_tank` */

DROP TABLE IF EXISTS `ir_values_between_core_or_end_frame_or_tank`;

CREATE TABLE `ir_values_between_core_or_end_frame_or_tank` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(100) DEFAULT NULL,
  `tap_no` varchar(255) DEFAULT NULL,
  `megger` varchar(255) DEFAULT NULL,
  `oil_temp` varchar(255) DEFAULT NULL,
  `IR_core_tank` varchar(255) DEFAULT NULL,
  `core_coreclamp` varchar(255) DEFAULT NULL,
  `IR_core_clamp_tank` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ir_values_between_core_or_end_frame_or_tank` */

/*Table structure for table `ir_values_details_of_transformer_i` */

DROP TABLE IF EXISTS `ir_values_details_of_transformer_i`;

CREATE TABLE `ir_values_details_of_transformer_i` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `megger_details_and_SNo` varchar(255) DEFAULT NULL,
  `oil_temp` varchar(255) DEFAULT NULL,
  `M_F` varchar(255) DEFAULT NULL,
  `routing_tripping` varchar(255) DEFAULT NULL,
  `HV_15_sec` varchar(255) DEFAULT NULL,
  `HV_60_sec` varchar(255) DEFAULT NULL,
  `HV_600_sec` varchar(255) DEFAULT NULL,
  `HV_PI_600_60_15_sec` varchar(255) DEFAULT NULL,
  `HV_IR_value_converted_at_60_C` varchar(255) DEFAULT NULL,
  `IV_15_sec` varchar(255) DEFAULT NULL,
  `IV_60_sec` varchar(255) DEFAULT NULL,
  `IV_600_sec` varchar(255) DEFAULT NULL,
  `IV_PI_600_60_15_sec` varchar(255) DEFAULT NULL,
  `IV_IR_value_converted_at_60_C` varchar(255) DEFAULT NULL,
  `LV_15_sec` varchar(255) DEFAULT NULL,
  `LV_60_sec` varchar(255) DEFAULT NULL,
  `LV_600_sec` varchar(255) DEFAULT NULL,
  `LV_PI_600_60_15_sec` varchar(255) DEFAULT NULL,
  `LV_IR_value_converted_at_60_C` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ir_values_details_of_transformer_i` */

/*Table structure for table `ir_values_details_of_transformer_ii` */

DROP TABLE IF EXISTS `ir_values_details_of_transformer_ii`;

CREATE TABLE `ir_values_details_of_transformer_ii` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `HV_LV_15_sec` varchar(255) DEFAULT NULL,
  `HV_LV_60_sec` varchar(255) DEFAULT NULL,
  `HV_LV_600_sec` varchar(255) DEFAULT NULL,
  `HV_LV_PI_600_60_15_sec` varchar(255) DEFAULT NULL,
  `HV_LV_IR_value_converted_at_60_C` varchar(255) DEFAULT NULL,
  `HV_IV_15_sec` varchar(255) DEFAULT NULL,
  `HV_IV_60_sec` varchar(255) DEFAULT NULL,
  `HV_IV_600_sec` varchar(255) DEFAULT NULL,
  `HV_IV_PI_600_60_15_sec` varchar(255) DEFAULT NULL,
  `HV_IV_IR_value_converted_at_60_C` varchar(255) DEFAULT NULL,
  `LV_IV_15_sec` varchar(255) DEFAULT NULL,
  `LV_IV_60_sec` varchar(255) DEFAULT NULL,
  `LV_IV_600_sec` varchar(255) DEFAULT NULL,
  `LV_IV_PI_600_60_15_sec` varchar(255) DEFAULT NULL,
  `remarks_name_and_sign_of_Engineer` varchar(255) DEFAULT NULL,
  `LV_IV_IR_value_converted_at_60_C` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ir_values_details_of_transformer_ii` */

/*Table structure for table `ir_values_of_bushing` */

DROP TABLE IF EXISTS `ir_values_of_bushing`;

CREATE TABLE `ir_values_of_bushing` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(16) DEFAULT NULL,
  `1U` varchar(255) DEFAULT NULL,
  `1V` varchar(255) DEFAULT NULL,
  `1W` varchar(255) DEFAULT NULL,
  `IR_N` varchar(255) DEFAULT NULL,
  `2U` varchar(255) DEFAULT NULL,
  `2V` varchar(255) DEFAULT NULL,
  `2W` varchar(255) DEFAULT NULL,
  `N` varchar(255) DEFAULT NULL,
  `3U` varchar(255) DEFAULT NULL,
  `3V` varchar(255) DEFAULT NULL,
  `3W` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ir_values_of_bushing` */

insert  into `ir_values_of_bushing`(`S_No`,`date`,`1U`,`1V`,`1W`,`IR_N`,`2U`,`2V`,`2W`,`N`,`3U`,`3V`,`3W`,`remarks_and_name_of_engineer`,`div`,`stn`) values (3,'08/08/2013','2','3','4','5','6','7','8','9','10','11','12','13','14','15'),(4,'08/14/2013','22','33','44','55','66','77','88','55','1010','1111','1212','1313',NULL,NULL),(5,'','4466','','','','','','','','','','','',NULL,NULL),(6,'','','','','','','','','','','','','',NULL,NULL);

/*Table structure for table `iv_circuit_breaker_maintenance_details` */

DROP TABLE IF EXISTS `iv_circuit_breaker_maintenance_details`;

CREATE TABLE `iv_circuit_breaker_maintenance_details` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iv_circuit_breaker_maintenance_details` */

/*Table structure for table `iv_cts_maintenance_details` */

DROP TABLE IF EXISTS `iv_cts_maintenance_details`;

CREATE TABLE `iv_cts_maintenance_details` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iv_cts_maintenance_details` */

/*Table structure for table `iv_magenetising_current_3phase_3spare_method` */

DROP TABLE IF EXISTS `iv_magenetising_current_3phase_3spare_method`;

CREATE TABLE `iv_magenetising_current_3phase_3spare_method` (
  `TAP_NO_2U_N` int(11) DEFAULT NULL,
  `2U_PHASE_2U_N` float DEFAULT NULL,
  `2V_PHASE_2U_N` float DEFAULT NULL,
  `2W_PHASE_2U_N` float DEFAULT NULL,
  `TAP_NO_2V_N` int(11) DEFAULT NULL,
  `2U_PHASE_2V_N` float DEFAULT NULL,
  `2V_PHASE_2V_N` float DEFAULT NULL,
  `2W_PHASE_2V_N` float DEFAULT NULL,
  `TAP_NO_2W_N` int(11) DEFAULT NULL,
  `2U_PHASE_2W_N` float DEFAULT NULL,
  `2V_PHASE_2W_N` float DEFAULT NULL,
  `2W_PHASE_2W_N` float DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iv_magenetising_current_3phase_3spare_method` */

insert  into `iv_magenetising_current_3phase_3spare_method`(`TAP_NO_2U_N`,`2U_PHASE_2U_N`,`2V_PHASE_2U_N`,`2W_PHASE_2U_N`,`TAP_NO_2V_N`,`2U_PHASE_2V_N`,`2V_PHASE_2V_N`,`2W_PHASE_2V_N`,`TAP_NO_2W_N`,`2U_PHASE_2W_N`,`2V_PHASE_2W_N`,`2W_PHASE_2W_N`,`div`,`stn`,`s_no`) values (1,2,3,4,5,6,7,8,9,10,11,12,'13','14',15);

/*Table structure for table `iv_magenetising_current_3phase_3wire_method` */

DROP TABLE IF EXISTS `iv_magenetising_current_3phase_3wire_method`;

CREATE TABLE `iv_magenetising_current_3phase_3wire_method` (
  `TAP_NO_2U_2V` varchar(50) DEFAULT NULL,
  `2U_PHASE_2U_2V` double DEFAULT NULL,
  `2V_PHASE_2U_2V` double DEFAULT NULL,
  `2W_PHASE_2U_2V` double DEFAULT NULL,
  `TAP_NO_2V_2W` varchar(50) DEFAULT NULL,
  `2U_PHASE_2V_2W` double DEFAULT NULL,
  `2V_PHASE_2V_2W` double DEFAULT NULL,
  `2W_PHASE_2V_2W` double DEFAULT NULL,
  `TAP_NO_2W_2U` varchar(55) DEFAULT NULL,
  `2U_PHASE_2W_2U` double DEFAULT NULL,
  `2V_PHASE_2W_2U` double DEFAULT NULL,
  `2W_PHASE_2W_2U` double DEFAULT NULL,
  `voltage_1` double DEFAULT NULL,
  `voltage_2` double DEFAULT NULL,
  `voltage_3` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iv_magenetising_current_3phase_3wire_method` */

insert  into `iv_magenetising_current_3phase_3wire_method`(`TAP_NO_2U_2V`,`2U_PHASE_2U_2V`,`2V_PHASE_2U_2V`,`2W_PHASE_2U_2V`,`TAP_NO_2V_2W`,`2U_PHASE_2V_2W`,`2V_PHASE_2V_2W`,`2W_PHASE_2V_2W`,`TAP_NO_2W_2U`,`2U_PHASE_2W_2U`,`2V_PHASE_2W_2U`,`2W_PHASE_2W_2U`,`voltage_1`,`voltage_2`,`voltage_3`,`div`,`stn`,`s_no`) values ('1',2,3,4,'5',6,7,8,'9',10,11,12,13,14,15,NULL,NULL,NULL);

/*Table structure for table `iv_magenetising_current_single_phase_method` */

DROP TABLE IF EXISTS `iv_magenetising_current_single_phase_method`;

CREATE TABLE `iv_magenetising_current_single_phase_method` (
  `TAP_NO_2U_N` varchar(55) DEFAULT NULL,
  `2U_PHASE_2U_N` double DEFAULT NULL,
  `2V_PHASE_2U_N` double DEFAULT NULL,
  `2W_PHASE_2U_N` double DEFAULT NULL,
  `TAP_NO_2V_N` varchar(55) DEFAULT NULL,
  `2U_PHASE_2V_N` double DEFAULT NULL,
  `2V_PHASE_2V_N` double DEFAULT NULL,
  `2W_PHASE_2V_N` double DEFAULT NULL,
  `TAP_NO_2W_N` varchar(55) DEFAULT NULL,
  `2U_PHASE_2W_N` double DEFAULT NULL,
  `2V_PHASE_2W_N` double DEFAULT NULL,
  `2W_PHASE_2W_N` double DEFAULT NULL,
  `voltage_1` double DEFAULT NULL,
  `voltage_2` double DEFAULT NULL,
  `voltage_3` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iv_magenetising_current_single_phase_method` */

insert  into `iv_magenetising_current_single_phase_method`(`TAP_NO_2U_N`,`2U_PHASE_2U_N`,`2V_PHASE_2U_N`,`2W_PHASE_2U_N`,`TAP_NO_2V_N`,`2U_PHASE_2V_N`,`2V_PHASE_2V_N`,`2W_PHASE_2V_N`,`TAP_NO_2W_N`,`2U_PHASE_2W_N`,`2V_PHASE_2W_N`,`2W_PHASE_2W_N`,`voltage_1`,`voltage_2`,`voltage_3`,`div`,`stn`,`s_no`) values ('1',2,3,4,'5',6,7,8,'9',10,11,12,13,14,15,NULL,NULL,NULL),('1',2,3,4,'5',6,7,8,'9',10,11,12,13,14,15,NULL,NULL,NULL),('1',2,3,4,'5',6,7,8,'9',10,11,12,13,14,15,NULL,NULL,NULL);

/*Table structure for table `j` */

DROP TABLE IF EXISTS `j`;

CREATE TABLE `j` (
  `Tap_position_` varchar(50) DEFAULT NULL,
  `KV_average_110` double DEFAULT NULL,
  `KV_rms_110` double DEFAULT NULL,
  `3U_1_110` double DEFAULT NULL,
  `3U_2_110` double DEFAULT NULL,
  `3U_3_110` double DEFAULT NULL,
  `Total_power_110` double DEFAULT NULL,
  `Total_power_connected_110` double DEFAULT NULL,
  `Guaranteed_No_LoadLoss_110` varchar(50) DEFAULT NULL,
  `Frequency_110` double DEFAULT NULL,
  `Remarks_110` varchar(250) DEFAULT NULL,
  `KV_average_100` double DEFAULT NULL,
  `KV_rms_100` double DEFAULT NULL,
  `3U_1_100` double DEFAULT NULL,
  `3U_2_100` double DEFAULT NULL,
  `3U_3_100` double DEFAULT NULL,
  `Total_power_100` double DEFAULT NULL,
  `Total_power_connected_100` double DEFAULT NULL,
  `Guaranteed_No_LoadLoss_100` varchar(50) DEFAULT NULL,
  `Frequency_100` double DEFAULT NULL,
  `Remarks_100` varchar(250) DEFAULT NULL,
  `KV_average_90` double DEFAULT NULL,
  `KV_rms_90` double DEFAULT NULL,
  `3U_1_90` double DEFAULT NULL,
  `3U_2_90` double DEFAULT NULL,
  `3U_3_90` double DEFAULT NULL,
  `Total_power_90` double DEFAULT NULL,
  `Total_power_connected_90` double DEFAULT NULL,
  `Guaranteed_No_LoadLoss_90` varchar(50) DEFAULT NULL,
  `Frequency_90` double DEFAULT NULL,
  `Remarks_90` varchar(250) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `j` */

/*Table structure for table `lv_cts_maintenance_details` */

DROP TABLE IF EXISTS `lv_cts_maintenance_details`;

CREATE TABLE `lv_cts_maintenance_details` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lv_cts_maintenance_details` */

/*Table structure for table `lv_magnetic_current_test_at_normal_tap_no` */

DROP TABLE IF EXISTS `lv_magnetic_current_test_at_normal_tap_no`;

CREATE TABLE `lv_magnetic_current_test_at_normal_tap_no` (
  `3U_3V_3U_3V` double DEFAULT NULL,
  `3V_3W_3U_3V` double DEFAULT NULL,
  `3W_3U_3U_3V` double DEFAULT NULL,
  `3U_3V_3V_3W` double DEFAULT NULL,
  `3V_3W_3V_3W` double DEFAULT NULL,
  `3W_3U_3V_3W` double DEFAULT NULL,
  `3U_3V_3W_3U` double DEFAULT NULL,
  `3V_3W_3W_3U` double DEFAULT NULL,
  `3W_3U_3W_3U` double DEFAULT NULL,
  `voltage_1` double DEFAULT NULL,
  `voltage_2` double DEFAULT NULL,
  `voltage_3` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lv_magnetic_current_test_at_normal_tap_no` */

insert  into `lv_magnetic_current_test_at_normal_tap_no`(`3U_3V_3U_3V`,`3V_3W_3U_3V`,`3W_3U_3U_3V`,`3U_3V_3V_3W`,`3V_3W_3V_3W`,`3W_3U_3V_3W`,`3U_3V_3W_3U`,`3V_3W_3W_3U`,`3W_3U_3W_3U`,`voltage_1`,`voltage_2`,`voltage_3`,`div`,`stn`,`s_no`) values (1,2,3,4,5,6,7,10,10,9,10,11,'12','',NULL);

/*Table structure for table `magnetic_balance_test_results` */

DROP TABLE IF EXISTS `magnetic_balance_test_results`;

CREATE TABLE `magnetic_balance_test_results` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `Routing_Tripping` varchar(255) DEFAULT NULL,
  `HV_terminal_where_voltage_applied` varchar(255) DEFAULT NULL,
  `HV_1U_N` double DEFAULT NULL,
  `HV_1V_N` double DEFAULT NULL,
  `HV_1W_N` double DEFAULT NULL,
  `IV_1U_N` double DEFAULT NULL,
  `IV_terminal_where_voltage_applied` varchar(255) DEFAULT NULL,
  `IV_1V_N` double DEFAULT NULL,
  `IV_1W_N` double DEFAULT NULL,
  `LV_terminal_where_voltage_applied` varchar(255) DEFAULT NULL,
  `LV_1U_N` double DEFAULT NULL,
  `LV_1V_N` double DEFAULT NULL,
  `LV_1W_N` double DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `magnetic_balance_test_results` */

/*Table structure for table `magnetising_current_from_lv_side_tap_no` */

DROP TABLE IF EXISTS `magnetising_current_from_lv_side_tap_no`;

CREATE TABLE `magnetising_current_from_lv_side_tap_no` (
  `voltage_3U-3V` double DEFAULT NULL,
  `voltage_3V-3U` double DEFAULT NULL,
  `voltage_3W-3V` double DEFAULT NULL,
  `current_3U` double DEFAULT NULL,
  `current_3V` double DEFAULT NULL,
  `current_3W` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `magnetising_current_from_lv_side_tap_no` */

/*Table structure for table `magnetising_current_test_result` */

DROP TABLE IF EXISTS `magnetising_current_test_result`;

CREATE TABLE `magnetising_current_test_result` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `Routing_Tripping` double DEFAULT NULL,
  `HV_3phase_volt_1U_1V` double DEFAULT NULL,
  `HV_3phase_volt_1V_1W` double DEFAULT NULL,
  `HV_3phase_volt_1W_1U` double DEFAULT NULL,
  `HV_3phase_current_1U` double DEFAULT NULL,
  `HV_3phase_current_1V` double DEFAULT NULL,
  `HV_3phase_current_1W` double DEFAULT NULL,
  `HV_single_phase_volt_1U_1N` double DEFAULT NULL,
  `HV_single_phase_volt_1V_1N` double DEFAULT NULL,
  `HV_single_phase_volt_1W_1N` double DEFAULT NULL,
  `HV_single_phase_current_1U` double DEFAULT NULL,
  `HV_single_phase_current_1V` double DEFAULT NULL,
  `HV_single_phase_current_1W` double DEFAULT NULL,
  `IVLV_3phase_volt_1U_1V` double DEFAULT NULL,
  `IVLV_3phase_volt_1V_1W` double DEFAULT NULL,
  `IVLV_3phase_volt_1W_1U` double DEFAULT NULL,
  `IVLV_3phase_current_1U` double DEFAULT NULL,
  `IVLV_3phase_current_1V` double DEFAULT NULL,
  `IVLV_3phase_current_1W` double DEFAULT NULL,
  `IVLV_single_phase_volt_1U_1N` double DEFAULT NULL,
  `IVLV_single_phase_volt_1V_1N` double DEFAULT NULL,
  `IVLV_single_phase_volt_1W_1N` double DEFAULT NULL,
  `IVLV_single_phase_current_1U` double DEFAULT NULL,
  `IVLV_single_phase_current_1V` double DEFAULT NULL,
  `IVLV_single_phase_current_1W` double DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `magnetising_current_test_result` */

/*Table structure for table `major_maintenance_works_done_on_the_transformer` */

DROP TABLE IF EXISTS `major_maintenance_works_done_on_the_transformer`;

CREATE TABLE `major_maintenance_works_done_on_the_transformer` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `reasons_and_details_of_activity` varchar(1000) DEFAULT NULL,
  `name_of_agency` varchar(1000) DEFAULT NULL,
  `duration_of_work` varchar(1000) DEFAULT NULL,
  `details_of_spare_parts_used` varchar(1000) DEFAULT NULL,
  `achievements` varchar(1000) DEFAULT NULL,
  `name_of_engineer` varchar(1000) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `major_maintenance_works_done_on_the_transformer` */

/*Table structure for table `measurement_of_ir_values_and_leakage_current_of_hv_&_lv_las` */

DROP TABLE IF EXISTS `measurement_of_ir_values_and_leakage_current_of_hv_&_lv_las`;

CREATE TABLE `measurement_of_ir_values_and_leakage_current_of_hv_&_lv_las` (
  `S.no` int(11) NOT NULL AUTO_INCREMENT,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.no` (`S.no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `measurement_of_ir_values_and_leakage_current_of_hv_&_lv_las` */

/*Table structure for table `measurement_of_vibration_and_noise` */

DROP TABLE IF EXISTS `measurement_of_vibration_and_noise`;

CREATE TABLE `measurement_of_vibration_and_noise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `vibration_1st_point` double DEFAULT NULL,
  `vibration_2nd_point` double DEFAULT NULL,
  `vibration_3rd_point` double DEFAULT NULL,
  `vibration_4th_point` double DEFAULT NULL,
  `vibration_5th_point` double DEFAULT NULL,
  `vibration_remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `noise_1st_point` double DEFAULT NULL,
  `noise_2nd_point` double DEFAULT NULL,
  `noise_3rd_point` double DEFAULT NULL,
  `noise_4th_point` double DEFAULT NULL,
  `noise_5th_point` double DEFAULT NULL,
  `noise_remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `S.No` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `measurement_of_vibration_and_noise` */

insert  into `measurement_of_vibration_and_noise`(`id`,`date`,`vibration_1st_point`,`vibration_2nd_point`,`vibration_3rd_point`,`vibration_4th_point`,`vibration_5th_point`,`vibration_remarks_and_name_of_engineer`,`noise_1st_point`,`noise_2nd_point`,`noise_3rd_point`,`noise_4th_point`,`noise_5th_point`,`noise_remarks_and_name_of_engineer`,`s_no`,`div`,`stn`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `measurmnet_of_load_losses_and_short_circuit_impedance_1` */

DROP TABLE IF EXISTS `measurmnet_of_load_losses_and_short_circuit_impedance_1`;

CREATE TABLE `measurmnet_of_load_losses_and_short_circuit_impedance_1` (
  `Test_Date` varchar(55) DEFAULT NULL,
  `Ammeter` varchar(55) DEFAULT NULL,
  `RMS_Voltmeter` varchar(55) DEFAULT NULL,
  `Wattmeter` varchar(55) DEFAULT NULL,
  `Mean_oil_Temperature` varchar(55) DEFAULT NULL,
  `Guaranteed_Load_Loss_at_Normal_Tap` varchar(55) DEFAULT NULL,
  `Base_1` varchar(55) DEFAULT NULL,
  `Rated_Current_A_1` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_1` varchar(55) DEFAULT NULL,
  `Current_A_1` varchar(55) DEFAULT NULL,
  `Voltage_KV_1` varchar(55) DEFAULT NULL,
  `Loss_KW_1` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_1` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_1` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_1` varchar(55) DEFAULT NULL,
  `Rated_Current_A_9` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_9` varchar(55) DEFAULT NULL,
  `Current_A_9` varchar(55) DEFAULT NULL,
  `Voltage_KV_9` varchar(55) DEFAULT NULL,
  `Loss_KW_9` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_9` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_9` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_9` varchar(55) DEFAULT NULL,
  `Rated_Current_A_17` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_17` varchar(55) DEFAULT NULL,
  `Current_A_17` varchar(55) DEFAULT NULL,
  `Voltage_KV_17` varchar(55) DEFAULT NULL,
  `Loss_KW_17` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_17` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_17` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_17` varchar(55) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `measurmnet_of_load_losses_and_short_circuit_impedance_1` */

/*Table structure for table `measurmnet_of_load_losses_and_short_circuit_impedance_2` */

DROP TABLE IF EXISTS `measurmnet_of_load_losses_and_short_circuit_impedance_2`;

CREATE TABLE `measurmnet_of_load_losses_and_short_circuit_impedance_2` (
  `Mean_oil_Temperature` varchar(55) DEFAULT NULL,
  `Guaranteed_Load_Loss_at_Normal_Tap` varchar(55) DEFAULT NULL,
  `Base_1` varchar(55) DEFAULT NULL,
  `Rated_Current_A_1` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_1` varchar(55) DEFAULT NULL,
  `Current_A_1` varchar(55) DEFAULT NULL,
  `Voltage_KV_1` varchar(55) DEFAULT NULL,
  `Loss_KW_1` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_1` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_1` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_1` varchar(55) DEFAULT NULL,
  `Rated_Current_A_9` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_9` varchar(55) DEFAULT NULL,
  `Current_A_9` varchar(55) DEFAULT NULL,
  `Voltage_KV_9` varchar(55) DEFAULT NULL,
  `Loss_KW_9` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_9` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_9` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_9` varchar(55) DEFAULT NULL,
  `Rated_Current_A_17` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_17` varchar(55) DEFAULT NULL,
  `Current_A_17` varchar(55) DEFAULT NULL,
  `Voltage_KV_17` varchar(55) DEFAULT NULL,
  `Loss_KW_17` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_17` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_17` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_17` varchar(55) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `measurmnet_of_load_losses_and_short_circuit_impedance_2` */

/*Table structure for table `measurmnet_of_load_losses_and_short_circuit_impedance_3` */

DROP TABLE IF EXISTS `measurmnet_of_load_losses_and_short_circuit_impedance_3`;

CREATE TABLE `measurmnet_of_load_losses_and_short_circuit_impedance_3` (
  `Mean_oil_Temperature` varchar(55) DEFAULT NULL,
  `Guaranteed_Load_Loss_at_Normal_Tap` varchar(55) DEFAULT NULL,
  `Base_1` varchar(55) DEFAULT NULL,
  `Rated_Current_A_1` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_1` varchar(55) DEFAULT NULL,
  `Current_A_1` varchar(55) DEFAULT NULL,
  `Voltage_KV_1` varchar(55) DEFAULT NULL,
  `Loss_KW_1` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_1` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_1` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_1` varchar(55) DEFAULT NULL,
  `Rated_Current_A_9` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_9` varchar(55) DEFAULT NULL,
  `Current_A_9` varchar(55) DEFAULT NULL,
  `Voltage_KV_9` varchar(55) DEFAULT NULL,
  `Loss_KW_9` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_9` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_9` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_9` varchar(55) DEFAULT NULL,
  `Rated_Current_A_17` varchar(55) DEFAULT NULL,
  `Test_Frequency_Hz_17` varchar(55) DEFAULT NULL,
  `Current_A_17` varchar(55) DEFAULT NULL,
  `Voltage_KV_17` varchar(55) DEFAULT NULL,
  `Loss_KW_17` varchar(55) DEFAULT NULL,
  `Loas_Loss_KW_17` varchar(55) DEFAULT NULL,
  `I2R_loss_KW_17` varchar(55) DEFAULT NULL,
  `Load_Loss_at_75_C_KW_17` varchar(55) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `measurmnet_of_load_losses_and_short_circuit_impedance_3` */

/*Table structure for table `mpeb5` */

DROP TABLE IF EXISTS `mpeb5`;

CREATE TABLE `mpeb5` (
  `Name_of_substation` varchar(255) DEFAULT NULL,
  `Make_of_Transformer` varchar(255) DEFAULT NULL,
  `Voltage_Ratio_Source` varchar(255) DEFAULT NULL,
  `Boards_Order_no` varchar(255) DEFAULT NULL,
  `Boards_Date` varchar(255) DEFAULT NULL,
  `Sr_No_of_Transformer` varchar(255) DEFAULT NULL,
  `Cost_of_Transformer` varchar(255) DEFAULT NULL,
  `Date_of_Commissioning` varchar(255) DEFAULT NULL,
  `Guarantee_period` varchar(255) DEFAULT NULL,
  `Total_oil_filled_in` varchar(255) DEFAULT NULL,
  `Impedance_at_normal_Tap` varchar(255) DEFAULT NULL,
  `Total_No_of_Taps_Normal_Tap` varchar(255) DEFAULT NULL,
  `Voltage_variation` varchar(255) DEFAULT NULL,
  `of_step_Voltage` varchar(255) DEFAULT NULL,
  `sno` varchar(11) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mpeb5` */

insert  into `mpeb5`(`Name_of_substation`,`Make_of_Transformer`,`Voltage_Ratio_Source`,`Boards_Order_no`,`Boards_Date`,`Sr_No_of_Transformer`,`Cost_of_Transformer`,`Date_of_Commissioning`,`Guarantee_period`,`Total_oil_filled_in`,`Impedance_at_normal_Tap`,`Total_No_of_Taps_Normal_Tap`,`Voltage_variation`,`of_step_Voltage`,`sno`,`div`,`stn`) values ('1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL);

/*Table structure for table `mpeb_15` */

DROP TABLE IF EXISTS `mpeb_15`;

CREATE TABLE `mpeb_15` (
  `Rail_Pole_Gauge` float DEFAULT NULL,
  `Rail_Pole_Center_to_Center` float DEFAULT NULL,
  `Rail_Pole_Length_of_Rails` float DEFAULT NULL,
  `Rail_Pole_Whether` varchar(50) DEFAULT NULL,
  `Foundation_Bearing_Capacity_Main_tank_Foundation` varchar(50) DEFAULT NULL,
  `Foundation_Bearing_Capacity_Radiator_Bank_Foundation` varchar(50) DEFAULT NULL,
  `Foundation_Bearing_Capacity_Foundation_made_as_per_Drawing` varchar(50) DEFAULT NULL,
  `Oil_Received_in_Tanker` float DEFAULT NULL,
  `Oil Received in Drums_in_no` float DEFAULT NULL,
  `Oil Received in Drums_in_kl` float DEFAULT NULL,
  `10per_Extra_Oil_in_Drum` float DEFAULT NULL,
  `Total_Oil_Received` float DEFAULT NULL,
  `INIT_MODE_OF_TRANS_SYSTEM_By_rail` varchar(50) DEFAULT NULL,
  `INIT_MODE_OF_TRANS_SYSTEM_By_Road` varchar(50) DEFAULT NULL,
  `INIT_MODE_OF_TRANS_SYSTEM_With_Oil` varchar(50) DEFAULT NULL,
  `INIT_MODE_OF_TRANS_SYSTEM_Without_Oil` varchar(50) DEFAULT NULL,
  `INIT_MODE_OF_TRANS_SYSTEM_N2_Pressure_Checked_at_Site` varchar(50) DEFAULT NULL,
  `INIT_MODE_OF_TRANS_SYSTEM_Nitro_Cylind_Returnable` varchar(20) DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Jacks_Make` varchar(50) DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Jacks_year_of_manufacture` int(11) DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Jacks_Capacity` float DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Jacks_Type` varchar(50) DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Set_of_Squares_i` varchar(30) DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Set_of_Squares_2` varchar(30) DEFAULT NULL,
  `RECELVED_WITH_TRANSFORMER_Set_of_Squares_3` varchar(30) DEFAULT NULL,
  `Name_Of_Refinary` varchar(100) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mpeb_15` */

/*Table structure for table `mpeb_26_1` */

DROP TABLE IF EXISTS `mpeb_26_1`;

CREATE TABLE `mpeb_26_1` (
  `RATIO_TEST_BY` varchar(100) DEFAULT NULL,
  `Make` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Meter_SI_No` varchar(100) DEFAULT NULL,
  `CALCULATED_RATIO` varchar(100) DEFAULT NULL,
  `MEASURED_RATIO_1U_N_2U_N` varchar(100) DEFAULT NULL,
  `MEASURED_RATIO_1V_N_2V_N` varchar(100) DEFAULT NULL,
  `MEASURED_RATIO_1W_N_2W_N` varchar(100) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mpeb_26_1` */

/*Table structure for table `mpeb_26_2` */

DROP TABLE IF EXISTS `mpeb_26_2`;

CREATE TABLE `mpeb_26_2` (
  `TEST_VOLTAGE` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `KV_megger` varchar(255) DEFAULT NULL,
  `Make_serail_NO` varchar(255) DEFAULT NULL,
  `AMBIENT_TEMPERATURE` varchar(255) DEFAULT NULL,
  `CORE_TO_TANK` varchar(100) DEFAULT NULL,
  `CORE_TO_CORE_CLAMP` varchar(100) DEFAULT NULL,
  `CORE_CLAMP_TO_TANK` varchar(100) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mpeb_26_2` */

/*Table structure for table `mpeb_26_3` */

DROP TABLE IF EXISTS `mpeb_26_3`;

CREATE TABLE `mpeb_26_3` (
  `LEAKAGE_CURRENT_MEASUREMENT` varchar(100) DEFAULT NULL,
  `VOLTAGE_GIVEN_ON_HV_SIDE_1U_1V` double DEFAULT NULL,
  `VOLTAGE_GIVEN_ON_HV_SIDE_1V_1W` double DEFAULT NULL,
  `VOLTAGE_GIVEN_ON_HV_SIDE_1W_1U` double DEFAULT NULL,
  `CURRENT_MEASURED_ON_HV_SIDE_1U` double DEFAULT NULL,
  `CURRENT_MEASURED_ON_HV_SIDE_1V` double DEFAULT NULL,
  `CURRENT_MEASURED_ON_HV_SIDE_1W` double DEFAULT NULL,
  `CURRENT_MEASURED_Core_Clamp_Tank` double DEFAULT NULL,
  `CURRENT_MEASURED_Core_Core_Charge` double DEFAULT NULL,
  `CURRENT_MEASURED_Core_Tank` double DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mpeb_26_3` */

/*Table structure for table `name_plate_details` */

DROP TABLE IF EXISTS `name_plate_details`;

CREATE TABLE `name_plate_details` (
  `Order_No` varchar(100) DEFAULT NULL,
  `Maker_s_Serial_No` int(20) DEFAULT NULL,
  `Year_of_Manufacture` int(4) DEFAULT NULL,
  `Electrical_Spec_No` varchar(20) DEFAULT NULL,
  `OGA_drawing_No` varchar(20) DEFAULT NULL,
  `Connection_Symbol_star` varchar(100) DEFAULT NULL,
  `Connection_Symbol_autostar` varchar(100) DEFAULT NULL,
  `Connection_Symbol_delta` varchar(100) DEFAULT NULL,
  `Diagram_drawing_No` varchar(100) DEFAULT NULL,
  `Cooling_ONAN` varchar(100) DEFAULT NULL,
  `Cooling_ONAF` varchar(100) DEFAULT NULL,
  `Cooling_OFAF` varchar(100) DEFAULT NULL,
  `Temp_Rise_Oil` double DEFAULT NULL,
  `Temp_Rise_Winding` double DEFAULT NULL,
  `Vector_Group_Ynaod_11` varchar(100) DEFAULT NULL,
  `Order_date` varchar(100) DEFAULT NULL,
  `Nominal_Power_in_MVA_HV_ONAN` double DEFAULT NULL,
  `Nominal_Power_in_MVA_HV_ONAF` double DEFAULT NULL,
  `Nominal_Power_in_MVA_HV_OFAF` double DEFAULT NULL,
  `Nominal_Power_in_MVA_IV_ONAN` double DEFAULT NULL,
  `Nominal_Power_in_MVA_IV_ONAF` double DEFAULT NULL,
  `Nominal_Power_in_MVA_IV_OFAF` double DEFAULT NULL,
  `Nominal_Power_in_MVA_LV_ONAN` double DEFAULT NULL,
  `Nominal_Power_in_MVA_LV_ONAF` double DEFAULT NULL,
  `Nominal_Power_in_MVA_LV_OFAF` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_HV_ONAN` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_HV_ONAF` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_HV_OFAF` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_IV_ONAN` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_IV_ONAF` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_IV_OFAF` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_LV_ONAN` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_LV_ONAF` double DEFAULT NULL,
  `Rated_Nominal_Power_in_A_LV_OFAF` double DEFAULT NULL,
  `Rated_Voltage_Voltage_class_HV` double DEFAULT NULL,
  `Rated_Voltage_Voltage_class_IV` double DEFAULT NULL,
  `Rated_Voltage_Voltage_class_LV` double DEFAULT NULL,
  `Rated_Current_AMP_HV` double DEFAULT NULL,
  `Rated_Current_AMP_IV` double DEFAULT NULL,
  `Rated_Current_AMP_LV` double DEFAULT NULL,
  `Impedance_voltage_at_mva base` double DEFAULT NULL,
  `Tap_No_1_HV` varchar(20) DEFAULT NULL,
  `Tap_No_1_IV` varchar(20) DEFAULT NULL,
  `Tap_No_1_MVA` varchar(20) DEFAULT NULL,
  `Tap_No_2_IV` varchar(20) DEFAULT NULL,
  `Tap_No_2_LV` varchar(20) DEFAULT NULL,
  `Tap_No_2_MVA` varchar(20) DEFAULT NULL,
  `Tap_No_3_HV` varchar(20) DEFAULT NULL,
  `Tap_No_3_LV` varchar(20) DEFAULT NULL,
  `Tap_No_3_MVA` varchar(20) DEFAULT NULL,
  `Min_Tap_1` varchar(50) DEFAULT NULL,
  `Min_Tap_2` varchar(50) DEFAULT NULL,
  `Min_Tap_3` varchar(50) DEFAULT NULL,
  `normal_Tap_1` varchar(50) DEFAULT NULL,
  `normal_Tap_2` varchar(50) DEFAULT NULL,
  `normal_Tap_3` varchar(50) DEFAULT NULL,
  `Max_Tap_1` varchar(50) DEFAULT NULL,
  `Max_Tap_2` varchar(50) DEFAULT NULL,
  `Max_Tap_3` varchar(50) DEFAULT NULL,
  `SI_KVp_HV` varchar(50) DEFAULT NULL,
  `SI_KVp_IV` varchar(50) DEFAULT NULL,
  `SI_KVp_LV` varchar(50) DEFAULT NULL,
  `LI_KVp_HV` varchar(50) DEFAULT NULL,
  `LI_KVp_IV` varchar(50) DEFAULT NULL,
  `LI_KVp_LV` varchar(50) DEFAULT NULL,
  `AC_One_minute_Power_frequency_with_stand_Voltage_KVrms_HV` varchar(50) DEFAULT NULL,
  `AC_One_minute_Power_frequency_with_stand_Voltage_KVrms_IV` varchar(50) DEFAULT NULL,
  `AC_One_minute_Power_frequency_with_stand_Voltage_KVrms_LV` varchar(50) DEFAULT NULL,
  `Core_Wieght` double DEFAULT NULL,
  `Winding_Wieght_Cu` double DEFAULT NULL,
  `Transportation_Wieght` double DEFAULT NULL,
  `Tank_and_Fitting` varchar(50) DEFAULT NULL,
  `Wieght_of_Oil` double DEFAULT NULL,
  `Volume_of_Oil` double DEFAULT NULL,
  `Untaking_Wieght` double DEFAULT NULL,
  `Core_and_Winding` varchar(50) DEFAULT NULL,
  `Total_Wieght` double DEFAULT NULL,
  `Untaking_Hieght` double DEFAULT NULL,
  `Oil_Qty` double DEFAULT NULL,
  `No_Load_Losses_Guaranteed` double DEFAULT NULL,
  `No_Load_Losses_Tested_Measured` double DEFAULT NULL,
  `Load_Losses_Guaranteed` double DEFAULT NULL,
  `Load_Losses_Tested_Measured` double DEFAULT NULL,
  `Auxilary_Losses_Guaranteed` double DEFAULT NULL,
  `Auxilary_Losses_Tested_Measured` double DEFAULT NULL,
  `Stray_Losses_Guaranteed` double DEFAULT NULL,
  `Stray_Losses_Tested_Measured` double DEFAULT NULL,
  `Total_Losses_Guaranteed` double DEFAULT NULL,
  `Total_Losses_Tested_Measured` double DEFAULT NULL,
  `HV_Winding_at_Normal_tap` varchar(50) DEFAULT NULL,
  `IV_Winding` varchar(50) DEFAULT NULL,
  `Min` varchar(50) DEFAULT NULL,
  `Normal` varchar(50) DEFAULT NULL,
  `Max` varchar(50) DEFAULT NULL,
  `LV_Winding_at_Normal_tap` varchar(50) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `name_plate_details` */

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `notes` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notes` */

/*Table structure for table `oil_temperature_indicator_and_winding_temperature_indicator_oper` */

DROP TABLE IF EXISTS `oil_temperature_indicator_and_winding_temperature_indicator_oper`;

CREATE TABLE `oil_temperature_indicator_and_winding_temperature_indicator_oper` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `OTI_alarm_setting` varchar(255) DEFAULT NULL,
  `OTI_trip_setting` varchar(255) DEFAULT NULL,
  `WTI_start` varchar(255) DEFAULT NULL,
  `WTI_stop` varchar(255) DEFAULT NULL,
  `HV_WTI_alarm` varchar(255) DEFAULT NULL,
  `IV_WTI_alarm` varchar(255) DEFAULT NULL,
  `LV_WTI_alarm` varchar(255) DEFAULT NULL,
  `HV_WTI_trip` varchar(255) DEFAULT NULL,
  `IV_WTI_trip` varchar(255) DEFAULT NULL,
  `LV_WTI_trip` varchar(255) DEFAULT NULL,
  `checking_of_oil_in_OTI_&_WT_pocket` varchar(255) DEFAULT NULL,
  `any_other_check_maintenance_carried_out` varchar(255) DEFAULT NULL,
  `remarks_&_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oil_temperature_indicator_and_winding_temperature_indicator_oper` */

/*Table structure for table `olct_and_olct_drive_mechanism_maintenanceor_oper` */

DROP TABLE IF EXISTS `olct_and_olct_drive_mechanism_maintenanceor_oper`;

CREATE TABLE `olct_and_olct_drive_mechanism_maintenanceor_oper` (
  `id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `OLTC_general_inspection` varchar(255) DEFAULT NULL,
  `OLTC_oil_replacement` varchar(255) DEFAULT NULL,
  `OLTC_other_maintenance_carried_out` varchar(255) DEFAULT NULL,
  `drive_gear_system_maintenance` varchar(255) DEFAULT NULL,
  `drive_motor_maintenance` varchar(255) DEFAULT NULL,
  `driveother_maintenance_carried_out` varchar(255) DEFAULT NULL,
  `oil_topping` varchar(255) DEFAULT NULL,
  `silica_gel_changing_of_OLTC_breather` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` varchar(255) DEFAULT NULL,
  KEY `S.No` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `olct_and_olct_drive_mechanism_maintenanceor_oper` */

insert  into `olct_and_olct_drive_mechanism_maintenanceor_oper`(`id`,`date`,`reason`,`OLTC_general_inspection`,`OLTC_oil_replacement`,`OLTC_other_maintenance_carried_out`,`drive_gear_system_maintenance`,`drive_motor_maintenance`,`driveother_maintenance_carried_out`,`oil_topping`,`silica_gel_changing_of_OLTC_breather`,`remarks_and_name_of_engineer`,`div`,`stn`,`s_no`) values (NULL,'09/04/2013','transformer failure','ok','ok','testing','tested','ok','ok','ok','ok','good',NULL,NULL,NULL);

/*Table structure for table `oltc_details` */

DROP TABLE IF EXISTS `oltc_details`;

CREATE TABLE `oltc_details` (
  `Make` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Reted_Voltahe_to_Earth` float DEFAULT NULL,
  `Rated_Current` float DEFAULT NULL,
  `Number_of_Steps` int(11) DEFAULT NULL,
  `Variation_in_Step_voltage_percent_Per_Step` float DEFAULT NULL,
  `Serial_No` int(11) DEFAULT NULL,
  `Ohmic_Values` float DEFAULT NULL,
  `Time_for_Complete_Tap_Change` time DEFAULT NULL,
  `OLTC_Provided_on_HV_IV_Side` varchar(100) DEFAULT NULL,
  `Divertor_Selecter_Switch_Transient_time` varchar(50) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oltc_details` */

insert  into `oltc_details`(`Make`,`Type`,`Reted_Voltahe_to_Earth`,`Rated_Current`,`Number_of_Steps`,`Variation_in_Step_voltage_percent_Per_Step`,`Serial_No`,`Ohmic_Values`,`Time_for_Complete_Tap_Change`,`OLTC_Provided_on_HV_IV_Side`,`Divertor_Selecter_Switch_Transient_time`,`div`,`stn`,`s_no`) values ('123','123',65,9,94,100,49,459,'00:00:50','5','10',NULL,NULL,NULL);

/*Table structure for table `oltc_driver_details` */

DROP TABLE IF EXISTS `oltc_driver_details`;

CREATE TABLE `oltc_driver_details` (
  `Motor_rating_Data` varchar(100) DEFAULT NULL,
  `Power` varchar(100) DEFAULT NULL,
  `Voltage` varchar(100) DEFAULT NULL,
  `Current` varchar(100) DEFAULT NULL,
  `Frequency` varchar(100) DEFAULT NULL,
  `Synchronous_Speed` varchar(100) DEFAULT NULL,
  `Revolution_of_Driving_Shaft_per_tap_change` varchar(100) DEFAULT NULL,
  `Running_Speed_for_one_tap_change_operation` varchar(100) DEFAULT NULL,
  `Revoluion_of_Crank_Shaft_per_tap_change_operation` varchar(100) DEFAULT NULL,
  `Maximum_No_of_Operating_positions` varchar(11) DEFAULT NULL,
  `Control_Voltage` varchar(200) DEFAULT NULL,
  `Wieght` varchar(100) DEFAULT NULL,
  `Total_No_of_Taps` varchar(100) DEFAULT NULL,
  `Sr_No` varchar(100) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oltc_driver_details` */

insert  into `oltc_driver_details`(`Motor_rating_Data`,`Power`,`Voltage`,`Current`,`Frequency`,`Synchronous_Speed`,`Revolution_of_Driving_Shaft_per_tap_change`,`Running_Speed_for_one_tap_change_operation`,`Revoluion_of_Crank_Shaft_per_tap_change_operation`,`Maximum_No_of_Operating_positions`,`Control_Voltage`,`Wieght`,`Total_No_of_Taps`,`Sr_No`,`div`,`stn`,`s_no`) values ('1','2','3','4','5','6','7','8','9','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `records_of_system_disturbances_major_trippings_faced_by_taransfo` */

DROP TABLE IF EXISTS `records_of_system_disturbances_major_trippings_faced_by_taransfo`;

CREATE TABLE `records_of_system_disturbances_major_trippings_faced_by_taransfo` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `details_of_occurrence_with_other_trippings` varchar(255) DEFAULT NULL,
  `cumulative_number_of_tripping` varchar(255) DEFAULT NULL,
  `reay_indications` varchar(255) DEFAULT NULL,
  `corrective_action_taken` varchar(255) DEFAULT NULL,
  `name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `records_of_system_disturbances_major_trippings_faced_by_taransfo` */

/*Table structure for table `separate_source_voltage` */

DROP TABLE IF EXISTS `separate_source_voltage`;

CREATE TABLE `separate_source_voltage` (
  `frequency1` varchar(127) DEFAULT NULL,
  `frequency2` varchar(127) DEFAULT NULL,
  `KV1` varchar(127) DEFAULT NULL,
  `KV2` varchar(127) DEFAULT NULL,
  `time1` varchar(127) DEFAULT NULL,
  `time2` varchar(127) DEFAULT NULL,
  `result1` varchar(127) DEFAULT NULL,
  `result2` varchar(127) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `separate_source_voltage` */

insert  into `separate_source_voltage`(`frequency1`,`frequency2`,`KV1`,`KV2`,`time1`,`time2`,`result1`,`result2`,`div`,`stn`,`s_no`) values ('1','5','2','6','3','7','fine','good',NULL,NULL,NULL);

/*Table structure for table `tan_delta_capacitance_measurement _bushing` */

DROP TABLE IF EXISTS `tan_delta_capacitance_measurement _bushing`;

CREATE TABLE `tan_delta_capacitance_measurement _bushing` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `measuring_instrument_make_S.No` varchar(255) DEFAULT NULL,
  `voltage_of_measurement` varchar(255) DEFAULT NULL,
  `weather_condition_fair_rainy` varchar(255) DEFAULT NULL,
  `ambient_temp` varchar(255) DEFAULT NULL,
  `HV_1U_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_1U_tan_delta` varchar(255) DEFAULT NULL,
  `HV_1V_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_1V_tan_delta` varchar(255) DEFAULT NULL,
  `HV_1W_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_1W_tan_delta` varchar(255) DEFAULT NULL,
  `HV_neutral_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_neutral_tan_delta` varchar(255) DEFAULT NULL,
  `IV_2U_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_2U_tan_delta` varchar(255) DEFAULT NULL,
  `IV_2V_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_2V_tan_delta` varchar(255) DEFAULT NULL,
  `IV_2W_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_2W_tan_delta` varchar(255) DEFAULT NULL,
  `IV_neutral_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_neutral_tan_delta` varchar(255) DEFAULT NULL,
  `LV_3U_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_3U_tan_delta` varchar(255) DEFAULT NULL,
  `LV_3V_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_3V_tan_delta` varchar(255) DEFAULT NULL,
  `LV_3W_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_3W_tan_delta` varchar(255) DEFAULT NULL,
  `LV_neutral_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_neutral_tan_delta` varchar(255) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tan_delta_capacitance_measurement _bushing` */

/*Table structure for table `tan_delta_capacitance_measurement_bushing` */

DROP TABLE IF EXISTS `tan_delta_capacitance_measurement_bushing`;

CREATE TABLE `tan_delta_capacitance_measurement_bushing` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `measuring_instrument_make_S.No` varchar(255) DEFAULT NULL,
  `voltage_of_measurement` varchar(255) DEFAULT NULL,
  `weather_condition_fair_rainy` varchar(255) DEFAULT NULL,
  `ambient_temp` varchar(255) DEFAULT NULL,
  `HV_1U_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_1U_tan_delta` varchar(255) DEFAULT NULL,
  `HV_1V_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_1V_tan_delta` varchar(255) DEFAULT NULL,
  `HV_1W_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_1W_tan_delta` varchar(255) DEFAULT NULL,
  `HV_neutral_capacitance_pf` varchar(255) DEFAULT NULL,
  `HV_neutral_tan_delta` varchar(255) DEFAULT NULL,
  `IV_2U_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_2U_tan_delta` varchar(255) DEFAULT NULL,
  `IV_2V_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_2V_tan_delta` varchar(255) DEFAULT NULL,
  `IV_2W_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_2W_tan_delta` varchar(255) DEFAULT NULL,
  `IV_neutral_capacitance_pf` varchar(255) DEFAULT NULL,
  `IV_neutral_tan_delta` varchar(255) DEFAULT NULL,
  `LV_3U_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_3U_tan_delta` varchar(255) DEFAULT NULL,
  `LV_3V_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_3V_tan_delta` varchar(255) DEFAULT NULL,
  `LV_3W_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_3W_tan_delta` varchar(255) DEFAULT NULL,
  `LV_neutral_capacitance_pf` varchar(255) DEFAULT NULL,
  `LV_neutral_tan_delta` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tan_delta_capacitance_measurement_bushing` */

/*Table structure for table `technical_administrative_section` */

DROP TABLE IF EXISTS `technical_administrative_section`;

CREATE TABLE `technical_administrative_section` (
  `FIRST_COMM_DETAILS_Estimate_No` varchar(255) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Date` varchar(255) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Cost_of_Estimates` varchar(255) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO` varchar(255) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Complition_report_submitted_to` varchar(100) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Complition_report_submitted_vide_letter_no` varchar(100) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Scheme_letter_Funded_by` varchar(100) DEFAULT NULL,
  `FIRST_COMM_DETAILS_New_Replacement_Augmentation_Saction` varchar(100) DEFAULT NULL,
  `FIRST_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning` varchar(100) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Estimate_No` varchar(255) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Date` varchar(255) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Cost_of_Estimates` varchar(255) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO` varchar(255) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Complition_report_submitted_to` varchar(100) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Complition_report_submitted_vide_letter_no` varchar(100) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Scheme_letter_Funded_by` varchar(100) DEFAULT NULL,
  `SECOND_COMM_DETAILS_New_Replacement_Augmentation_Saction` varchar(100) DEFAULT NULL,
  `SECOND_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning` varchar(100) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Estimate_No` varchar(255) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Date` varchar(255) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Cost_of_Estimates` varchar(255) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO` varchar(255) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Complition_report_submitted_to` varchar(100) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Complition_report_submitted_vide_letter_no` varchar(100) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Scheme_letter_Funded_by` varchar(100) DEFAULT NULL,
  `THIRD_COMM_DETAILS_New_Replacement_Augmentation_Saction` varchar(100) DEFAULT NULL,
  `THIRD_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning` varchar(100) DEFAULT NULL,
  `sn0` int(11) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `technical_administrative_section` */

insert  into `technical_administrative_section`(`FIRST_COMM_DETAILS_Estimate_No`,`FIRST_COMM_DETAILS_Date`,`FIRST_COMM_DETAILS_Cost_of_Estimates`,`FIRST_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO`,`FIRST_COMM_DETAILS_Complition_report_submitted_to`,`FIRST_COMM_DETAILS_Complition_report_submitted_vide_letter_no`,`FIRST_COMM_DETAILS_Scheme_letter_Funded_by`,`FIRST_COMM_DETAILS_New_Replacement_Augmentation_Saction`,`FIRST_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning`,`SECOND_COMM_DETAILS_Estimate_No`,`SECOND_COMM_DETAILS_Date`,`SECOND_COMM_DETAILS_Cost_of_Estimates`,`SECOND_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO`,`SECOND_COMM_DETAILS_Complition_report_submitted_to`,`SECOND_COMM_DETAILS_Complition_report_submitted_vide_letter_no`,`SECOND_COMM_DETAILS_Scheme_letter_Funded_by`,`SECOND_COMM_DETAILS_New_Replacement_Augmentation_Saction`,`SECOND_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning`,`THIRD_COMM_DETAILS_Estimate_No`,`THIRD_COMM_DETAILS_Date`,`THIRD_COMM_DETAILS_Cost_of_Estimates`,`THIRD_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO`,`THIRD_COMM_DETAILS_Complition_report_submitted_to`,`THIRD_COMM_DETAILS_Complition_report_submitted_vide_letter_no`,`THIRD_COMM_DETAILS_Scheme_letter_Funded_by`,`THIRD_COMM_DETAILS_New_Replacement_Augmentation_Saction`,`THIRD_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning`,`sn0`,`s_no`,`div`,`stn`) values ('1234','2013-08-19','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL),('indore','2013-08-06','50000','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL),('1','2013-08-05','Rs.123','Rs.123','123','123','123','123','xyz','2','2013-08-06','Rs.123','Rs.123','xyz','xyz','xyz','xyz','xyz','3','2013-08-07','Rs.123','Rs.123','xyz','xyz','xyz','xyz','xyz',NULL,NULL,NULL,NULL),('1','2013-08-05','Rs.123','Rs.123','123','123','123','123','xyz','2','2013-08-06','Rs.123','Rs.123','xyz','xyz','xyz','xyz','xyz','3','2013-08-07','Rs.123','Rs.123','xyz','xyz','xyz','xyz','xyz',NULL,NULL,NULL,NULL);

/*Table structure for table `test_results_of_transformer_oil` */

DROP TABLE IF EXISTS `test_results_of_transformer_oil`;

CREATE TABLE `test_results_of_transformer_oil` (
  `S_No` varchar(11) DEFAULT NULL,
  `date_of_sampling` varchar(255) DEFAULT NULL,
  `weather_condition_and_temp` varchar(255) DEFAULT NULL,
  `top_bottom_sample` varchar(255) DEFAULT NULL,
  `date_of_testing` varchar(255) DEFAULT NULL,
  `name_of_testing_lab` varchar(255) DEFAULT NULL,
  `routing_tripping` varchar(255) DEFAULT NULL,
  `tan_delta_at_90_C` varchar(255) DEFAULT NULL,
  `moisture_content_PPM` varchar(255) DEFAULT NULL,
  `density` varchar(255) DEFAULT NULL,
  `IFT` varchar(255) DEFAULT NULL,
  `flash_point` varchar(255) DEFAULT NULL,
  `resistivity` varchar(255) DEFAULT NULL,
  `BDV` varchar(255) DEFAULT NULL,
  `acidity` varchar(255) DEFAULT NULL,
  `OLTC_moisture_content` varchar(255) DEFAULT NULL,
  `OLTC_BDV` varchar(255) DEFAULT NULL,
  `relative_saturation` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `test_results_of_transformer_oil` */

insert  into `test_results_of_transformer_oil`(`S_No`,`date_of_sampling`,`weather_condition_and_temp`,`top_bottom_sample`,`date_of_testing`,`name_of_testing_lab`,`routing_tripping`,`tan_delta_at_90_C`,`moisture_content_PPM`,`density`,`IFT`,`flash_point`,`resistivity`,`BDV`,`acidity`,`OLTC_moisture_content`,`OLTC_BDV`,`relative_saturation`,`remarks_and_name_of_engineer`,`div`,`stn`) values (NULL,'14/04/2004','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','good',NULL,NULL),(NULL,'14/04/2004','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','nice',NULL,NULL);

/*Table structure for table `testing_details_of_backup_over_current_relays_on_hv_iv_&_lvs` */

DROP TABLE IF EXISTS `testing_details_of_backup_over_current_relays_on_hv_iv_&_lvs`;

CREATE TABLE `testing_details_of_backup_over_current_relays_on_hv_iv_&_lvs` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testing_details_of_backup_over_current_relays_on_hv_iv_&_lvs` */

/*Table structure for table `testing_of_over_fluxing_relay` */

DROP TABLE IF EXISTS `testing_of_over_fluxing_relay`;

CREATE TABLE `testing_of_over_fluxing_relay` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testing_of_over_fluxing_relay` */

/*Table structure for table `testing_of_restricted_earth_fault_relay` */

DROP TABLE IF EXISTS `testing_of_restricted_earth_fault_relay`;

CREATE TABLE `testing_of_restricted_earth_fault_relay` (
  `S.No` int(11) NOT NULL AUTO_INCREMENT,
  KEY `S.No` (`S.No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testing_of_restricted_earth_fault_relay` */

/*Table structure for table `transformer_earthpits_ressistance_measurement` */

DROP TABLE IF EXISTS `transformer_earthpits_ressistance_measurement`;

CREATE TABLE `transformer_earthpits_ressistance_measurement` (
  `S_No` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `HV_side_neutral_earthing` varchar(255) DEFAULT NULL,
  `LV_side_neutral_earthing` varchar(255) DEFAULT NULL,
  `HV_side_LA_earthing` varchar(255) DEFAULT NULL,
  `IV_side_LA_earthing` varchar(255) DEFAULT NULL,
  `LV_side_LA_earthing` varchar(255) DEFAULT NULL,
  `remarks_and_name_of_engineer` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transformer_earthpits_ressistance_measurement` */

/*Table structure for table `transformer_foundation_details` */

DROP TABLE IF EXISTS `transformer_foundation_details`;

CREATE TABLE `transformer_foundation_details` (
  `Rail_Pole_Gauge` float DEFAULT NULL,
  `Rail_Pole_Center_to_Center` float DEFAULT NULL,
  `Rail_Pole_Length_of_Rails` float DEFAULT NULL,
  `Rail_Pole_Whether_Across_or_Along_the_bus` varchar(30) DEFAULT NULL,
  `Foundation_Bearing_Capacity_Main_tank_Foundation` varchar(50) DEFAULT NULL,
  `Foundation_Bearing_Capacity_Radiator_Bank_Foundation` varchar(50) DEFAULT NULL,
  `Foundation_Bearing_Capacity_Foundation_made_as_per_Drawing` varchar(50) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transformer_foundation_details` */

insert  into `transformer_foundation_details`(`Rail_Pole_Gauge`,`Rail_Pole_Center_to_Center`,`Rail_Pole_Length_of_Rails`,`Rail_Pole_Whether_Across_or_Along_the_bus`,`Foundation_Bearing_Capacity_Main_tank_Foundation`,`Foundation_Bearing_Capacity_Radiator_Bank_Foundation`,`Foundation_Bearing_Capacity_Foundation_made_as_per_Drawing`,`div`,`stn`,`s_no`) values (1,2,3,'4','5','6','7','8','9',10);

/*Table structure for table `transformer_oil_dissolved_gas_analysis_report` */

DROP TABLE IF EXISTS `transformer_oil_dissolved_gas_analysis_report`;

CREATE TABLE `transformer_oil_dissolved_gas_analysis_report` (
  `S_No` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_sampling` varchar(100) DEFAULT NULL,
  `date_of_testing` varchar(100) DEFAULT NULL,
  `tested_at_lab` varchar(255) DEFAULT NULL,
  `total_gas_content` varchar(255) DEFAULT NULL,
  `methan_ppm` varchar(255) DEFAULT NULL,
  `ethane_ppm` varchar(255) DEFAULT NULL,
  `ethylene_ppm` varchar(255) DEFAULT NULL,
  `acetylene_ppm` varchar(255) DEFAULT NULL,
  `nitrogen_ppm` varchar(255) DEFAULT NULL,
  `hydrogen_ppm` varchar(255) DEFAULT NULL,
  `carbon_monooxide_ppm` varchar(255) DEFAULT NULL,
  `carbon_di_oxode_ppm` varchar(255) DEFAULT NULL,
  `other_gases` varchar(255) DEFAULT NULL,
  `interpretation_by_testing_lab` varchar(255) DEFAULT NULL,
  `corrective_action_taken` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  KEY `S.No` (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transformer_oil_dissolved_gas_analysis_report` */

/*Table structure for table `transformer_oil_receipt_details_for_first_details` */

DROP TABLE IF EXISTS `transformer_oil_receipt_details_for_first_details`;

CREATE TABLE `transformer_oil_receipt_details_for_first_details` (
  `Oil_Received_in_Tanker` float DEFAULT NULL,
  `Oil_Received_in_Drums_no` float DEFAULT NULL,
  `Oil_Received_in_Drums_kl` float DEFAULT NULL,
  `10per_Extra_Oil_in_Drum` float DEFAULT NULL,
  `Total_Oil_Received` float DEFAULT NULL,
  `Name_Of_Refinary` varchar(400) DEFAULT NULL,
  `div` varchar(55) DEFAULT NULL,
  `stn` varchar(55) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transformer_oil_receipt_details_for_first_details` */

insert  into `transformer_oil_receipt_details_for_first_details`(`Oil_Received_in_Tanker`,`Oil_Received_in_Drums_no`,`Oil_Received_in_Drums_kl`,`10per_Extra_Oil_in_Drum`,`Total_Oil_Received`,`Name_Of_Refinary`,`div`,`stn`,`s_no`) values (1,2,3,4,5,'6','',NULL,NULL);

/*Table structure for table `userid` */

DROP TABLE IF EXISTS `userid`;

CREATE TABLE `userid` (
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(1000) DEFAULT NULL,
  `transformer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userid` */

insert  into `userid`(`user`,`pass`,`transformer`) values (NULL,NULL,'220KV JABALPUR'),(NULL,NULL,'132KV VF JBP'),(NULL,NULL,'132KV SHAHPURA'),(NULL,NULL,'132KV PATAN'),(NULL,NULL,'132KV PATAN'),(NULL,NULL,'220KV SUKHA'),(NULL,NULL,'132KV MADOTAL'),(NULL,NULL,'400KV KATNI'),(NULL,NULL,'220KV KATNI'),(NULL,NULL,'132KV KATNI'),(NULL,NULL,'132KV MANSAKRA(SIHORA)'),(NULL,NULL,'132KV KYMORE'),(NULL,NULL,'132KV SHEMANABAD'),(NULL,NULL,'220KV NARSINGHPUR'),(NULL,NULL,'132KV NARSINGHPUR'),(NULL,NULL,'132KV V.B.JBP'),(NULL,NULL,'132KV GADARWARA'),(NULL,NULL,'132KV BARMAN'),(NULL,NULL,'132KV SHRINAGAR'),(NULL,NULL,'132KV MANERI'),(NULL,NULL,'132KV MANDLA(AMANALA)');

/*Table structure for table `wind_res_measur` */

DROP TABLE IF EXISTS `wind_res_measur`;

CREATE TABLE `wind_res_measur` (
  `oil_temp` varchar(127) DEFAULT NULL,
  `res` varchar(127) DEFAULT NULL,
  `first_tap` varchar(127) DEFAULT NULL,
  `nor_tap` varchar(127) DEFAULT NULL,
  `last_tap` varchar(127) DEFAULT NULL,
  `hv_n_first` varchar(127) DEFAULT NULL,
  `hv_n_nor` varchar(127) DEFAULT NULL,
  `hv_n_last` varchar(127) DEFAULT NULL,
  `iv_n_first` varchar(127) DEFAULT NULL,
  `lv_n_first` varchar(127) DEFAULT NULL,
  `iv_n_nor` varchar(127) DEFAULT NULL,
  `lv_n_nor` varchar(127) DEFAULT NULL,
  `iv_n_last` varchar(127) DEFAULT NULL,
  `lv_n_last` varchar(127) DEFAULT NULL,
  `div` varchar(63) DEFAULT NULL,
  `stn` varchar(63) DEFAULT NULL,
  `s_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wind_res_measur` */

insert  into `wind_res_measur`(`oil_temp`,`res`,`first_tap`,`nor_tap`,`last_tap`,`hv_n_first`,`hv_n_nor`,`hv_n_last`,`iv_n_first`,`lv_n_first`,`iv_n_nor`,`lv_n_nor`,`iv_n_last`,`lv_n_last`,`div`,`stn`,`s_no`) values ('123','','','','','','','','','','','','','',NULL,NULL,NULL),('1','2','3','7','11','4','8','12','5','6','9','10','13','14',NULL,NULL,NULL),('1','2','3','8','9','7','12','10','11','4','5','6','13','14',NULL,NULL,NULL),('1','2','3','12','5','8','10','6','9','7','11','4','13','14',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
