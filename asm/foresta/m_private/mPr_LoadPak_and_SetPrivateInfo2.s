lbl_803E10CC:
/* 803E10CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E10D0  7C 08 02 A6 */	mflr r0
/* 803E10D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E10D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803E10DC  4B CB 9D F1 */	bl func_8009AECC
/* 803E10E0  7C 9D 23 78 */	mr r29, r4
/* 803E10E4  3B C0 00 00 */	li r30, 0
/* 803E10E8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803E10EC  28 00 00 04 */	cmplwi r0, 4
/* 803E10F0  40 80 00 A4 */	bge lbl_803E1194
/* 803E10F4  1C A0 24 40 */	mulli r5, r0, 0x2440
/* 803E10F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E10FC  3C 60 81 17 */	lis r3, data_8116EE78@ha /* 0x8116EE78@ha */
/* 803E1100  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E1104  7C A0 2A 14 */	add r5, r0, r5
/* 803E1108  38 83 EE 78 */	addi r4, r3, data_8116EE78@l /* 0x8116EE78@l */
/* 803E110C  3B E5 00 20 */	addi r31, r5, 0x20
/* 803E1110  7F E3 FB 78 */	mr r3, r31
/* 803E1114  4B FF F5 59 */	bl mPr_CheckCmpPrivate
/* 803E1118  2C 03 00 01 */	cmpwi r3, 1
/* 803E111C  40 82 01 6C */	bne lbl_803E1288
/* 803E1120  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 803E1124  4B FD 24 95 */	bl mHS_get_arrange_idx
/* 803E1128  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803E112C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E1130  3C 60 81 17 */	lis r3, data_8116EE78@ha /* 0x8116EE78@ha */
/* 803E1134  83 7F 00 90 */	lwz r27, 0x90(r31)
/* 803E1138  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E113C  7C 80 2A 14 */	add r4, r0, r5
/* 803E1140  3F 84 00 01 */	addis r28, r4, 1
/* 803E1144  38 83 EE 78 */	addi r4, r3, data_8116EE78@l /* 0x8116EE78@l */
/* 803E1148  7F E3 FB 78 */	mr r3, r31
/* 803E114C  3B 9C 9C E8 */	addi r28, r28, -25368
/* 803E1150  4B FF F4 D1 */	bl mPr_CopyPrivateInfo
/* 803E1154  7F A3 EB 78 */	mr r3, r29
/* 803E1158  4B FD 22 E1 */	bl mHm_CheckKeepHouseSize
/* 803E115C  2C 03 00 00 */	cmpwi r3, 0
/* 803E1160  41 82 00 14 */	beq lbl_803E1174
/* 803E1164  88 1C 00 2A */	lbz r0, 0x2a(r28)
/* 803E1168  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 803E116C  28 00 00 04 */	cmplwi r0, 4
/* 803E1170  40 82 00 08 */	bne lbl_803E1178
lbl_803E1174:
/* 803E1174  93 7F 00 90 */	stw r27, 0x90(r31)
lbl_803E1178:
/* 803E1178  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E117C  3B C0 00 01 */	li r30, 1
/* 803E1180  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E1184  3C 63 00 02 */	addis r3, r3, 2
/* 803E1188  93 E3 61 3C */	stw r31, 0x613c(r3)
/* 803E118C  9B A3 60 03 */	stb r29, 0x6003(r3)
/* 803E1190  48 00 00 F8 */	b lbl_803E1288
lbl_803E1194:
/* 803E1194  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E1198  3C 60 81 17 */	lis r3, data_8116EE78@ha /* 0x8116EE78@ha */
/* 803E119C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E11A0  3B A0 00 00 */	li r29, 0
/* 803E11A4  3B E4 00 20 */	addi r31, r4, 0x20
/* 803E11A8  3B 63 EE 78 */	addi r27, r3, data_8116EE78@l /* 0x8116EE78@l */
lbl_803E11AC:
/* 803E11AC  7F E3 FB 78 */	mr r3, r31
/* 803E11B0  7F 64 DB 78 */	mr r4, r27
/* 803E11B4  4B FF F4 B9 */	bl mPr_CheckCmpPrivate
/* 803E11B8  7C 7C 1B 78 */	mr r28, r3
/* 803E11BC  2C 1C 00 01 */	cmpwi r28, 1
/* 803E11C0  40 82 00 8C */	bne lbl_803E124C
/* 803E11C4  7F A3 EB 78 */	mr r3, r29
/* 803E11C8  4B FD 23 F1 */	bl mHS_get_arrange_idx
/* 803E11CC  1C C3 26 B0 */	mulli r6, r3, 0x26b0
/* 803E11D0  3C 60 81 17 */	lis r3, data_8116EE78@ha /* 0x8116EE78@ha */
/* 803E11D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E11D8  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 803E11DC  38 83 EE 78 */	addi r4, r3, data_8116EE78@l /* 0x8116EE78@l */
/* 803E11E0  83 DF 00 90 */	lwz r30, 0x90(r31)
/* 803E11E4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E11E8  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 803E11EC  88 04 00 18 */	lbz r0, 0x18(r4)
/* 803E11F0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 803E11F4  7C A5 32 14 */	add r5, r5, r6
/* 803E11F8  7F E3 FB 78 */	mr r3, r31
/* 803E11FC  3F 65 00 01 */	addis r27, r5, 1
/* 803E1200  98 04 00 18 */	stb r0, 0x18(r4)
/* 803E1204  3B 7B 9C E8 */	addi r27, r27, -25368
/* 803E1208  4B FF F4 19 */	bl mPr_CopyPrivateInfo
/* 803E120C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 803E1210  4B FD 22 29 */	bl mHm_CheckKeepHouseSize
/* 803E1214  2C 03 00 00 */	cmpwi r3, 0
/* 803E1218  41 82 00 14 */	beq lbl_803E122C
/* 803E121C  88 1B 00 2A */	lbz r0, 0x2a(r27)
/* 803E1220  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 803E1224  28 00 00 04 */	cmplwi r0, 4
/* 803E1228  40 82 00 08 */	bne lbl_803E1230
lbl_803E122C:
/* 803E122C  93 DF 00 90 */	stw r30, 0x90(r31)
lbl_803E1230:
/* 803E1230  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E1234  3B C0 00 01 */	li r30, 1
/* 803E1238  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E123C  3C 63 00 02 */	addis r3, r3, 2
/* 803E1240  93 E3 61 3C */	stw r31, 0x613c(r3)
/* 803E1244  9B A3 60 03 */	stb r29, 0x6003(r3)
/* 803E1248  48 00 00 14 */	b lbl_803E125C
lbl_803E124C:
/* 803E124C  3B BD 00 01 */	addi r29, r29, 1
/* 803E1250  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803E1254  2C 1D 00 04 */	cmpwi r29, 4
/* 803E1258  41 80 FF 54 */	blt lbl_803E11AC
lbl_803E125C:
/* 803E125C  2C 1C 00 00 */	cmpwi r28, 0
/* 803E1260  40 82 00 28 */	bne lbl_803E1288
/* 803E1264  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E1268  3C 80 81 17 */	lis r4, data_8116EE78@ha /* 0x8116EE78@ha */
/* 803E126C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E1270  38 00 00 04 */	li r0, 4
/* 803E1274  3C 63 00 02 */	addis r3, r3, 2
/* 803E1278  38 84 EE 78 */	addi r4, r4, data_8116EE78@l /* 0x8116EE78@l */
/* 803E127C  90 83 61 3C */	stw r4, 0x613c(r3)
/* 803E1280  3B C0 00 01 */	li r30, 1
/* 803E1284  98 03 60 03 */	stb r0, 0x6003(r3)
lbl_803E1288:
/* 803E1288  7F C3 F3 78 */	mr r3, r30
/* 803E128C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E1290  4B CB 9C 89 */	bl func_8009AF18
/* 803E1294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E1298  7C 08 03 A6 */	mtlr r0
/* 803E129C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E12A0  4E 80 00 20 */	blr 
