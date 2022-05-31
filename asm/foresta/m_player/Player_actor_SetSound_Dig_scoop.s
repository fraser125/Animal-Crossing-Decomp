lbl_804F7748:
/* 804F7748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F774C  7C 08 02 A6 */	mflr r0
/* 804F7750  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F7754  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7758  4B BA 37 79 */	bl func_8009AED0
/* 804F775C  7C 7C 1B 78 */	mr r28, r3
/* 804F7760  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804F7764  83 BC 0D B4 */	lwz r29, 0xdb4(r28)
/* 804F7768  3B DC 01 74 */	addi r30, r28, 0x174
/* 804F776C  C0 23 6C 44 */	lfs f1, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804F7770  7F C3 F3 78 */	mr r3, r30
/* 804F7774  20 1D 00 58 */	subfic r0, r29, 0x58
/* 804F7778  7C 00 00 34 */	cntlzw r0, r0
/* 804F777C  54 1F D9 7F */	rlwinm. r31, r0, 0x1b, 5, 0x1f
/* 804F7780  41 82 00 0C */	beq lbl_804F778C
/* 804F7784  FC 00 08 90 */	fmr f0, f1
/* 804F7788  48 00 00 0C */	b lbl_804F7794
lbl_804F778C:
/* 804F778C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F7790  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
lbl_804F7794:
/* 804F7794  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804F7798  EC 21 00 2A */	fadds f1, f1, f0
/* 804F779C  C0 04 7E 60 */	lfs f0, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804F77A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 804F77A4  4B FD FE 5D */	bl Player_actor_Check_AnimationFrame
/* 804F77A8  2C 03 00 00 */	cmpwi r3, 0
/* 804F77AC  41 82 00 24 */	beq lbl_804F77D0
/* 804F77B0  2C 1F 00 00 */	cmpwi r31, 0
/* 804F77B4  41 82 00 10 */	beq lbl_804F77C4
/* 804F77B8  7F 83 E3 78 */	mr r3, r28
/* 804F77BC  4B FE 80 E9 */	bl Player_actor_sound_kirikabu_out
/* 804F77C0  48 00 00 10 */	b lbl_804F77D0
lbl_804F77C4:
/* 804F77C4  7F 83 E3 78 */	mr r3, r28
/* 804F77C8  4B FE 7F 91 */	bl Player_actor_sound_scoop1
/* 804F77CC  4B FD D5 7D */	bl Player_actor_set_viblation_Dig_scoop
lbl_804F77D0:
/* 804F77D0  2C 1F 00 00 */	cmpwi r31, 0
/* 804F77D4  41 82 00 28 */	beq lbl_804F77FC
/* 804F77D8  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804F77DC  7F C3 F3 78 */	mr r3, r30
/* 804F77E0  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804F77E4  4B FD FE 1D */	bl Player_actor_Check_AnimationFrame
/* 804F77E8  2C 03 00 00 */	cmpwi r3, 0
/* 804F77EC  41 82 00 10 */	beq lbl_804F77FC
/* 804F77F0  7F 83 E3 78 */	mr r3, r28
/* 804F77F4  4B FE 80 8D */	bl Player_actor_sound_kirikabu_scoop
/* 804F77F8  4B FD D5 8D */	bl Player_actor_set_viblation_Dig_scoop_stump
lbl_804F77FC:
/* 804F77FC  2C 1D 00 56 */	cmpwi r29, 0x56
/* 804F7800  40 82 00 24 */	bne lbl_804F7824
/* 804F7804  3C 80 80 65 */	lis r4, lit_9522@ha /* 0x806484D0@ha */
/* 804F7808  7F C3 F3 78 */	mr r3, r30
/* 804F780C  C0 24 84 D0 */	lfs f1, lit_9522@l(r4)  /* 0x806484D0@l */
/* 804F7810  4B FD FD F1 */	bl Player_actor_Check_AnimationFrame
/* 804F7814  2C 03 00 00 */	cmpwi r3, 0
/* 804F7818  41 82 00 0C */	beq lbl_804F7824
/* 804F781C  7F 83 E3 78 */	mr r3, r28
/* 804F7820  4B FE 7F C9 */	bl Player_actor_sound_ITEM_HORIDASHI
lbl_804F7824:
/* 804F7824  39 61 00 20 */	addi r11, r1, 0x20
/* 804F7828  4B BA 36 F5 */	bl func_8009AF1C
/* 804F782C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F7830  7C 08 03 A6 */	mtlr r0
/* 804F7834  38 21 00 20 */	addi r1, r1, 0x20
/* 804F7838  4E 80 00 20 */	blr 
