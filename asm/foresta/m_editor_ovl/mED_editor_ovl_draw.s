lbl_805DC108:
/* 805DC108  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DC10C  7C 08 02 A6 */	mflr r0
/* 805DC110  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DC114  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC118  4B AB ED BD */	bl func_8009AED4
/* 805DC11C  7C 7D 1B 78 */	mr r29, r3
/* 805DC120  7C 9E 23 78 */	mr r30, r4
/* 805DC124  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC128  3B E5 03 24 */	addi r31, r5, 0x324
/* 805DC12C  81 85 03 34 */	lwz r12, 0x334(r5)
/* 805DC130  7D 89 03 A6 */	mtctr r12
/* 805DC134  4E 80 04 21 */	bctrl 
/* 805DC138  7F A3 EB 78 */	mr r3, r29
/* 805DC13C  7F E4 FB 78 */	mr r4, r31
/* 805DC140  7F C5 F3 78 */	mr r5, r30
/* 805DC144  4B FF FD FD */	bl mED_set_dl
/* 805DC148  80 1F 00 08 */	lwz r0, 8(r31)
/* 805DC14C  2C 00 00 0D */	cmpwi r0, 0xd
/* 805DC150  40 82 00 40 */	bne lbl_805DC190
/* 805DC154  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805DC158  80 63 09 94 */	lwz r3, 0x994(r3)
/* 805DC15C  80 03 01 E4 */	lwz r0, 0x1e4(r3)
/* 805DC160  28 00 00 00 */	cmplwi r0, 0
/* 805DC164  41 82 00 2C */	beq lbl_805DC190
/* 805DC168  80 BE 00 00 */	lwz r5, 0(r30)
/* 805DC16C  3C 00 DE 00 */	lis r0, 0xde00
/* 805DC170  80 85 02 D0 */	lwz r4, 0x2d0(r5)
/* 805DC174  38 64 00 08 */	addi r3, r4, 8
/* 805DC178  90 65 02 D0 */	stw r3, 0x2d0(r5)
/* 805DC17C  90 04 00 00 */	stw r0, 0(r4)
/* 805DC180  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805DC184  80 63 09 94 */	lwz r3, 0x994(r3)
/* 805DC188  80 03 01 E4 */	lwz r0, 0x1e4(r3)
/* 805DC18C  90 04 00 04 */	stw r0, 4(r4)
lbl_805DC190:
/* 805DC190  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC194  4B AB ED 8D */	bl func_8009AF20
/* 805DC198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DC19C  7C 08 03 A6 */	mtlr r0
/* 805DC1A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805DC1A4  4E 80 00 20 */	blr 
