lbl_803EC234:
/* 803EC234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC238  7C 08 02 A6 */	mflr r0
/* 803EC23C  38 60 00 0F */	li r3, 0xf
/* 803EC240  38 80 00 10 */	li r4, 0x10
/* 803EC244  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC248  4B FB 18 B9 */	bl mEv_check_status
/* 803EC24C  2C 03 00 00 */	cmpwi r3, 0
/* 803EC250  41 82 00 0C */	beq lbl_803EC25C
/* 803EC254  38 60 00 00 */	li r3, 0
/* 803EC258  48 00 00 38 */	b lbl_803EC290
lbl_803EC25C:
/* 803EC25C  38 60 00 0C */	li r3, 0xc
/* 803EC260  38 80 00 10 */	li r4, 0x10
/* 803EC264  4B FB 18 9D */	bl mEv_check_status
/* 803EC268  2C 03 00 00 */	cmpwi r3, 0
/* 803EC26C  41 82 00 0C */	beq lbl_803EC278
/* 803EC270  38 60 00 01 */	li r3, 1
/* 803EC274  48 00 00 1C */	b lbl_803EC290
lbl_803EC278:
/* 803EC278  38 60 00 0E */	li r3, 0xe
/* 803EC27C  38 80 00 10 */	li r4, 0x10
/* 803EC280  4B FB 18 81 */	bl mEv_check_status
/* 803EC284  20 03 00 00 */	subfic r0, r3, 0
/* 803EC288  7C 60 01 10 */	subfe r3, r0, r0
/* 803EC28C  38 63 00 03 */	addi r3, r3, 3
lbl_803EC290:
/* 803EC290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC294  7C 08 03 A6 */	mtlr r0
/* 803EC298  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC29C  4E 80 00 20 */	blr 
