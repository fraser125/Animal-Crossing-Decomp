lbl_8057A02C:
/* 8057A02C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A030  7C 08 02 A6 */	mflr r0
/* 8057A034  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A038  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A03C  4B B2 0E 99 */	bl func_8009AED4
/* 8057A040  7C 7D 1B 78 */	mr r29, r3
/* 8057A044  7C 9E 23 78 */	mr r30, r4
/* 8057A048  38 60 00 04 */	li r3, 4
/* 8057A04C  38 80 00 09 */	li r4, 9
/* 8057A050  4B E1 E4 2D */	bl mDemo_Get_OrderValue
/* 8057A054  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057A058  41 82 00 B8 */	beq lbl_8057A110
/* 8057A05C  3B E0 FF FF */	li r31, -1
/* 8057A060  4B E0 94 E1 */	bl func_80383540
/* 8057A064  4B E0 9B 09 */	bl mChoice_Get_ChoseNum
/* 8057A068  2C 03 00 01 */	cmpwi r3, 1
/* 8057A06C  41 82 00 1C */	beq lbl_8057A088
/* 8057A070  40 80 00 24 */	bge lbl_8057A094
/* 8057A074  2C 03 00 00 */	cmpwi r3, 0
/* 8057A078  40 80 00 08 */	bge lbl_8057A080
/* 8057A07C  48 00 00 18 */	b lbl_8057A094
lbl_8057A080:
/* 8057A080  3B E0 00 00 */	li r31, 0
/* 8057A084  48 00 00 10 */	b lbl_8057A094
lbl_8057A088:
/* 8057A088  38 00 00 01 */	li r0, 1
/* 8057A08C  3B E0 00 01 */	li r31, 1
/* 8057A090  90 1D 09 B0 */	stw r0, 0x9b0(r29)
lbl_8057A094:
/* 8057A094  2C 1F FF FF */	cmpwi r31, -1
/* 8057A098  41 82 00 78 */	beq lbl_8057A110
/* 8057A09C  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 8057A0A0  A0 64 00 00 */	lhz r3, 0(r4)
/* 8057A0A4  28 03 20 00 */	cmplwi r3, 0x2000
/* 8057A0A8  41 80 00 2C */	blt lbl_8057A0D4
/* 8057A0AC  28 03 20 FF */	cmplwi r3, 0x20ff
/* 8057A0B0  41 81 00 24 */	bgt lbl_8057A0D4
/* 8057A0B4  38 63 E0 00 */	addi r3, r3, -8192
/* 8057A0B8  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 8057A0BC  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8057A0C0  7C 03 00 50 */	subf r0, r3, r0
/* 8057A0C4  54 00 30 3E */	rotlwi r0, r0, 6
/* 8057A0C8  7C 60 1A 14 */	add r3, r0, r3
/* 8057A0CC  38 03 20 00 */	addi r0, r3, 0x2000
/* 8057A0D0  B0 04 00 00 */	sth r0, 0(r4)
lbl_8057A0D4:
/* 8057A0D4  38 60 00 04 */	li r3, 4
/* 8057A0D8  38 80 00 09 */	li r4, 9
/* 8057A0DC  38 A0 00 00 */	li r5, 0
/* 8057A0E0  4B E1 E3 59 */	bl mDemo_Set_OrderValue
/* 8057A0E4  38 60 00 1B */	li r3, 0x1b
/* 8057A0E8  4B FF E1 95 */	bl aNSC_get_msg_no
/* 8057A0EC  7C 7F 1B 78 */	mr r31, r3
/* 8057A0F0  4B E4 55 B9 */	bl func_803BF6A8
/* 8057A0F4  7F A4 EB 78 */	mr r4, r29
/* 8057A0F8  7F E5 FB 78 */	mr r5, r31
/* 8057A0FC  4B FF E1 C9 */	bl aNSC_Set_continue_msg_num
/* 8057A100  7F A3 EB 78 */	mr r3, r29
/* 8057A104  7F C4 F3 78 */	mr r4, r30
/* 8057A108  38 A0 00 15 */	li r5, 0x15
/* 8057A10C  48 00 23 A9 */	bl aNSC_setupAction
lbl_8057A110:
/* 8057A110  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A114  4B B2 0E 0D */	bl func_8009AF20
/* 8057A118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A11C  7C 08 03 A6 */	mtlr r0
/* 8057A120  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A124  4E 80 00 20 */	blr 
