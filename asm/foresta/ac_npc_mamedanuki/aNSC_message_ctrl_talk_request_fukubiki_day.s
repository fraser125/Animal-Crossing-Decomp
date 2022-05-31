lbl_8055BB88:
/* 8055BB88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055BB8C  7C 08 02 A6 */	mflr r0
/* 8055BB90  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055BB94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8055BB98  7C 7F 1B 78 */	mr r31, r3
/* 8055BB9C  80 04 13 8C */	lwz r0, 0x138c(r4)
/* 8055BBA0  2C 00 00 01 */	cmpwi r0, 1
/* 8055BBA4  40 82 00 7C */	bne lbl_8055BC20
/* 8055BBA8  80 C4 13 98 */	lwz r6, 0x1398(r4)
/* 8055BBAC  38 61 00 0C */	addi r3, r1, 0xc
/* 8055BBB0  80 04 13 9C */	lwz r0, 0x139c(r4)
/* 8055BBB4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8055BBB8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8055BBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BBC0  80 04 13 A0 */	lwz r0, 0x13a0(r4)
/* 8055BBC4  38 81 00 08 */	addi r4, r1, 8
/* 8055BBC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8055BBCC  4B E4 97 9D */	bl mFI_Wpos2UtNum
/* 8055BBD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055BBD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8055BBD8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8055BBDC  80 81 00 08 */	lwz r4, 8(r1)
/* 8055BBE0  3C A5 00 02 */	addis r5, r5, 2
/* 8055BBE4  80 A5 60 60 */	lwz r5, 0x6060(r5)
/* 8055BBE8  81 85 00 04 */	lwz r12, 4(r5)
/* 8055BBEC  7D 89 03 A6 */	mtctr r12
/* 8055BBF0  4E 80 04 21 */	bctrl 
/* 8055BBF4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055BBF8  41 82 00 28 */	beq lbl_8055BC20
/* 8055BBFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8055BC00  41 82 00 20 */	beq lbl_8055BC20
/* 8055BC04  3C 60 80 56 */	lis r3, aNSC_set_talk_info_fukubiki@ha /* 0x8055B8F4@ha */
/* 8055BC08  7F E4 FB 78 */	mr r4, r31
/* 8055BC0C  38 A3 B8 F4 */	addi r5, r3, aNSC_set_talk_info_fukubiki@l /* 0x8055B8F4@l */
/* 8055BC10  38 60 00 08 */	li r3, 8
/* 8055BC14  4B E3 E5 49 */	bl mDemo_Request
/* 8055BC18  38 00 FF FF */	li r0, -1
/* 8055BC1C  90 1F 09 C0 */	stw r0, 0x9c0(r31)
lbl_8055BC20:
/* 8055BC20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055BC24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8055BC28  7C 08 03 A6 */	mtlr r0
/* 8055BC2C  38 21 00 30 */	addi r1, r1, 0x30
/* 8055BC30  4E 80 00 20 */	blr 
