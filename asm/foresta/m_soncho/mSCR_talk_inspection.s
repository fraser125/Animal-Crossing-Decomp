lbl_803ED198:
/* 803ED198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ED19C  7C 08 02 A6 */	mflr r0
/* 803ED1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ED1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803ED1A8  4B CA DD 21 */	bl func_8009AEC8
/* 803ED1AC  7C 7F 1B 78 */	mr r31, r3
/* 803ED1B0  7C 9A 23 78 */	mr r26, r4
/* 803ED1B4  38 60 00 04 */	li r3, 4
/* 803ED1B8  38 80 00 09 */	li r4, 9
/* 803ED1BC  4B FA B2 C1 */	bl mDemo_Get_OrderValue
/* 803ED1C0  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 803ED1C4  4B FD 24 E5 */	bl func_803BF6A8
/* 803ED1C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ED1CC  2C 1C 00 03 */	cmpwi r28, 3
/* 803ED1D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ED1D4  7C 7B 1B 78 */	mr r27, r3
/* 803ED1D8  3F A4 00 02 */	addis r29, r4, 2
/* 803ED1DC  83 DD 61 3C */	lwz r30, 0x613c(r29)
/* 803ED1E0  41 82 00 CC */	beq lbl_803ED2AC
/* 803ED1E4  40 80 00 14 */	bge lbl_803ED1F8
/* 803ED1E8  2C 1C 00 01 */	cmpwi r28, 1
/* 803ED1EC  41 82 00 18 */	beq lbl_803ED204
/* 803ED1F0  40 80 00 6C */	bge lbl_803ED25C
/* 803ED1F4  48 00 01 6C */	b lbl_803ED360
lbl_803ED1F8:
/* 803ED1F8  2C 1C 00 05 */	cmpwi r28, 5
/* 803ED1FC  40 80 01 64 */	bge lbl_803ED360
/* 803ED200  48 00 00 F4 */	b lbl_803ED2F4
lbl_803ED204:
/* 803ED204  7F 43 D3 78 */	mr r3, r26
/* 803ED208  38 80 25 23 */	li r4, 0x2523
/* 803ED20C  38 A0 00 08 */	li r5, 8
/* 803ED210  38 C0 00 00 */	li r6, 0
/* 803ED214  38 E0 00 00 */	li r7, 0
/* 803ED218  4B FE D2 49 */	bl mPlib_request_main_give_type1
/* 803ED21C  38 60 00 04 */	li r3, 4
/* 803ED220  38 80 00 09 */	li r4, 9
/* 803ED224  38 A0 00 02 */	li r5, 2
/* 803ED228  4B FA B2 11 */	bl mDemo_Set_OrderValue
/* 803ED22C  38 60 00 04 */	li r3, 4
/* 803ED230  38 80 00 01 */	li r4, 1
/* 803ED234  38 A0 00 03 */	li r5, 3
/* 803ED238  4B FA B2 01 */	bl mDemo_Set_OrderValue
/* 803ED23C  88 9F 09 B3 */	lbz r4, 0x9b3(r31)
/* 803ED240  7F 63 DB 78 */	mr r3, r27
/* 803ED244  38 84 34 22 */	addi r4, r4, 0x3422
/* 803ED248  4B FD 2D 7D */	bl mMsg_Set_continue_msg_num
/* 803ED24C  88 7F 09 B3 */	lbz r3, 0x9b3(r31)
/* 803ED250  38 03 00 01 */	addi r0, r3, 1
/* 803ED254  98 1F 09 B3 */	stb r0, 0x9b3(r31)
/* 803ED258  48 00 01 08 */	b lbl_803ED360
lbl_803ED25C:
/* 803ED25C  80 7D 60 94 */	lwz r3, 0x6094(r29)
/* 803ED260  88 03 00 0C */	lbz r0, 0xc(r3)
/* 803ED264  28 00 00 02 */	cmplwi r0, 2
/* 803ED268  40 82 00 F8 */	bne lbl_803ED360
/* 803ED26C  38 60 00 04 */	li r3, 4
/* 803ED270  38 80 00 01 */	li r4, 1
/* 803ED274  38 A0 00 03 */	li r5, 3
/* 803ED278  4B FA B1 C1 */	bl mDemo_Set_OrderValue
/* 803ED27C  80 BD 60 94 */	lwz r5, 0x6094(r29)
/* 803ED280  38 00 00 08 */	li r0, 8
/* 803ED284  38 60 00 04 */	li r3, 4
/* 803ED288  38 80 00 09 */	li r4, 9
/* 803ED28C  98 05 00 0D */	stb r0, 0xd(r5)
/* 803ED290  38 A0 00 03 */	li r5, 3
/* 803ED294  4B FA B1 A5 */	bl mDemo_Set_OrderValue
/* 803ED298  7F 63 DB 78 */	mr r3, r27
/* 803ED29C  4B FD 3A B1 */	bl mMsg_Unset_LockContinue
/* 803ED2A0  38 00 00 1E */	li r0, 0x1e
/* 803ED2A4  B0 1F 09 74 */	sth r0, 0x974(r31)
/* 803ED2A8  48 00 00 B8 */	b lbl_803ED360
lbl_803ED2AC:
/* 803ED2AC  4B FD 2D 21 */	bl mMsg_Get_msg_num
/* 803ED2B0  2C 03 34 2B */	cmpwi r3, 0x342b
/* 803ED2B4  41 82 00 14 */	beq lbl_803ED2C8
/* 803ED2B8  7F 63 DB 78 */	mr r3, r27
/* 803ED2BC  4B FD 2D 11 */	bl mMsg_Get_msg_num
/* 803ED2C0  2C 03 34 28 */	cmpwi r3, 0x3428
/* 803ED2C4  40 82 00 9C */	bne lbl_803ED360
lbl_803ED2C8:
/* 803ED2C8  7F 63 DB 78 */	mr r3, r27
/* 803ED2CC  4B FD 39 CD */	bl mMsg_Check_MainNormalContinue
/* 803ED2D0  2C 03 00 00 */	cmpwi r3, 0
/* 803ED2D4  41 82 00 8C */	beq lbl_803ED360
/* 803ED2D8  38 60 00 04 */	li r3, 4
/* 803ED2DC  38 80 00 09 */	li r4, 9
/* 803ED2E0  38 A0 00 04 */	li r5, 4
/* 803ED2E4  4B FA B1 55 */	bl mDemo_Set_OrderValue
/* 803ED2E8  4B FD 23 C1 */	bl func_803BF6A8
/* 803ED2EC  4B FD 3A 55 */	bl mMsg_Set_LockContinue
/* 803ED2F0  48 00 00 70 */	b lbl_803ED360
lbl_803ED2F4:
/* 803ED2F4  80 7D 60 94 */	lwz r3, 0x6094(r29)
/* 803ED2F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803ED2FC  28 00 00 00 */	cmplwi r0, 0
/* 803ED300  40 82 00 60 */	bne lbl_803ED360
/* 803ED304  38 00 FF FF */	li r0, -1
/* 803ED308  38 60 00 04 */	li r3, 4
/* 803ED30C  B0 1F 09 74 */	sth r0, 0x974(r31)
/* 803ED310  38 80 00 09 */	li r4, 9
/* 803ED314  38 A0 00 00 */	li r5, 0
/* 803ED318  4B FA B1 21 */	bl mDemo_Set_OrderValue
/* 803ED31C  88 1E 23 C2 */	lbz r0, 0x23c2(r30)
/* 803ED320  28 00 00 0D */	cmplwi r0, 0xd
/* 803ED324  41 80 00 10 */	blt lbl_803ED334
/* 803ED328  38 00 00 03 */	li r0, 3
/* 803ED32C  98 1F 09 B2 */	stb r0, 0x9b2(r31)
/* 803ED330  48 00 00 0C */	b lbl_803ED33C
lbl_803ED334:
/* 803ED334  38 00 00 09 */	li r0, 9
/* 803ED338  98 1F 09 B2 */	stb r0, 0x9b2(r31)
lbl_803ED33C:
/* 803ED33C  7F 63 DB 78 */	mr r3, r27
/* 803ED340  4B FD 3A 0D */	bl mMsg_Unset_LockContinue
/* 803ED344  88 9F 09 B3 */	lbz r4, 0x9b3(r31)
/* 803ED348  7F 63 DB 78 */	mr r3, r27
/* 803ED34C  38 84 34 22 */	addi r4, r4, 0x3422
/* 803ED350  4B FD 2C 75 */	bl mMsg_Set_continue_msg_num
/* 803ED354  88 7F 09 B3 */	lbz r3, 0x9b3(r31)
/* 803ED358  38 03 00 01 */	addi r0, r3, 1
/* 803ED35C  98 1F 09 B3 */	stb r0, 0x9b3(r31)
lbl_803ED360:
/* 803ED360  39 61 00 20 */	addi r11, r1, 0x20
/* 803ED364  4B CA DB B1 */	bl func_8009AF14
/* 803ED368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ED36C  7C 08 03 A6 */	mtlr r0
/* 803ED370  38 21 00 20 */	addi r1, r1, 0x20
/* 803ED374  4E 80 00 20 */	blr 
