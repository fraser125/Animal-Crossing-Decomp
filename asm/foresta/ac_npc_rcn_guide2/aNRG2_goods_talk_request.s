lbl_8057132C:
/* 8057132C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80571330  7C 08 02 A6 */	mflr r0
/* 80571334  90 01 00 34 */	stw r0, 0x34(r1)
/* 80571338  39 61 00 30 */	addi r11, r1, 0x30
/* 8057133C  4B B2 9B 99 */	bl func_8009AED4
/* 80571340  7C 7D 1B 78 */	mr r29, r3
/* 80571344  7C 83 23 78 */	mr r3, r4
/* 80571348  4B E6 82 F9 */	bl get_player_actor_withoutCheck
/* 8057134C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80571350  3B C0 00 00 */	li r30, 0
/* 80571354  41 82 00 A8 */	beq lbl_805713FC
/* 80571358  80 DF 13 98 */	lwz r6, 0x1398(r31)
/* 8057135C  38 61 00 0C */	addi r3, r1, 0xc
/* 80571360  80 1F 13 9C */	lwz r0, 0x139c(r31)
/* 80571364  38 81 00 08 */	addi r4, r1, 8
/* 80571368  38 A1 00 10 */	addi r5, r1, 0x10
/* 8057136C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80571370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571374  80 1F 13 A0 */	lwz r0, 0x13a0(r31)
/* 80571378  90 01 00 18 */	stw r0, 0x18(r1)
/* 8057137C  4B E3 3F ED */	bl mFI_Wpos2UtNum
/* 80571380  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80571384  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80571388  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057138C  80 81 00 08 */	lwz r4, 8(r1)
/* 80571390  3C A5 00 02 */	addis r5, r5, 2
/* 80571394  80 A5 60 60 */	lwz r5, 0x6060(r5)
/* 80571398  81 85 00 04 */	lwz r12, 4(r5)
/* 8057139C  7D 89 03 A6 */	mtctr r12
/* 805713A0  4E 80 04 21 */	bctrl 
/* 805713A4  80 1F 13 8C */	lwz r0, 0x138c(r31)
/* 805713A8  2C 00 00 01 */	cmpwi r0, 1
/* 805713AC  40 82 00 50 */	bne lbl_805713FC
/* 805713B0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805713B4  28 00 40 81 */	cmplwi r0, 0x4081
/* 805713B8  41 82 00 44 */	beq lbl_805713FC
/* 805713BC  28 00 00 00 */	cmplwi r0, 0
/* 805713C0  41 82 00 3C */	beq lbl_805713FC
/* 805713C4  28 00 FF FE */	cmplwi r0, 0xfffe
/* 805713C8  41 82 00 34 */	beq lbl_805713FC
/* 805713CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 805713D0  41 82 00 2C */	beq lbl_805713FC
/* 805713D4  28 00 40 00 */	cmplwi r0, 0x4000
/* 805713D8  41 82 00 24 */	beq lbl_805713FC
/* 805713DC  3C 60 80 57 */	lis r3, aNRG2_set_goods_talk_info@ha /* 0x805712CC@ha */
/* 805713E0  7F A4 EB 78 */	mr r4, r29
/* 805713E4  38 A3 12 CC */	addi r5, r3, aNRG2_set_goods_talk_info@l /* 0x805712CC@l */
/* 805713E8  38 60 00 08 */	li r3, 8
/* 805713EC  4B E2 8D 71 */	bl mDemo_Request
/* 805713F0  38 00 00 00 */	li r0, 0
/* 805713F4  3B C0 00 01 */	li r30, 1
/* 805713F8  90 1D 09 A8 */	stw r0, 0x9a8(r29)
lbl_805713FC:
/* 805713FC  7F C3 F3 78 */	mr r3, r30
/* 80571400  39 61 00 30 */	addi r11, r1, 0x30
/* 80571404  4B B2 9B 1D */	bl func_8009AF20
/* 80571408  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057140C  7C 08 03 A6 */	mtlr r0
/* 80571410  38 21 00 30 */	addi r1, r1, 0x30
/* 80571414  4E 80 00 20 */	blr 
