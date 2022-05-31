lbl_8057EE5C:
/* 8057EE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EE60  7C 08 02 A6 */	mflr r0
/* 8057EE64  3C C0 80 6C */	lis r6, data_806C0A20@ha /* 0x806C0A20@ha */
/* 8057EE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EE6C  39 06 0A 20 */	addi r8, r6, data_806C0A20@l /* 0x806C0A20@l */
/* 8057EE70  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8057EE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057EE78  1C 00 00 05 */	mulli r0, r0, 5
/* 8057EE7C  39 28 00 48 */	addi r9, r8, 0x48
/* 8057EE80  98 A3 09 9E */	stb r5, 0x99e(r3)
/* 8057EE84  38 E8 00 50 */	addi r7, r8, 0x50
/* 8057EE88  7D 29 02 14 */	add r9, r9, r0
/* 8057EE8C  38 C8 00 60 */	addi r6, r8, 0x60
/* 8057EE90  88 09 00 00 */	lbz r0, 0(r9)
/* 8057EE94  38 A8 00 54 */	addi r5, r8, 0x54
/* 8057EE98  7C 7F 1B 78 */	mr r31, r3
/* 8057EE9C  54 00 10 3A */	slwi r0, r0, 2
/* 8057EEA0  7C 07 00 2E */	lwzx r0, r7, r0
/* 8057EEA4  90 03 09 94 */	stw r0, 0x994(r3)
/* 8057EEA8  88 09 00 02 */	lbz r0, 2(r9)
/* 8057EEAC  54 00 10 3A */	slwi r0, r0, 2
/* 8057EEB0  7C 06 00 2E */	lwzx r0, r6, r0
/* 8057EEB4  90 03 09 64 */	stw r0, 0x964(r3)
/* 8057EEB8  88 09 00 03 */	lbz r0, 3(r9)
/* 8057EEBC  98 03 09 A1 */	stb r0, 0x9a1(r3)
/* 8057EEC0  88 09 00 04 */	lbz r0, 4(r9)
/* 8057EEC4  98 03 09 9F */	stb r0, 0x99f(r3)
/* 8057EEC8  88 09 00 01 */	lbz r0, 1(r9)
/* 8057EECC  54 00 10 3A */	slwi r0, r0, 2
/* 8057EED0  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057EED4  7D 89 03 A6 */	mtctr r12
/* 8057EED8  4E 80 04 21 */	bctrl 
/* 8057EEDC  38 00 00 01 */	li r0, 1
/* 8057EEE0  98 1F 09 A2 */	stb r0, 0x9a2(r31)
/* 8057EEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057EEEC  7C 08 03 A6 */	mtlr r0
/* 8057EEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EEF4  4E 80 00 20 */	blr 
