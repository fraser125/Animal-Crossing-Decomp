lbl_804EFFA4:
/* 804EFFA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804EFFA8  7C 08 02 A6 */	mflr r0
/* 804EFFAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804EFFB0  39 61 00 50 */	addi r11, r1, 0x50
/* 804EFFB4  4B BA AF 19 */	bl func_8009AECC
/* 804EFFB8  3C E0 80 64 */	lis r7, lit_3046@ha /* 0x80646E54@ha */
/* 804EFFBC  7C 7C 1B 78 */	mr r28, r3
/* 804EFFC0  C0 27 6E 54 */	lfs f1, lit_3046@l(r7)  /* 0x80646E54@l */
/* 804EFFC4  7C 9D 23 78 */	mr r29, r4
/* 804EFFC8  7C BE 2B 78 */	mr r30, r5
/* 804EFFCC  7C DB 33 78 */	mr r27, r6
/* 804EFFD0  38 7C 01 74 */	addi r3, r28, 0x174
/* 804EFFD4  4B FE 76 2D */	bl Player_actor_Check_AnimationFrame
/* 804EFFD8  2C 03 00 00 */	cmpwi r3, 0
/* 804EFFDC  41 82 01 60 */	beq lbl_804F013C
/* 804EFFE0  A3 FE 00 0C */	lhz r31, 0xc(r30)
/* 804EFFE4  38 61 00 0C */	addi r3, r1, 0xc
/* 804EFFE8  80 DE 00 00 */	lwz r6, 0(r30)
/* 804EFFEC  38 81 00 08 */	addi r4, r1, 8
/* 804EFFF0  80 1E 00 04 */	lwz r0, 4(r30)
/* 804EFFF4  38 A1 00 28 */	addi r5, r1, 0x28
/* 804EFFF8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804EFFFC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F0000  80 1E 00 08 */	lwz r0, 8(r30)
/* 804F0004  90 01 00 30 */	stw r0, 0x30(r1)
/* 804F0008  4B EB 53 61 */	bl mFI_Wpos2UtNum
/* 804F000C  2C 03 00 00 */	cmpwi r3, 0
/* 804F0010  41 82 01 2C */	beq lbl_804F013C
/* 804F0014  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804F0018  7F 83 E3 78 */	mr r3, r28
/* 804F001C  80 E1 00 08 */	lwz r7, 8(r1)
/* 804F0020  7F A4 EB 78 */	mr r4, r29
/* 804F0024  7F E5 FB 78 */	mr r5, r31
/* 804F0028  7F C8 F3 78 */	mr r8, r30
/* 804F002C  7F 69 DB 78 */	mr r9, r27
/* 804F0030  4B FF FE 4D */	bl Player_actor_Get_TreeNoToStumpNo
/* 804F0034  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804F0038  38 80 00 00 */	li r4, 0
/* 804F003C  28 00 00 01 */	cmplwi r0, 1
/* 804F0040  7C 7B 1B 78 */	mr r27, r3
/* 804F0044  41 80 00 0C */	blt lbl_804F0050
/* 804F0048  28 00 00 04 */	cmplwi r0, 4
/* 804F004C  40 81 00 40 */	ble lbl_804F008C
lbl_804F0050:
/* 804F0050  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804F0054  28 00 00 70 */	cmplwi r0, 0x70
/* 804F0058  41 80 00 0C */	blt lbl_804F0064
/* 804F005C  28 00 00 73 */	cmplwi r0, 0x73
/* 804F0060  40 81 00 2C */	ble lbl_804F008C
lbl_804F0064:
/* 804F0064  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804F0068  28 00 00 74 */	cmplwi r0, 0x74
/* 804F006C  41 80 00 0C */	blt lbl_804F0078
/* 804F0070  28 00 00 77 */	cmplwi r0, 0x77
/* 804F0074  40 81 00 18 */	ble lbl_804F008C
lbl_804F0078:
/* 804F0078  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804F007C  28 00 00 7B */	cmplwi r0, 0x7b
/* 804F0080  41 80 00 10 */	blt lbl_804F0090
/* 804F0084  28 00 00 7E */	cmplwi r0, 0x7e
/* 804F0088  41 81 00 08 */	bgt lbl_804F0090
lbl_804F008C:
/* 804F008C  38 80 00 01 */	li r4, 1
lbl_804F0090:
/* 804F0090  2C 04 00 00 */	cmpwi r4, 0
/* 804F0094  41 82 00 88 */	beq lbl_804F011C
/* 804F0098  7F 63 DB 78 */	mr r3, r27
/* 804F009C  4B ED 94 E1 */	bl obj_hight_table_item0_nogrow
/* 804F00A0  80 9E 00 00 */	lwz r4, 0(r30)
/* 804F00A4  7C 65 1B 78 */	mr r5, r3
/* 804F00A8  80 1E 00 04 */	lwz r0, 4(r30)
/* 804F00AC  38 61 00 1C */	addi r3, r1, 0x1c
/* 804F00B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F00B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F00B8  80 1E 00 08 */	lwz r0, 8(r30)
/* 804F00BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F00C0  88 85 00 05 */	lbz r4, 5(r5)
/* 804F00C4  88 A5 00 04 */	lbz r5, 4(r5)
/* 804F00C8  7C 84 07 74 */	extsb r4, r4
/* 804F00CC  4B EA 19 D1 */	bl mCoBG_SetPlussOffset
/* 804F00D0  80 DE 00 00 */	lwz r6, 0(r30)
/* 804F00D4  7F 63 DB 78 */	mr r3, r27
/* 804F00D8  80 1E 00 04 */	lwz r0, 4(r30)
/* 804F00DC  38 81 00 10 */	addi r4, r1, 0x10
/* 804F00E0  38 A0 00 01 */	li r5, 1
/* 804F00E4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804F00E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F00EC  80 1E 00 08 */	lwz r0, 8(r30)
/* 804F00F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F00F4  4B EB 77 3D */	bl mFI_SetFG_common
/* 804F00F8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F00FC  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 804F0100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F0104  40 81 00 0C */	ble lbl_804F0110
/* 804F0108  3B 60 00 01 */	li r27, 1
/* 804F010C  48 00 00 08 */	b lbl_804F0114
lbl_804F0110:
/* 804F0110  3B 60 00 02 */	li r27, 2
lbl_804F0114:
/* 804F0114  4B FE 4E 19 */	bl Player_actor_set_viblation_Axe_cut
/* 804F0118  48 00 00 0C */	b lbl_804F0124
lbl_804F011C:
/* 804F011C  3B 60 00 00 */	li r27, 0
/* 804F0120  4B FE 4D CD */	bl Player_actor_set_viblation_Axe_hard
lbl_804F0124:
/* 804F0124  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804F0128  7F A3 EB 78 */	mr r3, r29
/* 804F012C  80 E1 00 08 */	lwz r7, 8(r1)
/* 804F0130  7F E4 FB 78 */	mr r4, r31
/* 804F0134  7F 65 DB 78 */	mr r5, r27
/* 804F0138  4B FE B3 59 */	bl Player_actor_Set_EffectBgTree
lbl_804F013C:
/* 804F013C  39 61 00 50 */	addi r11, r1, 0x50
/* 804F0140  4B BA AD D9 */	bl func_8009AF18
/* 804F0144  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804F0148  7C 08 03 A6 */	mtlr r0
/* 804F014C  38 21 00 50 */	addi r1, r1, 0x50
/* 804F0150  4E 80 00 20 */	blr 
