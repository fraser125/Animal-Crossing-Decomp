lbl_804C14DC:
/* 804C14DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C14E0  7C 08 02 A6 */	mflr r0
/* 804C14E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C14E8  39 61 00 30 */	addi r11, r1, 0x30
/* 804C14EC  4B BD 99 E5 */	bl func_8009AED0
/* 804C14F0  7C 9D 23 78 */	mr r29, r4
/* 804C14F4  7C 7C 1B 78 */	mr r28, r3
/* 804C14F8  80 E4 00 00 */	lwz r7, 0(r4)
/* 804C14FC  7C BE 2B 78 */	mr r30, r5
/* 804C1500  80 04 00 04 */	lwz r0, 4(r4)
/* 804C1504  7C DF 33 78 */	mr r31, r6
/* 804C1508  38 61 00 0C */	addi r3, r1, 0xc
/* 804C150C  38 81 00 08 */	addi r4, r1, 8
/* 804C1510  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804C1514  38 A1 00 10 */	addi r5, r1, 0x10
/* 804C1518  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C151C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C1520  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C1524  4B EE 3E 45 */	bl mFI_Wpos2UtNum
/* 804C1528  2C 03 00 00 */	cmpwi r3, 0
/* 804C152C  41 82 00 28 */	beq lbl_804C1554
/* 804C1530  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C1534  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804C1538  80 A1 00 08 */	lwz r5, 8(r1)
/* 804C153C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C1540  38 C0 00 00 */	li r6, 0
/* 804C1544  4B EE 61 09 */	bl mFI_UtNumtoFGSet_common
/* 804C1548  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804C154C  80 81 00 08 */	lwz r4, 8(r1)
/* 804C1550  4B EE 7A 41 */	bl mFI_UtNum2DepositOFF
lbl_804C1554:
/* 804C1554  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C1558  7F 84 E3 78 */	mr r4, r28
/* 804C155C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C1560  7F A5 EB 78 */	mr r5, r29
/* 804C1564  3C 63 00 02 */	addis r3, r3, 2
/* 804C1568  7F C6 F3 78 */	mr r6, r30
/* 804C156C  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C1570  7F E7 FB 78 */	mr r7, r31
/* 804C1574  39 00 00 01 */	li r8, 1
/* 804C1578  39 20 00 00 */	li r9, 0
/* 804C157C  80 63 00 00 */	lwz r3, 0(r3)
/* 804C1580  3C 63 00 01 */	addis r3, r3, 1
/* 804C1584  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804C1588  48 00 00 71 */	bl bIT_actor_hole_effect_entry
/* 804C158C  39 61 00 30 */	addi r11, r1, 0x30
/* 804C1590  4B BD 99 8D */	bl func_8009AF1C
/* 804C1594  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C1598  7C 08 03 A6 */	mtlr r0
/* 804C159C  38 21 00 30 */	addi r1, r1, 0x30
/* 804C15A0  4E 80 00 20 */	blr 
