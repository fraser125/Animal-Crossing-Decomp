lbl_804E86B8:
/* 804E86B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E86BC  7C 08 02 A6 */	mflr r0
/* 804E86C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E86C4  7C 87 23 78 */	mr r7, r4
/* 804E86C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E86CC  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E86D0  38 81 00 08 */	addi r4, r1, 8
/* 804E86D4  38 A0 00 02 */	li r5, 2
/* 804E86D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E86DC  7C 7F 1B 78 */	mr r31, r3
/* 804E86E0  39 40 00 00 */	li r10, 0
/* 804E86E4  80 C3 10 E8 */	lwz r6, 0x10e8(r3)
/* 804E86E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E86EC  80 1F 10 EC */	lwz r0, 0x10ec(r31)
/* 804E86F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E86F4  3C 63 00 02 */	addis r3, r3, 2
/* 804E86F8  90 C1 00 08 */	stw r6, 8(r1)
/* 804E86FC  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E8700  38 60 00 2D */	li r3, 0x2d
/* 804E8704  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E8708  80 1F 10 F0 */	lwz r0, 0x10f0(r31)
/* 804E870C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E8710  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804E8714  81 86 00 00 */	lwz r12, 0(r6)
/* 804E8718  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E871C  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 804E8720  7C 09 07 34 */	extsh r9, r0
/* 804E8724  7D 89 03 A6 */	mtctr r12
/* 804E8728  4E 80 04 21 */	bctrl 
/* 804E872C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804E8730  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804E8734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E873C  7C 08 03 A6 */	mtlr r0
/* 804E8740  38 21 00 20 */	addi r1, r1, 0x20
/* 804E8744  4E 80 00 20 */	blr 
