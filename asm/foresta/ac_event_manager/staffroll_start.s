lbl_8041E730:
/* 8041E730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041E734  7C 08 02 A6 */	mflr r0
/* 8041E738  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041E73C  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E740  4B C7 C7 95 */	bl func_8009AED4
/* 8041E744  7C 9E 23 78 */	mr r30, r4
/* 8041E748  7C 7D 1B 78 */	mr r29, r3
/* 8041E74C  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E750  3B E0 00 02 */	li r31, 2
/* 8041E754  4B F7 F4 99 */	bl mEv_check_keep
/* 8041E758  2C 03 00 00 */	cmpwi r3, 0
/* 8041E75C  40 82 00 10 */	bne lbl_8041E76C
/* 8041E760  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E764  4B F7 F4 21 */	bl mEv_set_keep
/* 8041E768  3B E0 00 01 */	li r31, 1
lbl_8041E76C:
/* 8041E76C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041E770  41 82 00 34 */	beq lbl_8041E7A4
/* 8041E774  3C 80 80 68 */	lis r4, b@ha /* 0x80681FD4@ha */
/* 8041E778  3C 60 80 68 */	lis r3, u@ha /* 0x80681FDC@ha */
/* 8041E77C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000D05D@ha */
/* 8041E780  39 00 00 51 */	li r8, 0x51
/* 8041E784  38 A4 1F D4 */	addi r5, r4, b@l /* 0x80681FD4@l */
/* 8041E788  38 C3 1F DC */	addi r6, r3, u@l /* 0x80681FDC@l */
/* 8041E78C  7F A3 EB 78 */	mr r3, r29
/* 8041E790  7F C4 F3 78 */	mr r4, r30
/* 8041E794  38 E7 D0 5D */	addi r7, r7, 0xD05D /* 0x0000D05D@l */
/* 8041E798  4B FF DD 69 */	bl make_actor_in_fixed_block_checkless
/* 8041E79C  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 8041E7A0  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
lbl_8041E7A4:
/* 8041E7A4  7F E3 FB 78 */	mr r3, r31
/* 8041E7A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E7AC  4B C7 C7 75 */	bl func_8009AF20
/* 8041E7B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041E7B4  7C 08 03 A6 */	mtlr r0
/* 8041E7B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041E7BC  4E 80 00 20 */	blr 
