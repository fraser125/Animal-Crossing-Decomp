lbl_8037A2E0:
/* 8037A2E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037A2E4  7C 08 02 A6 */	mflr r0
/* 8037A2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037A2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037A2F0  4B D2 0B D9 */	bl func_8009AEC8
/* 8037A2F4  3C 80 80 65 */	lis r4, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 8037A2F8  3B 80 00 01 */	li r28, 1
/* 8037A2FC  38 04 F5 DC */	addi r0, r4, mbgm_event_data@l /* 0x8064F5DC@l */
/* 8037A300  7C 7F 1B 78 */	mr r31, r3
/* 8037A304  3B A0 00 00 */	li r29, 0
/* 8037A308  7C 1E 03 78 */	mr r30, r0
lbl_8037A30C:
/* 8037A30C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037A310  3B 60 00 00 */	li r27, 0
/* 8037A314  70 60 00 05 */	andi. r0, r3, 5
/* 8037A318  28 00 00 05 */	cmplwi r0, 5
/* 8037A31C  40 82 00 14 */	bne lbl_8037A330
/* 8037A320  80 1F 00 04 */	lwz r0, 4(r31)
/* 8037A324  2C 00 00 00 */	cmpwi r0, 0
/* 8037A328  41 82 00 08 */	beq lbl_8037A330
/* 8037A32C  3B 60 00 01 */	li r27, 1
lbl_8037A330:
/* 8037A330  70 60 00 0A */	andi. r0, r3, 0xa
/* 8037A334  3B 40 00 00 */	li r26, 0
/* 8037A338  28 00 00 0A */	cmplwi r0, 0xa
/* 8037A33C  40 82 00 14 */	bne lbl_8037A350
/* 8037A340  80 1F 00 08 */	lwz r0, 8(r31)
/* 8037A344  2C 00 00 00 */	cmpwi r0, 0
/* 8037A348  41 82 00 08 */	beq lbl_8037A350
/* 8037A34C  3B 40 00 01 */	li r26, 1
lbl_8037A350:
/* 8037A350  2C 1B 00 00 */	cmpwi r27, 0
/* 8037A354  40 82 00 1C */	bne lbl_8037A370
/* 8037A358  2C 1A 00 00 */	cmpwi r26, 0
/* 8037A35C  41 82 00 14 */	beq lbl_8037A370
/* 8037A360  7F E3 FB 78 */	mr r3, r31
/* 8037A364  7F C4 F3 78 */	mr r4, r30
/* 8037A368  7F 85 E3 78 */	mr r5, r28
/* 8037A36C  4B FF FE 11 */	bl mBGMFieldSchedEv_Info_ps_delete
lbl_8037A370:
/* 8037A370  2C 1B 00 00 */	cmpwi r27, 0
/* 8037A374  41 82 00 1C */	beq lbl_8037A390
/* 8037A378  2C 1A 00 00 */	cmpwi r26, 0
/* 8037A37C  40 82 00 14 */	bne lbl_8037A390
/* 8037A380  7F E3 FB 78 */	mr r3, r31
/* 8037A384  7F C4 F3 78 */	mr r4, r30
/* 8037A388  7F A5 EB 78 */	mr r5, r29
/* 8037A38C  4B FF FE 55 */	bl mBGMFieldSchedEv_Info_ps_make
lbl_8037A390:
/* 8037A390  2C 1B 00 00 */	cmpwi r27, 0
/* 8037A394  41 82 00 68 */	beq lbl_8037A3FC
/* 8037A398  2C 1A 00 00 */	cmpwi r26, 0
/* 8037A39C  41 82 00 60 */	beq lbl_8037A3FC
/* 8037A3A0  88 1E 00 03 */	lbz r0, 3(r30)
/* 8037A3A4  3C 80 80 65 */	lis r4, mbgm_pattern_data@ha /* 0x8064F5B8@ha */
/* 8037A3A8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8037A3AC  38 84 F5 B8 */	addi r4, r4, mbgm_pattern_data@l /* 0x8064F5B8@l */
/* 8037A3B0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8037A3B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 8037A3B8  54 63 10 3A */	slwi r3, r3, 2
/* 8037A3BC  54 00 10 3A */	slwi r0, r0, 2
/* 8037A3C0  7C 84 2A 14 */	add r4, r4, r5
/* 8037A3C4  7C 64 18 2E */	lwzx r3, r4, r3
/* 8037A3C8  7C 04 00 2E */	lwzx r0, r4, r0
/* 8037A3CC  7C 03 00 00 */	cmpw r3, r0
/* 8037A3D0  41 82 00 2C */	beq lbl_8037A3FC
/* 8037A3D4  2C 03 00 00 */	cmpwi r3, 0
/* 8037A3D8  41 82 00 24 */	beq lbl_8037A3FC
/* 8037A3DC  2C 00 00 00 */	cmpwi r0, 0
/* 8037A3E0  41 82 00 1C */	beq lbl_8037A3FC
/* 8037A3E4  88 1E 00 02 */	lbz r0, 2(r30)
/* 8037A3E8  28 00 00 7F */	cmplwi r0, 0x7f
/* 8037A3EC  41 82 00 10 */	beq lbl_8037A3FC
/* 8037A3F0  7F E3 FB 78 */	mr r3, r31
/* 8037A3F4  7F C4 F3 78 */	mr r4, r30
/* 8037A3F8  4B FF FE 95 */	bl mBGMFieldSchedEv_Info_ps_volume_change
lbl_8037A3FC:
/* 8037A3FC  2C 1C 00 00 */	cmpwi r28, 0
/* 8037A400  41 82 00 10 */	beq lbl_8037A410
/* 8037A404  2C 1A 00 00 */	cmpwi r26, 0
/* 8037A408  41 82 00 08 */	beq lbl_8037A410
/* 8037A40C  3B 80 00 00 */	li r28, 0
lbl_8037A410:
/* 8037A410  3B BD 00 01 */	addi r29, r29, 1
/* 8037A414  3B DE 00 08 */	addi r30, r30, 8
/* 8037A418  2C 1D 00 18 */	cmpwi r29, 0x18
/* 8037A41C  3B FF 00 0C */	addi r31, r31, 0xc
/* 8037A420  41 80 FE EC */	blt lbl_8037A30C
/* 8037A424  39 61 00 20 */	addi r11, r1, 0x20
/* 8037A428  4B D2 0A ED */	bl func_8009AF14
/* 8037A42C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037A430  7C 08 03 A6 */	mtlr r0
/* 8037A434  38 21 00 20 */	addi r1, r1, 0x20
/* 8037A438  4E 80 00 20 */	blr 
