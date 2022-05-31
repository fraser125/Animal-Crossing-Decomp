lbl_804F021C:
/* 804F021C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0220  7C 08 02 A6 */	mflr r0
/* 804F0224  3C A0 80 64 */	lis r5, lit_3046@ha /* 0x80646E54@ha */
/* 804F0228  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F022C  C0 25 6E 54 */	lfs f1, lit_3046@l(r5)  /* 0x80646E54@l */
/* 804F0230  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F0234  7C 9F 23 78 */	mr r31, r4
/* 804F0238  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F023C  7C 7E 1B 78 */	mr r30, r3
/* 804F0240  38 7E 01 74 */	addi r3, r30, 0x174
/* 804F0244  4B FE 73 BD */	bl Player_actor_Check_AnimationFrame
/* 804F0248  2C 03 00 00 */	cmpwi r3, 0
/* 804F024C  41 82 00 9C */	beq lbl_804F02E8
/* 804F0250  4B FF 06 A9 */	bl Player_actor_Get_ItemNoSubmenu
/* 804F0254  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804F0258  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 804F025C  7C 03 00 40 */	cmplw r3, r0
/* 804F0260  41 82 00 88 */	beq lbl_804F02E8
/* 804F0264  7F E3 FB 78 */	mr r3, r31
/* 804F0268  4B FF 06 49 */	bl func_804E08B0
/* 804F026C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F0270  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F0274  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804F0278  38 00 00 00 */	li r0, 0
/* 804F027C  3C A4 00 03 */	addis r5, r4, 3
/* 804F0280  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804F0284  98 05 85 C1 */	stb r0, -0x7a3f(r5)
/* 804F0288  7F C3 F3 78 */	mr r3, r30
/* 804F028C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F0290  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F0294  80 9E 0D B8 */	lwz r4, 0xdb8(r30)
/* 804F0298  38 C1 00 08 */	addi r6, r1, 8
/* 804F029C  4B FE 9C C5 */	bl Player_actor_SetupItem_Base1
/* 804F02A0  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 804F02A4  2C 00 22 3E */	cmpwi r0, 0x223e
/* 804F02A8  41 82 00 20 */	beq lbl_804F02C8
/* 804F02AC  40 80 00 10 */	bge lbl_804F02BC
/* 804F02B0  2C 00 00 00 */	cmpwi r0, 0
/* 804F02B4  41 82 00 2C */	beq lbl_804F02E0
/* 804F02B8  48 00 00 30 */	b lbl_804F02E8
lbl_804F02BC:
/* 804F02BC  2C 00 22 41 */	cmpwi r0, 0x2241
/* 804F02C0  41 82 00 14 */	beq lbl_804F02D4
/* 804F02C4  48 00 00 24 */	b lbl_804F02E8
lbl_804F02C8:
/* 804F02C8  7F C3 F3 78 */	mr r3, r30
/* 804F02CC  4B FE F8 89 */	bl Player_actor_sound_axe_broken1
/* 804F02D0  48 00 00 18 */	b lbl_804F02E8
lbl_804F02D4:
/* 804F02D4  7F C3 F3 78 */	mr r3, r30
/* 804F02D8  4B FE F8 A1 */	bl Player_actor_sound_axe_broken2
/* 804F02DC  48 00 00 0C */	b lbl_804F02E8
lbl_804F02E0:
/* 804F02E0  7F C3 F3 78 */	mr r3, r30
/* 804F02E4  4B FE F8 B9 */	bl Player_actor_sound_axe_broken3
lbl_804F02E8:
/* 804F02E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F02EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F02F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F02F4  7C 08 03 A6 */	mtlr r0
/* 804F02F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F02FC  4E 80 00 20 */	blr 
