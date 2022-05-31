lbl_8057FC40:
/* 8057FC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FC44  7C 08 02 A6 */	mflr r0
/* 8057FC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FC50  7C 7F 1B 78 */	mr r31, r3
/* 8057FC54  80 A3 09 98 */	lwz r5, 0x998(r3)
/* 8057FC58  28 05 00 00 */	cmplwi r5, 0
/* 8057FC5C  41 82 00 18 */	beq lbl_8057FC74
/* 8057FC60  80 05 02 B4 */	lwz r0, 0x2b4(r5)
/* 8057FC64  2C 00 00 05 */	cmpwi r0, 5
/* 8057FC68  40 82 00 0C */	bne lbl_8057FC74
/* 8057FC6C  38 A0 00 0E */	li r5, 0xe
/* 8057FC70  48 00 07 35 */	bl aSTM_setup_think_proc
lbl_8057FC74:
/* 8057FC74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057FC78  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057FC7C  3C 63 00 03 */	addis r3, r3, 3
/* 8057FC80  88 03 88 7D */	lbz r0, -0x7783(r3)
/* 8057FC84  28 00 00 01 */	cmplwi r0, 1
/* 8057FC88  40 82 00 10 */	bne lbl_8057FC98
/* 8057FC8C  7F E3 FB 78 */	mr r3, r31
/* 8057FC90  38 80 00 3F */	li r4, 0x3f
/* 8057FC94  4B FF F9 E1 */	bl func_8057F674
lbl_8057FC98:
/* 8057FC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FCA0  7C 08 03 A6 */	mtlr r0
/* 8057FCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FCA8  4E 80 00 20 */	blr 
