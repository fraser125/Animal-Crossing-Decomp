lbl_8040ED8C:
/* 8040ED8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040ED90  7C 08 02 A6 */	mflr r0
/* 8040ED94  3C 80 81 1D */	lis r4, zuruKeyCheck@ha /* 0x811CB7AC@ha */
/* 8040ED98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040ED9C  38 04 B7 AC */	addi r0, r4, zuruKeyCheck@l /* 0x811CB7AC@l */
/* 8040EDA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040EDA4  A0 83 04 2E */	lhz r4, 0x42e(r3)
/* 8040EDA8  7C 03 03 78 */	mr r3, r0
/* 8040EDAC  4B FF FC BD */	bl zerucheck_key_check
/* 8040EDB0  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 8040EDB4  3B E3 6F 60 */	addi r31, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 8040EDB8  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8040EDBC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8040EDC0  40 82 00 30 */	bne lbl_8040EDF0
/* 8040EDC4  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8040EDC8  41 82 00 14 */	beq lbl_8040EDDC
/* 8040EDCC  38 60 00 01 */	li r3, 1
/* 8040EDD0  4B FF 9A 69 */	bl padmgr_isConnectedController
/* 8040EDD4  2C 03 00 00 */	cmpwi r3, 0
/* 8040EDD8  40 82 00 18 */	bne lbl_8040EDF0
lbl_8040EDDC:
/* 8040EDDC  3C 60 81 1D */	lis r3, zuruKeyCheck@ha /* 0x811CB7AC@ha */
/* 8040EDE0  38 63 B7 AC */	addi r3, r3, zuruKeyCheck@l /* 0x811CB7AC@l */
/* 8040EDE4  88 03 00 04 */	lbz r0, 4(r3)
/* 8040EDE8  28 00 00 00 */	cmplwi r0, 0
/* 8040EDEC  41 82 00 14 */	beq lbl_8040EE00
lbl_8040EDF0:
/* 8040EDF0  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8040EDF4  60 00 00 01 */	ori r0, r0, 1
/* 8040EDF8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8040EDFC  48 00 00 10 */	b lbl_8040EE0C
lbl_8040EE00:
/* 8040EE00  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8040EE04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8040EE08  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_8040EE0C:
/* 8040EE0C  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8040EE10  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8040EE14  41 82 00 44 */	beq lbl_8040EE58
/* 8040EE18  3C 60 81 1D */	lis r3, zuruKeyCheck@ha /* 0x811CB7AC@ha */
/* 8040EE1C  38 83 B7 AC */	addi r4, r3, zuruKeyCheck@l /* 0x811CB7AC@l */
/* 8040EE20  88 E4 00 00 */	lbz r7, 0(r4)
/* 8040EE24  28 07 00 00 */	cmplwi r7, 0
/* 8040EE28  41 82 00 30 */	beq lbl_8040EE58
/* 8040EE2C  88 04 00 04 */	lbz r0, 4(r4)
/* 8040EE30  28 00 00 00 */	cmplwi r0, 0
/* 8040EE34  40 82 00 24 */	bne lbl_8040EE58
/* 8040EE38  3C 60 80 66 */	lis r3, lit_377@ha /* 0x8065F920@ha */
/* 8040EE3C  89 04 00 01 */	lbz r8, 1(r4)
/* 8040EE40  38 C3 F9 20 */	addi r6, r3, lit_377@l /* 0x8065F920@l */
/* 8040EE44  38 80 00 5A */	li r4, 0x5a
/* 8040EE48  38 60 00 3C */	li r3, 0x3c
/* 8040EE4C  38 A0 00 01 */	li r5, 1
/* 8040EE50  4C C6 31 82 */	crclr 6
/* 8040EE54  4B C5 1F 91 */	bl JW_JUTReport
lbl_8040EE58:
/* 8040EE58  4B FF FE 69 */	bl zurumode_update
/* 8040EE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040EE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040EE64  7C 08 03 A6 */	mtlr r0
/* 8040EE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8040EE6C  4E 80 00 20 */	blr 
