lbl_8053C7E0:
/* 8053C7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053C7E4  7C 08 02 A6 */	mflr r0
/* 8053C7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053C7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8053C7F0  4B B5 E6 E5 */	bl func_8009AED4
/* 8053C7F4  7C 7D 1B 78 */	mr r29, r3
/* 8053C7F8  3B C0 00 00 */	li r30, 0
/* 8053C7FC  83 E3 01 4C */	lwz r31, 0x14c(r3)
/* 8053C800  38 7D 00 28 */	addi r3, r29, 0x28
/* 8053C804  4B E7 E9 2D */	bl search_position_angleY
/* 8053C808  28 1F 00 00 */	cmplwi r31, 0
/* 8053C80C  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 8053C810  41 82 00 10 */	beq lbl_8053C820
/* 8053C814  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8053C818  7C 04 02 14 */	add r0, r4, r0
/* 8053C81C  7C 04 07 34 */	extsh r4, r0
lbl_8053C820:
/* 8053C820  7C 64 18 50 */	subf r3, r4, r3
/* 8053C824  7C 60 07 35 */	extsh. r0, r3
/* 8053C828  7C 60 07 34 */	extsh r0, r3
/* 8053C82C  7C 60 00 D0 */	neg r3, r0
/* 8053C830  41 80 00 08 */	blt lbl_8053C838
/* 8053C834  7C 03 03 78 */	mr r3, r0
lbl_8053C838:
/* 8053C838  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8053C83C  40 80 00 08 */	bge lbl_8053C844
/* 8053C840  3B C0 00 01 */	li r30, 1
lbl_8053C844:
/* 8053C844  7F C3 F3 78 */	mr r3, r30
/* 8053C848  39 61 00 20 */	addi r11, r1, 0x20
/* 8053C84C  4B B5 E6 D5 */	bl func_8009AF20
/* 8053C850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053C854  7C 08 03 A6 */	mtlr r0
/* 8053C858  38 21 00 20 */	addi r1, r1, 0x20
/* 8053C85C  4E 80 00 20 */	blr 
