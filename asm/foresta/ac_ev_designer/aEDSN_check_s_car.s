lbl_8051CF38:
/* 8051CF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CF3C  7C 08 02 A6 */	mflr r0
/* 8051CF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051CF48  7C 7F 1B 78 */	mr r31, r3
/* 8051CF4C  80 63 09 B0 */	lwz r3, 0x9b0(r3)
/* 8051CF50  28 03 00 00 */	cmplwi r3, 0
/* 8051CF54  40 82 00 1C */	bne lbl_8051CF70
/* 8051CF58  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 8051CF5C  38 80 00 63 */	li r4, 0x63
/* 8051CF60  38 A0 00 01 */	li r5, 1
/* 8051CF64  4B E5 8D 7D */	bl Actor_info_name_search
/* 8051CF68  90 7F 09 B0 */	stw r3, 0x9b0(r31)
/* 8051CF6C  48 00 00 30 */	b lbl_8051CF9C
lbl_8051CF70:
/* 8051CF70  A8 03 00 00 */	lha r0, 0(r3)
/* 8051CF74  2C 00 00 63 */	cmpwi r0, 0x63
/* 8051CF78  40 82 00 1C */	bne lbl_8051CF94
/* 8051CF7C  80 03 01 64 */	lwz r0, 0x164(r3)
/* 8051CF80  28 00 00 00 */	cmplwi r0, 0
/* 8051CF84  40 82 00 18 */	bne lbl_8051CF9C
/* 8051CF88  80 03 01 68 */	lwz r0, 0x168(r3)
/* 8051CF8C  28 00 00 00 */	cmplwi r0, 0
/* 8051CF90  40 82 00 0C */	bne lbl_8051CF9C
lbl_8051CF94:
/* 8051CF94  7F E3 FB 78 */	mr r3, r31
/* 8051CF98  4B E5 74 A9 */	bl Actor_delete
lbl_8051CF9C:
/* 8051CF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CFA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051CFA4  7C 08 03 A6 */	mtlr r0
/* 8051CFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CFAC  4E 80 00 20 */	blr 
