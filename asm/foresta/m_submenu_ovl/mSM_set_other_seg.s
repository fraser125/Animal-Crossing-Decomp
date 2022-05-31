lbl_805EECAC:
/* 805EECAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EECB0  7C 08 02 A6 */	mflr r0
/* 805EECB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EECB8  39 61 00 20 */	addi r11, r1, 0x20
/* 805EECBC  4B AA C2 19 */	bl func_8009AED4
/* 805EECC0  3C 80 80 6D */	lis r4, data_806CE450@ha /* 0x806CE450@ha */
/* 805EECC4  80 03 00 08 */	lwz r0, 8(r3)
/* 805EECC8  3B E4 E4 50 */	addi r31, r4, data_806CE450@l /* 0x806CE450@l */
/* 805EECCC  7C 7D 1B 78 */	mr r29, r3
/* 805EECD0  38 9F 11 94 */	addi r4, r31, 0x1194
/* 805EECD4  7F C4 00 AE */	lbzx r30, r4, r0
/* 805EECD8  57 C0 07 7B */	rlwinm. r0, r30, 0, 0x1d, 0x1d
/* 805EECDC  41 82 00 0C */	beq lbl_805EECE8
/* 805EECE0  38 9F 11 34 */	addi r4, r31, 0x1134
/* 805EECE4  4B FF FF 1D */	bl mSM_ovl_prog_seg
lbl_805EECE8:
/* 805EECE8  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 805EECEC  41 82 00 10 */	beq lbl_805EECFC
/* 805EECF0  7F A3 EB 78 */	mr r3, r29
/* 805EECF4  38 9F 11 54 */	addi r4, r31, 0x1154
/* 805EECF8  4B FF FF 09 */	bl mSM_ovl_prog_seg
lbl_805EECFC:
/* 805EECFC  57 C0 06 F7 */	rlwinm. r0, r30, 0, 0x1b, 0x1b
/* 805EED00  41 82 00 10 */	beq lbl_805EED10
/* 805EED04  7F A3 EB 78 */	mr r3, r29
/* 805EED08  38 9F 11 74 */	addi r4, r31, 0x1174
/* 805EED0C  4B FF FE F5 */	bl mSM_ovl_prog_seg
lbl_805EED10:
/* 805EED10  39 61 00 20 */	addi r11, r1, 0x20
/* 805EED14  4B AA C2 0D */	bl func_8009AF20
/* 805EED18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EED1C  7C 08 03 A6 */	mtlr r0
/* 805EED20  38 21 00 20 */	addi r1, r1, 0x20
/* 805EED24  4E 80 00 20 */	blr 
