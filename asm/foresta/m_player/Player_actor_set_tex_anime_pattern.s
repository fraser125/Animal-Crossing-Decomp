lbl_804D5544:
/* 804D5544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D5548  7C 08 02 A6 */	mflr r0
/* 804D554C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D5550  39 61 00 20 */	addi r11, r1, 0x20
/* 804D5554  4B BC 59 7D */	bl func_8009AED0
/* 804D5558  7C 7C 1B 78 */	mr r28, r3
/* 804D555C  83 E3 0D B4 */	lwz r31, 0xdb4(r3)
/* 804D5560  7F E3 FB 78 */	mr r3, r31
/* 804D5564  4B F0 4A D9 */	bl mPlib_Get_PlayerEyeTexAnimation_p
/* 804D5568  7C 7E 1B 78 */	mr r30, r3
/* 804D556C  7F E3 FB 78 */	mr r3, r31
/* 804D5570  4B F0 4A F9 */	bl mPlib_Get_PlayerMouthTexAnimation_p
/* 804D5574  28 1E 00 00 */	cmplwi r30, 0
/* 804D5578  7C 7F 1B 78 */	mr r31, r3
/* 804D557C  40 82 00 0C */	bne lbl_804D5588
/* 804D5580  28 1F 00 00 */	cmplwi r31, 0
/* 804D5584  41 82 00 64 */	beq lbl_804D55E8
lbl_804D5588:
/* 804D5588  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804D558C  C0 3C 01 84 */	lfs f1, 0x184(r28)
/* 804D5590  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804D5594  C0 5C 01 7C */	lfs f2, 0x17c(r28)
/* 804D5598  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D559C  4C 40 13 82 */	cror 2, 0, 2
/* 804D55A0  40 82 00 48 */	bne lbl_804D55E8
/* 804D55A4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804D55A8  4C 40 13 82 */	cror 2, 0, 2
/* 804D55AC  40 82 00 3C */	bne lbl_804D55E8
/* 804D55B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D55B4  28 1E 00 00 */	cmplwi r30, 0
/* 804D55B8  FC 00 00 1E */	fctiwz f0, f0
/* 804D55BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D55C0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 804D55C4  41 82 00 10 */	beq lbl_804D55D4
/* 804D55C8  7C 9E E8 AE */	lbzx r4, r30, r29
/* 804D55CC  7F 83 E3 78 */	mr r3, r28
/* 804D55D0  4B FF FE 41 */	bl Player_actor_set_eye_pattern
lbl_804D55D4:
/* 804D55D4  28 1F 00 00 */	cmplwi r31, 0
/* 804D55D8  41 82 00 10 */	beq lbl_804D55E8
/* 804D55DC  7C 9F E8 AE */	lbzx r4, r31, r29
/* 804D55E0  7F 83 E3 78 */	mr r3, r28
/* 804D55E4  4B FF FF 35 */	bl Player_actor_set_mouth_pattern
lbl_804D55E8:
/* 804D55E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804D55EC  4B BC 59 31 */	bl func_8009AF1C
/* 804D55F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D55F4  7C 08 03 A6 */	mtlr r0
/* 804D55F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804D55FC  4E 80 00 20 */	blr 
