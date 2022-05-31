lbl_8041F00C:
/* 8041F00C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F010  7C 08 02 A6 */	mflr r0
/* 8041F014  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F018  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F01C  4B C7 BE B9 */	bl func_8009AED4
/* 8041F020  7C 7D 1B 78 */	mr r29, r3
/* 8041F024  7C 9E 23 78 */	mr r30, r4
/* 8041F028  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 8041F02C  3B E0 00 02 */	li r31, 2
/* 8041F030  2C 00 00 00 */	cmpwi r0, 0
/* 8041F034  40 82 00 24 */	bne lbl_8041F058
/* 8041F038  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F03C  38 80 00 01 */	li r4, 1
/* 8041F040  4B F7 EA 41 */	bl mEv_clear_status
/* 8041F044  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F048  38 80 00 20 */	li r4, 0x20
/* 8041F04C  4B F7 E9 85 */	bl mEv_set_status
/* 8041F050  38 60 00 00 */	li r3, 0
/* 8041F054  48 00 00 9C */	b lbl_8041F0F0
lbl_8041F058:
/* 8041F058  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F05C  4B F7 EB 91 */	bl mEv_check_keep
/* 8041F060  2C 03 00 00 */	cmpwi r3, 0
/* 8041F064  40 82 00 38 */	bne lbl_8041F09C
/* 8041F068  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F06C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F070  7F A3 EB 78 */	mr r3, r29
/* 8041F074  38 A0 00 01 */	li r5, 1
/* 8041F078  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F07C  4B FF EA 01 */	bl title_fade
/* 8041F080  2C 03 00 00 */	cmpwi r3, 0
/* 8041F084  41 82 00 14 */	beq lbl_8041F098
/* 8041F088  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F08C  4B F7 EA F9 */	bl mEv_set_keep
/* 8041F090  3B E0 00 01 */	li r31, 1
/* 8041F094  48 00 00 08 */	b lbl_8041F09C
lbl_8041F098:
/* 8041F098  3B E0 00 00 */	li r31, 0
lbl_8041F09C:
/* 8041F09C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F0A0  41 82 00 4C */	beq lbl_8041F0EC
/* 8041F0A4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8041F0A8  7F A3 EB 78 */	mr r3, r29
/* 8041F0AC  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8041F0B0  4B FF CB 79 */	bl clean_FG
/* 8041F0B4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F0B8  7F A3 EB 78 */	mr r3, r29
/* 8041F0BC  7F C4 F3 78 */	mr r4, r30
/* 8041F0C0  38 A0 00 06 */	li r5, 6
/* 8041F0C4  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F0C8  38 E0 00 06 */	li r7, 6
/* 8041F0CC  4B FF D7 61 */	bl make_FG_in_reserved_block
/* 8041F0D0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F0D4  7F A3 EB 78 */	mr r3, r29
/* 8041F0D8  7F C4 F3 78 */	mr r4, r30
/* 8041F0DC  38 A0 00 05 */	li r5, 5
/* 8041F0E0  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F0E4  38 E0 00 05 */	li r7, 5
/* 8041F0E8  4B FF D5 B1 */	bl make_actor_in_reserved_block
lbl_8041F0EC:
/* 8041F0EC  7F E3 FB 78 */	mr r3, r31
lbl_8041F0F0:
/* 8041F0F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F0F4  4B C7 BE 2D */	bl func_8009AF20
/* 8041F0F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F0FC  7C 08 03 A6 */	mtlr r0
/* 8041F100  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F104  4E 80 00 20 */	blr 
