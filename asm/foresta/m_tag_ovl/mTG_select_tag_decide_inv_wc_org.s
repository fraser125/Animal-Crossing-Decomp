lbl_805FB74C:
/* 805FB74C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FB750  7C 08 02 A6 */	mflr r0
/* 805FB754  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FB758  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB75C  4B A9 F7 79 */	bl func_8009AED4
/* 805FB760  7C 7D 1B 78 */	mr r29, r3
/* 805FB764  7C 9E 23 78 */	mr r30, r4
/* 805FB768  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805FB76C  83 E5 09 88 */	lwz r31, 0x988(r5)
/* 805FB770  4B FF B4 ED */	bl mTG_mark_main_CLR
/* 805FB774  38 60 00 00 */	li r3, 0
/* 805FB778  38 00 00 01 */	li r0, 1
/* 805FB77C  98 7F 05 EA */	stb r3, 0x5ea(r31)
/* 805FB780  7F A3 EB 78 */	mr r3, r29
/* 805FB784  38 80 00 17 */	li r4, 0x17
/* 805FB788  38 A0 00 01 */	li r5, 1
/* 805FB78C  98 1F 05 EB */	stb r0, 0x5eb(r31)
/* 805FB790  38 C0 00 00 */	li r6, 0
/* 805FB794  38 E0 00 00 */	li r7, 0
/* 805FB798  4B DF 3F 6D */	bl mSM_open_submenu_new
/* 805FB79C  38 00 00 02 */	li r0, 2
/* 805FB7A0  7F A3 EB 78 */	mr r3, r29
/* 805FB7A4  90 1E 00 04 */	stw r0, 4(r30)
/* 805FB7A8  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805FB7AC  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805FB7B0  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805FB7B4  81 84 03 70 */	lwz r12, 0x370(r4)
/* 805FB7B8  7D 89 03 A6 */	mtctr r12
/* 805FB7BC  4E 80 04 21 */	bctrl 
/* 805FB7C0  38 60 00 02 */	li r3, 2
/* 805FB7C4  48 03 25 41 */	bl sAdo_SysTrgStart
/* 805FB7C8  38 60 00 00 */	li r3, 0
/* 805FB7CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB7D0  4B A9 F7 51 */	bl func_8009AF20
/* 805FB7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FB7D8  7C 08 03 A6 */	mtlr r0
/* 805FB7DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805FB7E0  4E 80 00 20 */	blr 
