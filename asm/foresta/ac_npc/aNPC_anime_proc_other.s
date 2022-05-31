lbl_8052CF1C:
/* 8052CF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052CF20  7C 08 02 A6 */	mflr r0
/* 8052CF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052CF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052CF2C  7C 9F 23 78 */	mr r31, r4
/* 8052CF30  93 C1 00 08 */	stw r30, 8(r1)
/* 8052CF34  7C 7E 1B 78 */	mr r30, r3
/* 8052CF38  4B FF FD D1 */	bl aNPC_check_anime_timing
/* 8052CF3C  2C 03 00 01 */	cmpwi r3, 1
/* 8052CF40  40 82 00 10 */	bne lbl_8052CF50
/* 8052CF44  A0 9F 00 08 */	lhz r4, 8(r31)
/* 8052CF48  7F C3 F3 78 */	mr r3, r30
/* 8052CF4C  48 00 08 79 */	bl func_8052D7C4
lbl_8052CF50:
/* 8052CF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052CF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052CF58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052CF5C  7C 08 03 A6 */	mtlr r0
/* 8052CF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8052CF64  4E 80 00 20 */	blr 
