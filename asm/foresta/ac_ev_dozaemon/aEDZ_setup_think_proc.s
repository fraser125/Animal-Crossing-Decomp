lbl_8051EE3C:
/* 8051EE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EE40  7C 08 02 A6 */	mflr r0
/* 8051EE44  3C C0 80 6A */	lis r6, data_806A0508@ha /* 0x806A0508@ha */
/* 8051EE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EE4C  39 06 05 08 */	addi r8, r6, data_806A0508@l /* 0x806A0508@l */
/* 8051EE50  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8051EE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051EE58  1C 00 00 05 */	mulli r0, r0, 5
/* 8051EE5C  39 28 00 50 */	addi r9, r8, 0x50
/* 8051EE60  98 A3 09 A2 */	stb r5, 0x9a2(r3)
/* 8051EE64  38 E8 00 6C */	addi r7, r8, 0x6c
/* 8051EE68  7D 29 02 14 */	add r9, r9, r0
/* 8051EE6C  38 C8 00 88 */	addi r6, r8, 0x88
/* 8051EE70  88 09 00 00 */	lbz r0, 0(r9)
/* 8051EE74  38 A8 00 74 */	addi r5, r8, 0x74
/* 8051EE78  7C 7F 1B 78 */	mr r31, r3
/* 8051EE7C  54 00 10 3A */	slwi r0, r0, 2
/* 8051EE80  7C 07 00 2E */	lwzx r0, r7, r0
/* 8051EE84  90 03 09 94 */	stw r0, 0x994(r3)
/* 8051EE88  88 09 00 02 */	lbz r0, 2(r9)
/* 8051EE8C  54 00 10 3A */	slwi r0, r0, 2
/* 8051EE90  7C 06 00 2E */	lwzx r0, r6, r0
/* 8051EE94  90 03 09 64 */	stw r0, 0x964(r3)
/* 8051EE98  88 09 00 03 */	lbz r0, 3(r9)
/* 8051EE9C  98 03 09 A5 */	stb r0, 0x9a5(r3)
/* 8051EEA0  88 09 00 04 */	lbz r0, 4(r9)
/* 8051EEA4  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 8051EEA8  88 09 00 01 */	lbz r0, 1(r9)
/* 8051EEAC  54 00 10 3A */	slwi r0, r0, 2
/* 8051EEB0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8051EEB4  7D 89 03 A6 */	mtctr r12
/* 8051EEB8  4E 80 04 21 */	bctrl 
/* 8051EEBC  38 00 00 01 */	li r0, 1
/* 8051EEC0  98 1F 09 A6 */	stb r0, 0x9a6(r31)
/* 8051EEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EEC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051EECC  7C 08 03 A6 */	mtlr r0
/* 8051EED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EED4  4E 80 00 20 */	blr 
