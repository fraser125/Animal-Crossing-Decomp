lbl_8041F1D8:
/* 8041F1D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F1DC  7C 08 02 A6 */	mflr r0
/* 8041F1E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F1E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F1E8  4B C7 BC ED */	bl func_8009AED4
/* 8041F1EC  7C 7D 1B 78 */	mr r29, r3
/* 8041F1F0  7C 9E 23 78 */	mr r30, r4
/* 8041F1F4  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 8041F1F8  3B E0 00 02 */	li r31, 2
/* 8041F1FC  2C 00 00 00 */	cmpwi r0, 0
/* 8041F200  40 82 00 24 */	bne lbl_8041F224
/* 8041F204  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F208  38 80 00 01 */	li r4, 1
/* 8041F20C  4B F7 E8 75 */	bl mEv_clear_status
/* 8041F210  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F214  38 80 00 20 */	li r4, 0x20
/* 8041F218  4B F7 E7 B9 */	bl mEv_set_status
/* 8041F21C  38 60 00 00 */	li r3, 0
/* 8041F220  48 00 00 B8 */	b lbl_8041F2D8
lbl_8041F224:
/* 8041F224  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F228  4B F7 E9 C5 */	bl mEv_check_keep
/* 8041F22C  2C 03 00 00 */	cmpwi r3, 0
/* 8041F230  40 82 00 38 */	bne lbl_8041F268
/* 8041F234  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F238  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F23C  7F A3 EB 78 */	mr r3, r29
/* 8041F240  38 A0 00 01 */	li r5, 1
/* 8041F244  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F248  4B FF E8 35 */	bl title_fade
/* 8041F24C  2C 03 00 00 */	cmpwi r3, 0
/* 8041F250  41 82 00 14 */	beq lbl_8041F264
/* 8041F254  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F258  4B F7 E9 2D */	bl mEv_set_keep
/* 8041F25C  3B E0 00 01 */	li r31, 1
/* 8041F260  48 00 00 08 */	b lbl_8041F268
lbl_8041F264:
/* 8041F264  3B E0 00 00 */	li r31, 0
lbl_8041F268:
/* 8041F268  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F26C  41 82 00 68 */	beq lbl_8041F2D4
/* 8041F270  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8041F274  7F A3 EB 78 */	mr r3, r29
/* 8041F278  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8041F27C  4B FF C9 AD */	bl clean_FG
/* 8041F280  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F284  7F A3 EB 78 */	mr r3, r29
/* 8041F288  7F C4 F3 78 */	mr r4, r30
/* 8041F28C  38 A0 00 05 */	li r5, 5
/* 8041F290  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F294  38 E0 00 05 */	li r7, 5
/* 8041F298  4B FF D5 95 */	bl make_FG_in_reserved_block
/* 8041F29C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F2A0  7F A3 EB 78 */	mr r3, r29
/* 8041F2A4  7F C4 F3 78 */	mr r4, r30
/* 8041F2A8  38 A0 00 06 */	li r5, 6
/* 8041F2AC  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F2B0  38 E0 00 06 */	li r7, 6
/* 8041F2B4  4B FF D5 79 */	bl make_FG_in_reserved_block
/* 8041F2B8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F2BC  7F A3 EB 78 */	mr r3, r29
/* 8041F2C0  7F C4 F3 78 */	mr r4, r30
/* 8041F2C4  38 A0 00 07 */	li r5, 7
/* 8041F2C8  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F2CC  38 E0 00 07 */	li r7, 7
/* 8041F2D0  4B FF D3 C9 */	bl make_actor_in_reserved_block
lbl_8041F2D4:
/* 8041F2D4  7F E3 FB 78 */	mr r3, r31
lbl_8041F2D8:
/* 8041F2D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F2DC  4B C7 BC 45 */	bl func_8009AF20
/* 8041F2E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F2E4  7C 08 03 A6 */	mtlr r0
/* 8041F2E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F2EC  4E 80 00 20 */	blr 
