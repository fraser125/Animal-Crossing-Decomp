lbl_8053FD9C:
/* 8053FD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FDA0  7C 08 02 A6 */	mflr r0
/* 8053FDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FDA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FDAC  7C 7F 1B 78 */	mr r31, r3
/* 8053FDB0  4B FF F4 01 */	bl aNPC_act_anm_seq
/* 8053FDB4  2C 03 00 00 */	cmpwi r3, 0
/* 8053FDB8  40 82 00 50 */	bne lbl_8053FE08
/* 8053FDBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053FDC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053FDC4  3C 63 00 02 */	addis r3, r3, 2
/* 8053FDC8  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 8053FDCC  28 03 00 00 */	cmplwi r3, 0
/* 8053FDD0  41 82 00 38 */	beq lbl_8053FE08
/* 8053FDD4  81 83 00 04 */	lwz r12, 4(r3)
/* 8053FDD8  7F E3 FB 78 */	mr r3, r31
/* 8053FDDC  80 9F 08 A0 */	lwz r4, 0x8a0(r31)
/* 8053FDE0  38 A0 00 03 */	li r5, 3
/* 8053FDE4  7D 89 03 A6 */	mtctr r12
/* 8053FDE8  4E 80 04 21 */	bctrl 
/* 8053FDEC  2C 03 00 01 */	cmpwi r3, 1
/* 8053FDF0  40 82 00 18 */	bne lbl_8053FE08
/* 8053FDF4  38 60 00 00 */	li r3, 0
/* 8053FDF8  38 00 00 FF */	li r0, 0xff
/* 8053FDFC  98 7F 08 98 */	stb r3, 0x898(r31)
/* 8053FE00  90 7F 08 A0 */	stw r3, 0x8a0(r31)
/* 8053FE04  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8053FE08:
/* 8053FE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FE10  7C 08 03 A6 */	mtlr r0
/* 8053FE14  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FE18  4E 80 00 20 */	blr 
