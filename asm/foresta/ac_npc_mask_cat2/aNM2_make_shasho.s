lbl_8055FCE8:
/* 8055FCE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055FCEC  7C 08 02 A6 */	mflr r0
/* 8055FCF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055FCF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055FCF8  7C 7F 1B 78 */	mr r31, r3
/* 8055FCFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8055FD00  7C 9E 23 78 */	mr r30, r4
/* 8055FD04  80 03 09 CC */	lwz r0, 0x9cc(r3)
/* 8055FD08  28 00 00 00 */	cmplwi r0, 0
/* 8055FD0C  40 82 00 CC */	bne lbl_8055FDD8
/* 8055FD10  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8055FD14  2C 00 00 12 */	cmpwi r0, 0x12
/* 8055FD18  40 81 00 C0 */	ble lbl_8055FDD8
/* 8055FD1C  80 7F 09 C4 */	lwz r3, 0x9c4(r31)
/* 8055FD20  2C 03 00 00 */	cmpwi r3, 0
/* 8055FD24  41 81 00 AC */	bgt lbl_8055FDD0
/* 8055FD28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FD2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FD30  3C 63 00 02 */	addis r3, r3, 2
/* 8055FD34  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 8055FD38  28 03 00 00 */	cmplwi r3, 0
/* 8055FD3C  41 82 00 9C */	beq lbl_8055FDD8
/* 8055FD40  81 83 00 00 */	lwz r12, 0(r3)
/* 8055FD44  28 0C 00 00 */	cmplwi r12, 0
/* 8055FD48  41 82 00 90 */	beq lbl_8055FDD8
/* 8055FD4C  38 00 00 00 */	li r0, 0
/* 8055FD50  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D07A@ha */
/* 8055FD54  90 01 00 08 */	stw r0, 8(r1)
/* 8055FD58  7F C3 F3 78 */	mr r3, r30
/* 8055FD5C  38 84 D0 7A */	addi r4, r4, 0xD07A /* 0x0000D07A@l */
/* 8055FD60  38 A0 FF FF */	li r5, -1
/* 8055FD64  80 1F 09 C8 */	lwz r0, 0x9c8(r31)
/* 8055FD68  38 C0 FF FF */	li r6, -1
/* 8055FD6C  39 00 FF FF */	li r8, -1
/* 8055FD70  39 20 FF FF */	li r9, -1
/* 8055FD74  7C 07 07 34 */	extsh r7, r0
/* 8055FD78  39 40 00 00 */	li r10, 0
/* 8055FD7C  7D 89 03 A6 */	mtctr r12
/* 8055FD80  4E 80 04 21 */	bctrl 
/* 8055FD84  2C 03 00 01 */	cmpwi r3, 1
/* 8055FD88  40 82 00 50 */	bne lbl_8055FDD8
/* 8055FD8C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D07A@ha */
/* 8055FD90  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8055FD94  38 84 D0 7A */	addi r4, r4, 0xD07A /* 0x0000D07A@l */
/* 8055FD98  38 A0 00 04 */	li r5, 4
/* 8055FD9C  4B E1 5F A5 */	bl Actor_info_fgName_search
/* 8055FDA0  28 03 00 00 */	cmplwi r3, 0
/* 8055FDA4  41 82 00 34 */	beq lbl_8055FDD8
/* 8055FDA8  93 E3 01 4C */	stw r31, 0x14c(r3)
/* 8055FDAC  38 00 2A 30 */	li r0, 0x2a30
/* 8055FDB0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8055FDB4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8055FDB8  90 7F 09 CC */	stw r3, 0x9cc(r31)
/* 8055FDBC  80 7F 09 C8 */	lwz r3, 0x9c8(r31)
/* 8055FDC0  68 63 00 01 */	xori r3, r3, 1
/* 8055FDC4  90 7F 09 C8 */	stw r3, 0x9c8(r31)
/* 8055FDC8  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 8055FDCC  48 00 00 0C */	b lbl_8055FDD8
lbl_8055FDD0:
/* 8055FDD0  38 03 FF FF */	addi r0, r3, -1
/* 8055FDD4  90 1F 09 C4 */	stw r0, 0x9c4(r31)
lbl_8055FDD8:
/* 8055FDD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055FDDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055FDE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8055FDE4  7C 08 03 A6 */	mtlr r0
/* 8055FDE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8055FDEC  4E 80 00 20 */	blr 
