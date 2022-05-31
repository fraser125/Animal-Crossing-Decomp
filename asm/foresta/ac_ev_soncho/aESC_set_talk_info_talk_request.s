lbl_805244B0:
/* 805244B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805244B4  7C 08 02 A6 */	mflr r0
/* 805244B8  38 80 00 00 */	li r4, 0
/* 805244BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805244C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805244C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805244C8  7C 7E 1B 78 */	mr r30, r3
/* 805244CC  4B FF FD D9 */	bl aEGH_change_talk_proc
/* 805244D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805244D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805244D8  3C 63 00 02 */	addis r3, r3, 2
/* 805244DC  88 03 13 F2 */	lbz r0, 0x13f2(r3)
/* 805244E0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 805244E4  41 82 00 2C */	beq lbl_80524510
/* 805244E8  4B B3 88 0D */	bl fqrand
/* 805244EC  3C 60 80 65 */	lis r3, lit_561@ha /* 0x80649188@ha */
/* 805244F0  C0 03 91 88 */	lfs f0, lit_561@l(r3)  /* 0x80649188@l */
/* 805244F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805244F8  FC 00 00 1E */	fctiwz f0, f0
/* 805244FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80524500  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80524504  3B E3 2F 44 */	addi r31, r3, 0x2f44
/* 80524508  4B FF FD 35 */	bl aESC_set_day
/* 8052450C  48 00 00 4C */	b lbl_80524558
lbl_80524510:
/* 80524510  4B FF FC 59 */	bl aESC_bitcheck_func
/* 80524514  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80524518  41 82 00 20 */	beq lbl_80524538
/* 8052451C  7F C3 F3 78 */	mr r3, r30
/* 80524520  3B E0 2F 3E */	li r31, 0x2f3e
/* 80524524  38 80 00 01 */	li r4, 1
/* 80524528  4B FF FD 7D */	bl aEGH_change_talk_proc
/* 8052452C  38 00 00 00 */	li r0, 0
/* 80524530  98 1E 09 95 */	stb r0, 0x995(r30)
/* 80524534  48 00 00 24 */	b lbl_80524558
lbl_80524538:
/* 80524538  4B FF FF 15 */	bl aESC_time_talk
/* 8052453C  7C 60 1B 78 */	mr r0, r3
/* 80524540  7F C3 F3 78 */	mr r3, r30
/* 80524544  7C 1F 03 78 */	mr r31, r0
/* 80524548  38 80 00 01 */	li r4, 1
/* 8052454C  4B FF FD 59 */	bl aEGH_change_talk_proc
/* 80524550  38 00 00 01 */	li r0, 1
/* 80524554  98 1E 09 95 */	stb r0, 0x995(r30)
lbl_80524558:
/* 80524558  7F E3 FB 78 */	mr r3, r31
/* 8052455C  4B E7 3F B9 */	bl mDemo_Set_msg_num
/* 80524560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80524564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80524568  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052456C  7C 08 03 A6 */	mtlr r0
/* 80524570  38 21 00 20 */	addi r1, r1, 0x20
/* 80524574  4E 80 00 20 */	blr 
