lbl_803F7E48:
/* 803F7E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F7E4C  7C 08 02 A6 */	mflr r0
/* 803F7E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F7E54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F7E58  3B E0 00 00 */	li r31, 0
/* 803F7E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 803F7E60  7C 7E 1B 78 */	mr r30, r3
/* 803F7E64  7C A3 2B 78 */	mr r3, r5
/* 803F7E68  7C 85 23 78 */	mr r5, r4
/* 803F7E6C  38 80 20 00 */	li r4, 0x2000
/* 803F7E70  4B FF F9 A9 */	bl mCD_check_card_common
/* 803F7E74  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 803F7E78  2C 03 00 01 */	cmpwi r3, 1
/* 803F7E7C  38 04 00 01 */	addi r0, r4, 1
/* 803F7E80  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 803F7E84  40 82 00 20 */	bne lbl_803F7EA4
/* 803F7E88  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803F7E8C  38 00 00 00 */	li r0, 0
/* 803F7E90  3B E0 00 01 */	li r31, 1
/* 803F7E94  38 63 00 01 */	addi r3, r3, 1
/* 803F7E98  90 7E 00 18 */	stw r3, 0x18(r30)
/* 803F7E9C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 803F7EA0  48 00 00 24 */	b lbl_803F7EC4
lbl_803F7EA4:
/* 803F7EA4  2C 03 00 00 */	cmpwi r3, 0
/* 803F7EA8  40 82 00 10 */	bne lbl_803F7EB8
/* 803F7EAC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 803F7EB0  2C 00 00 64 */	cmpwi r0, 0x64
/* 803F7EB4  41 80 00 10 */	blt lbl_803F7EC4
lbl_803F7EB8:
/* 803F7EB8  38 00 00 00 */	li r0, 0
/* 803F7EBC  3B E0 FF FF */	li r31, -1
/* 803F7EC0  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_803F7EC4:
/* 803F7EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F7EC8  7F E3 FB 78 */	mr r3, r31
/* 803F7ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F7ED0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F7ED4  7C 08 03 A6 */	mtlr r0
/* 803F7ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F7EDC  4E 80 00 20 */	blr 
