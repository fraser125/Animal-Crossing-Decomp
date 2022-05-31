lbl_8048F470:
/* 8048F470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F474  7C 08 02 A6 */	mflr r0
/* 8048F478  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F484  7C 9F 23 78 */	mr r31, r4
/* 8048F488  38 85 EB F0 */	addi r4, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F48C  93 C1 00 08 */	stw r30, 8(r1)
/* 8048F490  7C 7E 1B 78 */	mr r30, r3
/* 8048F494  7F E3 FB 78 */	mr r3, r31
/* 8048F498  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8048F49C  4B FF EF 65 */	bl aQMgr_trade_give_item
/* 8048F4A0  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F4A4  57 E0 08 3C */	slwi r0, r31, 1
/* 8048F4A8  38 83 EB F0 */	addi r4, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F4AC  7F C3 F3 78 */	mr r3, r30
/* 8048F4B0  7C A4 02 14 */	add r5, r4, r0
/* 8048F4B4  38 80 00 06 */	li r4, 6
/* 8048F4B8  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 8048F4BC  B0 1E 01 E0 */	sth r0, 0x1e0(r30)
/* 8048F4C0  81 9E 09 48 */	lwz r12, 0x948(r30)
/* 8048F4C4  7D 89 03 A6 */	mtctr r12
/* 8048F4C8  4E 80 04 21 */	bctrl 
/* 8048F4CC  4B F3 01 DD */	bl func_803BF6A8
/* 8048F4D0  4B F3 18 71 */	bl mMsg_Set_LockContinue
/* 8048F4D4  38 60 00 0B */	li r3, 0xb
/* 8048F4D8  38 00 00 05 */	li r0, 5
/* 8048F4DC  98 7E 01 85 */	stb r3, 0x185(r30)
/* 8048F4E0  98 1E 01 86 */	stb r0, 0x186(r30)
/* 8048F4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F4E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048F4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F4F0  7C 08 03 A6 */	mtlr r0
/* 8048F4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F4F8  4E 80 00 20 */	blr 
