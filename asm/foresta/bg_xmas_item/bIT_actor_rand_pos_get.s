lbl_804C7244:
/* 804C7244  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C7248  7C 08 02 A6 */	mflr r0
/* 804C724C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C7250  39 61 00 30 */	addi r11, r1, 0x30
/* 804C7254  4B BD 3C 81 */	bl func_8009AED4
/* 804C7258  7C 9E 23 78 */	mr r30, r4
/* 804C725C  7C 7D 1B 78 */	mr r29, r3
/* 804C7260  80 E4 00 00 */	lwz r7, 0(r4)
/* 804C7264  38 61 00 0C */	addi r3, r1, 0xc
/* 804C7268  80 C4 00 04 */	lwz r6, 4(r4)
/* 804C726C  38 81 00 08 */	addi r4, r1, 8
/* 804C7270  80 1E 00 08 */	lwz r0, 8(r30)
/* 804C7274  38 A1 00 10 */	addi r5, r1, 0x10
/* 804C7278  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804C727C  3B E0 00 00 */	li r31, 0
/* 804C7280  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804C7284  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C7288  4B ED E0 E1 */	bl mFI_Wpos2UtNum
/* 804C728C  2C 03 00 00 */	cmpwi r3, 0
/* 804C7290  41 82 00 2C */	beq lbl_804C72BC
/* 804C7294  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804C7298  80 81 00 08 */	lwz r4, 8(r1)
/* 804C729C  4B ED FF E5 */	bl mFI_UtNum2UtFG
/* 804C72A0  28 03 00 00 */	cmplwi r3, 0
/* 804C72A4  41 82 00 18 */	beq lbl_804C72BC
/* 804C72A8  A0 63 00 00 */	lhz r3, 0(r3)
/* 804C72AC  7F A4 EB 78 */	mr r4, r29
/* 804C72B0  7F C5 F3 78 */	mr r5, r30
/* 804C72B4  4B FF FE B1 */	bl bIT_actor_rand_pos_get_plus
/* 804C72B8  3B E0 00 01 */	li r31, 1
lbl_804C72BC:
/* 804C72BC  2C 1F 00 00 */	cmpwi r31, 0
/* 804C72C0  40 82 00 18 */	bne lbl_804C72D8
/* 804C72C4  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C72C8  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804C72CC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804C72D0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804C72D4  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_804C72D8:
/* 804C72D8  7F E3 FB 78 */	mr r3, r31
/* 804C72DC  39 61 00 30 */	addi r11, r1, 0x30
/* 804C72E0  4B BD 3C 41 */	bl func_8009AF20
/* 804C72E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C72E8  7C 08 03 A6 */	mtlr r0
/* 804C72EC  38 21 00 30 */	addi r1, r1, 0x30
/* 804C72F0  4E 80 00 20 */	blr 
