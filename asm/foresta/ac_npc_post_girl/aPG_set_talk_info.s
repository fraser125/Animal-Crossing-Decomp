lbl_8056D8A0:
/* 8056D8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D8A4  7C 08 02 A6 */	mflr r0
/* 8056D8A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056D8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D8B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8056D8B8  7C 7E 1B 78 */	mr r30, r3
/* 8056D8BC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8056D8C0  3F E3 00 02 */	addis r31, r3, 2
/* 8056D8C4  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 8056D8C8  28 03 00 00 */	cmplwi r3, 0
/* 8056D8CC  41 82 00 38 */	beq lbl_8056D904
/* 8056D8D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8056D8D4  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8056D8D8  7D 89 03 A6 */	mtctr r12
/* 8056D8DC  4E 80 04 21 */	bctrl 
/* 8056D8E0  2C 03 00 00 */	cmpwi r3, 0
/* 8056D8E4  40 82 00 20 */	bne lbl_8056D904
/* 8056D8E8  80 BF 60 F8 */	lwz r5, 0x60f8(r31)
/* 8056D8EC  38 80 00 01 */	li r4, 1
/* 8056D8F0  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8056D8F4  81 85 00 08 */	lwz r12, 8(r5)
/* 8056D8F8  7D 89 03 A6 */	mtctr r12
/* 8056D8FC  4E 80 04 21 */	bctrl 
/* 8056D900  48 00 00 28 */	b lbl_8056D928
lbl_8056D904:
/* 8056D904  7F C3 F3 78 */	mr r3, r30
/* 8056D908  4B FF ED 21 */	bl aPG_set_post_status
/* 8056D90C  88 1E 09 A4 */	lbz r0, 0x9a4(r30)
/* 8056D910  3C 60 80 6C */	lis r3, msg_no_847@ha /* 0x806BEAE8@ha */
/* 8056D914  38 63 EA E8 */	addi r3, r3, msg_no_847@l /* 0x806BEAE8@l */
/* 8056D918  88 9E 07 44 */	lbz r4, 0x744(r30)
/* 8056D91C  54 00 10 3A */	slwi r0, r0, 2
/* 8056D920  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056D924  7C 64 02 14 */	add r3, r4, r0
lbl_8056D928:
/* 8056D928  4B E2 AB ED */	bl mDemo_Set_msg_num
/* 8056D92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D934  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056D938  7C 08 03 A6 */	mtlr r0
/* 8056D93C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D940  4E 80 00 20 */	blr 
