lbl_8047CD14:
/* 8047CD14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047CD18  7C 08 02 A6 */	mflr r0
/* 8047CD1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047CD20  39 61 00 30 */	addi r11, r1, 0x30
/* 8047CD24  4B C1 E1 AD */	bl func_8009AED0
/* 8047CD28  7C 9D 23 78 */	mr r29, r4
/* 8047CD2C  3B E3 05 00 */	addi r31, r3, 0x500
/* 8047CD30  80 63 05 00 */	lwz r3, 0x500(r3)
/* 8047CD34  80 04 00 04 */	lwz r0, 4(r4)
/* 8047CD38  7C 03 00 00 */	cmpw r3, r0
/* 8047CD3C  40 82 00 CC */	bne lbl_8047CE08
/* 8047CD40  AB 9D 01 24 */	lha r28, 0x124(r29)
/* 8047CD44  38 60 00 00 */	li r3, 0
/* 8047CD48  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8047CD4C  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8047CD50  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 8047CD54  4B F8 F5 AD */	bl Matrix_translate
/* 8047CD58  A8 1F 00 04 */	lha r0, 4(r31)
/* 8047CD5C  38 80 00 01 */	li r4, 1
/* 8047CD60  7C 00 E0 50 */	subf r0, r0, r28
/* 8047CD64  7C 03 07 34 */	extsh r3, r0
/* 8047CD68  4B F8 F8 F5 */	bl Matrix_RotateY
/* 8047CD6C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8047CD70  38 60 00 01 */	li r3, 1
/* 8047CD74  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 8047CD78  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 8047CD7C  4B F8 F5 85 */	bl Matrix_translate
/* 8047CD80  3B C0 00 00 */	li r30, 0
/* 8047CD84  3B A0 00 00 */	li r29, 0
lbl_8047CD88:
/* 8047CD88  7F 9F EA 14 */	add r28, r31, r29
/* 8047CD8C  80 1C 00 08 */	lwz r0, 8(r28)
/* 8047CD90  2C 00 00 01 */	cmpwi r0, 1
/* 8047CD94  40 82 00 64 */	bne lbl_8047CDF8
/* 8047CD98  38 7C 00 0C */	addi r3, r28, 0xc
/* 8047CD9C  38 81 00 08 */	addi r4, r1, 8
/* 8047CDA0  4B F9 06 65 */	bl Matrix_Position
/* 8047CDA4  80 61 00 08 */	lwz r3, 8(r1)
/* 8047CDA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047CDAC  90 7C 00 20 */	stw r3, 0x20(r28)
/* 8047CDB0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8047CDB4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8047CDB8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 8047CDBC  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8047CDC0  2C 00 FF FF */	cmpwi r0, -1
/* 8047CDC4  41 82 00 34 */	beq lbl_8047CDF8
/* 8047CDC8  1C 80 08 58 */	mulli r4, r0, 0x858
/* 8047CDCC  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047CDD0  80 61 00 08 */	lwz r3, 8(r1)
/* 8047CDD4  38 A5 DF E8 */	addi r5, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047CDD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047CDDC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047CDE0  38 84 00 08 */	addi r4, r4, 8
/* 8047CDE4  7C 85 22 14 */	add r4, r5, r4
/* 8047CDE8  90 64 00 00 */	stw r3, 0(r4)
/* 8047CDEC  90 04 00 04 */	stw r0, 4(r4)
/* 8047CDF0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8047CDF4  90 04 00 08 */	stw r0, 8(r4)
lbl_8047CDF8:
/* 8047CDF8  3B DE 00 01 */	addi r30, r30, 1
/* 8047CDFC  3B BD 00 24 */	addi r29, r29, 0x24
/* 8047CE00  2C 1E 00 04 */	cmpwi r30, 4
/* 8047CE04  41 80 FF 84 */	blt lbl_8047CD88
lbl_8047CE08:
/* 8047CE08  39 61 00 30 */	addi r11, r1, 0x30
/* 8047CE0C  4B C1 E1 11 */	bl func_8009AF1C
/* 8047CE10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047CE14  7C 08 03 A6 */	mtlr r0
/* 8047CE18  38 21 00 30 */	addi r1, r1, 0x30
/* 8047CE1C  4E 80 00 20 */	blr 
