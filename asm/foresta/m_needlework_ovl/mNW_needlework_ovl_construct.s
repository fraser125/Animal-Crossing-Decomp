lbl_805EA930:
/* 805EA930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EA934  7C 08 02 A6 */	mflr r0
/* 805EA938  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EA93C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EA940  93 C1 00 08 */	stw r30, 8(r1)
/* 805EA944  7C 7E 1B 78 */	mr r30, r3
/* 805EA948  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805EA94C  80 1F 09 D8 */	lwz r0, 0x9d8(r31)
/* 805EA950  28 00 00 00 */	cmplwi r0, 0
/* 805EA954  40 82 00 14 */	bne lbl_805EA968
/* 805EA958  38 60 11 40 */	li r3, 0x1140
/* 805EA95C  38 80 00 20 */	li r4, 0x20
/* 805EA960  4B DD 1A C9 */	bl func_803BC428
/* 805EA964  90 7F 09 D8 */	stw r3, 0x9d8(r31)
lbl_805EA968:
/* 805EA968  7F C3 F3 78 */	mr r3, r30
/* 805EA96C  4B FF FE 55 */	bl mNW_needlework_ovl_init
/* 805EA970  7F C3 F3 78 */	mr r3, r30
/* 805EA974  4B FF FD DD */	bl mNW_needlework_ovl_set_proc
/* 805EA978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EA97C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EA980  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EA984  7C 08 03 A6 */	mtlr r0
/* 805EA988  38 21 00 10 */	addi r1, r1, 0x10
/* 805EA98C  4E 80 00 20 */	blr 
