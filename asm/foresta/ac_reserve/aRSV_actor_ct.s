lbl_805B8B94:
/* 805B8B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8B98  7C 08 02 A6 */	mflr r0
/* 805B8B9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B8BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8BA4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B8BA8  3C A5 00 02 */	addis r5, r5, 2
/* 805B8BAC  38 80 00 00 */	li r4, 0
/* 805B8BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B8BB4  7C 7F 1B 78 */	mr r31, r3
/* 805B8BB8  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 805B8BBC  90 03 02 D8 */	stw r0, 0x2d8(r3)
/* 805B8BC0  A0 A3 00 06 */	lhz r5, 6(r3)
/* 805B8BC4  38 05 A7 F0 */	addi r0, r5, -22544
/* 805B8BC8  90 03 02 B8 */	stw r0, 0x2b8(r3)
/* 805B8BCC  48 00 01 CD */	bl aRSV_setup_action
/* 805B8BD0  7F E3 FB 78 */	mr r3, r31
/* 805B8BD4  38 80 00 01 */	li r4, 1
/* 805B8BD8  48 00 00 19 */	bl func_805B8BF0
/* 805B8BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B8BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B8BE4  7C 08 03 A6 */	mtlr r0
/* 805B8BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8BEC  4E 80 00 20 */	blr 
