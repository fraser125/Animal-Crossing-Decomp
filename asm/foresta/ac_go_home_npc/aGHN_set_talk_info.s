lbl_80527074:
/* 80527074  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80527078  7C 08 02 A6 */	mflr r0
/* 8052707C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80527080  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80527084  4B EA AE 7D */	bl mNpc_GetNpcLooks
/* 80527088  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052708C  54 65 10 3A */	slwi r5, r3, 2
/* 80527090  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80527094  3C 63 00 03 */	addis r3, r3, 3
/* 80527098  3B E5 32 1B */	addi r31, r5, 0x321b
/* 8052709C  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 805270A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805270A4  41 82 00 28 */	beq lbl_805270CC
/* 805270A8  4B B3 5C 4D */	bl fqrand
/* 805270AC  3C 60 80 65 */	lis r3, data_806491CC@ha /* 0x806491CC@ha */
/* 805270B0  C0 03 91 CC */	lfs f0, data_806491CC@l(r3)  /* 0x806491CC@l */
/* 805270B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805270B8  FC 00 00 1E */	fctiwz f0, f0
/* 805270BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805270C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805270C4  7F E0 FA 14 */	add r31, r0, r31
/* 805270C8  3B FF 00 01 */	addi r31, r31, 1
lbl_805270CC:
/* 805270CC  7F E3 FB 78 */	mr r3, r31
/* 805270D0  4B E7 14 45 */	bl mDemo_Set_msg_num
/* 805270D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805270D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805270DC  7C 08 03 A6 */	mtlr r0
/* 805270E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805270E4  4E 80 00 20 */	blr 
