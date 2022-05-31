lbl_8041DFFC:
/* 8041DFFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041E000  7C 08 02 A6 */	mflr r0
/* 8041E004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041E008  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E00C  4B C7 CE C5 */	bl func_8009AED0
/* 8041E010  7C 7C 1B 78 */	mr r28, r3
/* 8041E014  7C 9D 23 78 */	mr r29, r4
/* 8041E018  3B E0 00 02 */	li r31, 2
/* 8041E01C  38 A0 58 26 */	li r5, 0x5826
/* 8041E020  38 C0 00 51 */	li r6, 0x51
/* 8041E024  4B FF DC B9 */	bl make_FG_somewhere_lot4sale
/* 8041E028  7C 60 1B 78 */	mr r0, r3
/* 8041E02C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8041E030  7C 1E 03 78 */	mr r30, r0
/* 8041E034  4B F7 FB B9 */	bl mEv_check_keep
/* 8041E038  2C 03 00 00 */	cmpwi r3, 0
/* 8041E03C  40 82 00 10 */	bne lbl_8041E04C
/* 8041E040  80 7D 00 00 */	lwz r3, 0(r29)
/* 8041E044  4B F7 FB 41 */	bl mEv_set_keep
/* 8041E048  3B E0 00 01 */	li r31, 1
lbl_8041E04C:
/* 8041E04C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041E050  41 82 00 54 */	beq lbl_8041E0A4
/* 8041E054  28 1E 00 00 */	cmplwi r30, 0
/* 8041E058  41 82 00 44 */	beq lbl_8041E09C
/* 8041E05C  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041E060  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000D001@ha */
/* 8041E064  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041E068  7F 83 E3 78 */	mr r3, r28
/* 8041E06C  93 C4 00 00 */	stw r30, 0(r4)
/* 8041E070  7F A4 EB 78 */	mr r4, r29
/* 8041E074  7F C5 F3 78 */	mr r5, r30
/* 8041E078  38 C1 00 08 */	addi r6, r1, 8
/* 8041E07C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8041E080  38 E7 D0 01 */	addi r7, r7, 0xD001 /* 0x0000D001@l */
/* 8041E084  39 00 00 01 */	li r8, 1
/* 8041E088  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041E08C  81 3E 00 08 */	lwz r9, 8(r30)
/* 8041E090  38 09 00 02 */	addi r0, r9, 2
/* 8041E094  90 01 00 08 */	stw r0, 8(r1)
/* 8041E098  4B FF E4 69 */	bl make_actor_in_fixed_block_checkless
lbl_8041E09C:
/* 8041E09C  38 60 00 02 */	li r3, 2
/* 8041E0A0  4B F7 C8 D9 */	bl mEv_EventON
lbl_8041E0A4:
/* 8041E0A4  7F E3 FB 78 */	mr r3, r31
/* 8041E0A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E0AC  4B C7 CE 71 */	bl func_8009AF1C
/* 8041E0B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041E0B4  7C 08 03 A6 */	mtlr r0
/* 8041E0B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041E0BC  4E 80 00 20 */	blr 
