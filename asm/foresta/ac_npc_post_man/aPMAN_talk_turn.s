lbl_8056E720:
/* 8056E720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056E724  7C 08 02 A6 */	mflr r0
/* 8056E728  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056E72C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E730  4B B2 C7 A5 */	bl func_8009AED4
/* 8056E734  7C 7D 1B 78 */	mr r29, r3
/* 8056E738  7C 9E 23 78 */	mr r30, r4
/* 8056E73C  A8 83 00 B6 */	lha r4, 0xb6(r3)
/* 8056E740  3B FD 00 DE */	addi r31, r29, 0xde
/* 8056E744  7F E3 FB 78 */	mr r3, r31
/* 8056E748  38 A0 04 00 */	li r5, 0x400
/* 8056E74C  4B E4 C3 F9 */	bl chase_angle
/* 8056E750  2C 03 00 01 */	cmpwi r3, 1
/* 8056E754  40 82 00 14 */	bne lbl_8056E768
/* 8056E758  7F A3 EB 78 */	mr r3, r29
/* 8056E75C  7F C4 F3 78 */	mr r4, r30
/* 8056E760  38 A0 00 0A */	li r5, 0xa
/* 8056E764  48 00 05 6D */	bl aPMAN_setupAction
lbl_8056E768:
/* 8056E768  A8 1F 00 00 */	lha r0, 0(r31)
/* 8056E76C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E770  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8056E774  4B B2 C7 AD */	bl func_8009AF20
/* 8056E778  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056E77C  7C 08 03 A6 */	mtlr r0
/* 8056E780  38 21 00 20 */	addi r1, r1, 0x20
/* 8056E784  4E 80 00 20 */	blr 
