lbl_8040F004:
/* 8040F004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040F008  7C 08 02 A6 */	mflr r0
/* 8040F00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040F010  39 61 00 20 */	addi r11, r1, 0x20
/* 8040F014  4B C8 BE C1 */	bl func_8009AED4
/* 8040F018  7C 7D 1B 78 */	mr r29, r3
/* 8040F01C  7C 9E 23 78 */	mr r30, r4
/* 8040F020  80 63 01 50 */	lwz r3, 0x150(r3)
/* 8040F024  3B FD 01 74 */	addi r31, r29, 0x174
/* 8040F028  28 03 00 00 */	cmplwi r3, 0
/* 8040F02C  41 82 00 08 */	beq lbl_8040F034
/* 8040F030  4B F6 54 11 */	bl Actor_delete
lbl_8040F034:
/* 8040F034  7F E3 FB 78 */	mr r3, r31
/* 8040F038  4B F6 1A B9 */	bl cKF_SkeletonInfo_R_dt
/* 8040F03C  7F C3 F3 78 */	mr r3, r30
/* 8040F040  38 9D 02 44 */	addi r4, r29, 0x244
/* 8040F044  4B F8 56 25 */	bl ClObjPipe_dt
/* 8040F048  39 61 00 20 */	addi r11, r1, 0x20
/* 8040F04C  4B C8 BE D5 */	bl func_8009AF20
/* 8040F050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040F054  7C 08 03 A6 */	mtlr r0
/* 8040F058  38 21 00 20 */	addi r1, r1, 0x20
/* 8040F05C  4E 80 00 20 */	blr 
