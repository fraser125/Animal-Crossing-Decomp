lbl_80420FD0:
/* 80420FD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80420FD4  7C 08 02 A6 */	mflr r0
/* 80420FD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80420FDC  39 61 00 60 */	addi r11, r1, 0x60
/* 80420FE0  4B C7 9E F5 */	bl func_8009AED4
/* 80420FE4  7C 7D 1B 78 */	mr r29, r3
/* 80420FE8  7C 9E 23 78 */	mr r30, r4
/* 80420FEC  3B E0 00 02 */	li r31, 2
/* 80420FF0  4B F8 3C DD */	bl mFI_GetFieldId
/* 80420FF4  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 80420FF8  41 82 00 0C */	beq lbl_80421004
/* 80420FFC  38 60 00 00 */	li r3, 0
/* 80421000  48 00 00 DC */	b lbl_804210DC
lbl_80421004:
/* 80421004  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421008  4B F7 CB E5 */	bl mEv_check_keep
/* 8042100C  2C 03 00 00 */	cmpwi r3, 0
/* 80421010  40 82 00 10 */	bne lbl_80421020
/* 80421014  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421018  4B F7 CB 6D */	bl mEv_set_keep
/* 8042101C  3B E0 00 01 */	li r31, 1
lbl_80421020:
/* 80421020  2C 1F 00 00 */	cmpwi r31, 0
/* 80421024  41 82 00 B4 */	beq lbl_804210D8
/* 80421028  38 61 00 08 */	addi r3, r1, 8
/* 8042102C  38 80 00 1E */	li r4, 0x1e
/* 80421030  4B FF FD C1 */	bl river_stream
/* 80421034  38 61 00 08 */	addi r3, r1, 8
/* 80421038  38 80 00 1E */	li r4, 0x1e
/* 8042103C  4B FF FE C9 */	bl bridge_stand_river
/* 80421040  2C 03 00 00 */	cmpwi r3, 0
/* 80421044  40 82 00 0C */	bne lbl_80421050
/* 80421048  38 60 00 01 */	li r3, 1
/* 8042104C  48 00 00 90 */	b lbl_804210DC
lbl_80421050:
/* 80421050  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80421054  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80421058  3C 84 00 02 */	addis r4, r4, 2
/* 8042105C  88 04 06 84 */	lbz r0, 0x684(r4)
/* 80421060  54 05 06 7E */	clrlwi r5, r0, 0x19
/* 80421064  7C 05 18 00 */	cmpw r5, r3
/* 80421068  41 80 00 10 */	blt lbl_80421078
/* 8042106C  38 00 00 00 */	li r0, 0
/* 80421070  38 A0 00 00 */	li r5, 0
/* 80421074  98 04 06 84 */	stb r0, 0x684(r4)
lbl_80421078:
/* 80421078  38 03 FF FF */	addi r0, r3, -1
/* 8042107C  7C 65 00 51 */	subf. r3, r5, r0
/* 80421080  40 82 00 14 */	bne lbl_80421094
/* 80421084  88 04 06 84 */	lbz r0, 0x684(r4)
/* 80421088  60 00 00 80 */	ori r0, r0, 0x80
/* 8042108C  98 04 06 84 */	stb r0, 0x684(r4)
/* 80421090  48 00 00 10 */	b lbl_804210A0
lbl_80421094:
/* 80421094  88 04 06 84 */	lbz r0, 0x684(r4)
/* 80421098  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8042109C  98 04 06 84 */	stb r0, 0x684(r4)
lbl_804210A0:
/* 804210A0  54 60 08 3C */	slwi r0, r3, 1
/* 804210A4  38 61 00 08 */	addi r3, r1, 8
/* 804210A8  38 81 00 09 */	addi r4, r1, 9
/* 804210AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D06E@ha */
/* 804210B0  7C E3 00 AE */	lbzx r7, r3, r0
/* 804210B4  7F A3 EB 78 */	mr r3, r29
/* 804210B8  7D 04 00 AE */	lbzx r8, r4, r0
/* 804210BC  7F C4 F3 78 */	mr r4, r30
/* 804210C0  38 A5 D0 6E */	addi r5, r5, 0xD06E /* 0x0000D06E@l */
/* 804210C4  38 C0 00 51 */	li r6, 0x51
/* 804210C8  39 20 00 02 */	li r9, 2
/* 804210CC  4B FF AF D9 */	bl make_actor_in_select_block
/* 804210D0  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 804210D4  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
lbl_804210D8:
/* 804210D8  7F E3 FB 78 */	mr r3, r31
lbl_804210DC:
/* 804210DC  39 61 00 60 */	addi r11, r1, 0x60
/* 804210E0  4B C7 9E 41 */	bl func_8009AF20
/* 804210E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804210E8  7C 08 03 A6 */	mtlr r0
/* 804210EC  38 21 00 60 */	addi r1, r1, 0x60
/* 804210F0  4E 80 00 20 */	blr 