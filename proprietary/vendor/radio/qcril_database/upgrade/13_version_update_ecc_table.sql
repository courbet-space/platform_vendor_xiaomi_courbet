/*
  Copyright (c) 2022 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 12);

DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';

COMMIT TRANSACTION;
