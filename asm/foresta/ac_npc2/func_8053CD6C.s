lbl_8053CD6C:
/* 8053CD6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053CD70  7C 08 02 A6 */	mflr r0
/* 8053CD74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053CD78  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CD7C  4B B5 E1 59 */	bl func_8009AED4
/* 8053CD80  7C 7D 1B 78 */	mr r29, r3
/* 8053CD84  7C 9E 23 78 */	mr r30, r4
/* 8053CD88  88 03 07 C9 */	lbz r0, 0x7c9(r3)
/* 8053CD8C  3B E0 00 00 */	li r31, 0
/* 8053CD90  28 00 00 00 */	cmplwi r0, 0
/* 8053CD94  40 82 00 48 */	bne lbl_8053CDDC
/* 8053CD98  88 1D 08 33 */	lbz r0, 0x833(r29)
/* 8053CD9C  28 00 00 00 */	cmplwi r0, 0
/* 8053CDA0  40 82 00 3C */	bne lbl_8053CDDC
/* 8053CDA4  7F A4 EB 78 */	mr r4, r29
/* 8053CDA8  38 60 00 08 */	li r3, 8
/* 8053CDAC  4B E5 D4 B9 */	bl mDemo_Check
/* 8053CDB0  2C 03 00 00 */	cmpwi r3, 0
/* 8053CDB4  40 82 00 28 */	bne lbl_8053CDDC
/* 8053CDB8  7F A4 EB 78 */	mr r4, r29
/* 8053CDBC  38 60 00 07 */	li r3, 7
/* 8053CDC0  4B E5 D4 A5 */	bl mDemo_Check
/* 8053CDC4  2C 03 00 00 */	cmpwi r3, 0
/* 8053CDC8  40 82 00 14 */	bne lbl_8053CDDC
/* 8053CDCC  38 00 00 01 */	li r0, 1
/* 8053CDD0  3B E0 00 01 */	li r31, 1
/* 8053CDD4  98 1D 07 C9 */	stb r0, 0x7c9(r29)
/* 8053CDD8  93 DD 07 CC */	stw r30, 0x7cc(r29)
lbl_8053CDDC:
/* 8053CDDC  7F E3 FB 78 */	mr r3, r31
/* 8053CDE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CDE4  4B B5 E1 3D */	bl func_8009AF20
/* 8053CDE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053CDEC  7C 08 03 A6 */	mtlr r0
/* 8053CDF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8053CDF4  4E 80 00 20 */	blr 
