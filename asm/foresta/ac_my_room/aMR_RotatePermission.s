lbl_8047FD3C:
/* 8047FD3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047FD40  7C 08 02 A6 */	mflr r0
/* 8047FD44  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047FD48  39 61 00 40 */	addi r11, r1, 0x40
/* 8047FD4C  4B C1 B1 89 */	bl func_8009AED4
/* 8047FD50  80 C4 00 28 */	lwz r6, 0x28(r4)
/* 8047FD54  7C 7D 1B 78 */	mr r29, r3
/* 8047FD58  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8047FD5C  7C BE 2B 78 */	mr r30, r5
/* 8047FD60  38 61 00 14 */	addi r3, r1, 0x14
/* 8047FD64  38 A1 00 24 */	addi r5, r1, 0x24
/* 8047FD68  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8047FD6C  38 C0 00 00 */	li r6, 0
/* 8047FD70  90 01 00 28 */	stw r0, 0x28(r1)
/* 8047FD74  80 04 00 30 */	lwz r0, 0x30(r4)
/* 8047FD78  38 81 00 10 */	addi r4, r1, 0x10
/* 8047FD7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047FD80  4B FF 12 D1 */	bl aMR_Wpos2PlaceNumber
/* 8047FD84  80 DD 00 08 */	lwz r6, 8(r29)
/* 8047FD88  38 61 00 0C */	addi r3, r1, 0xc
/* 8047FD8C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8047FD90  38 81 00 08 */	addi r4, r1, 8
/* 8047FD94  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 8047FD98  38 A1 00 18 */	addi r5, r1, 0x18
/* 8047FD9C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8047FDA0  81 01 00 14 */	lwz r8, 0x14(r1)
/* 8047FDA4  54 E6 20 36 */	slwi r6, r7, 4
/* 8047FDA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8047FDAC  7F E8 32 14 */	add r31, r8, r6
/* 8047FDB0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8047FDB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047FDB8  88 DD 00 3E */	lbz r6, 0x3e(r29)
/* 8047FDBC  4B FF 12 95 */	bl aMR_Wpos2PlaceNumber
/* 8047FDC0  80 01 00 08 */	lwz r0, 8(r1)
/* 8047FDC4  7F A3 EB 78 */	mr r3, r29
/* 8047FDC8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8047FDCC  7F C4 F3 78 */	mr r4, r30
/* 8047FDD0  54 00 20 36 */	slwi r0, r0, 4
/* 8047FDD4  7F E5 FB 78 */	mr r5, r31
/* 8047FDD8  7F E6 02 14 */	add r31, r6, r0
/* 8047FDDC  7F E6 FB 78 */	mr r6, r31
/* 8047FDE0  4B FF FD 91 */	bl aMR_SearchCompleteObstacle
/* 8047FDE4  2C 03 00 00 */	cmpwi r3, 0
/* 8047FDE8  41 82 00 20 */	beq lbl_8047FE08
/* 8047FDEC  7F A3 EB 78 */	mr r3, r29
/* 8047FDF0  7F C4 F3 78 */	mr r4, r30
/* 8047FDF4  7F E5 FB 78 */	mr r5, r31
/* 8047FDF8  4B FF FE 45 */	bl aMR_SearchFrictionObstacle
/* 8047FDFC  30 03 FF FF */	addic r0, r3, -1
/* 8047FE00  7C 60 19 10 */	subfe r3, r0, r3
/* 8047FE04  48 00 00 08 */	b lbl_8047FE0C
lbl_8047FE08:
/* 8047FE08  38 60 00 00 */	li r3, 0
lbl_8047FE0C:
/* 8047FE0C  39 61 00 40 */	addi r11, r1, 0x40
/* 8047FE10  4B C1 B1 11 */	bl func_8009AF20
/* 8047FE14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047FE18  7C 08 03 A6 */	mtlr r0
/* 8047FE1C  38 21 00 40 */	addi r1, r1, 0x40
/* 8047FE20  4E 80 00 20 */	blr 
