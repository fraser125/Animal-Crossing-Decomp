lbl_8052B204:
/* 8052B204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B208  7C 08 02 A6 */	mflr r0
/* 8052B20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B214  7C 9F 23 78 */	mr r31, r4
/* 8052B218  38 80 00 07 */	li r4, 7
/* 8052B21C  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B220  7C 7E 1B 78 */	mr r30, r3
/* 8052B224  38 60 00 01 */	li r3, 1
/* 8052B228  4B E7 2B A5 */	bl mEv_get_save_area
/* 8052B22C  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8052B230  28 03 00 00 */	cmplwi r3, 0
/* 8052B234  3C E4 FF FF */	addis r7, r4, 0xffff
/* 8052B238  38 E7 2F A8 */	addi r7, r7, 0x2fa8
/* 8052B23C  41 82 00 44 */	beq lbl_8052B280
/* 8052B240  A0 03 00 00 */	lhz r0, 0(r3)
/* 8052B244  28 00 00 01 */	cmplwi r0, 1
/* 8052B248  40 82 00 38 */	bne lbl_8052B280
/* 8052B24C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8052B250  3C A0 80 6A */	lis r5, root_table@ha /* 0x806A1320@ha */
/* 8052B254  3C 80 80 6A */	lis r4, proc_idx_table@ha /* 0x806A1324@ha */
/* 8052B258  7F C3 F3 78 */	mr r3, r30
/* 8052B25C  60 00 00 10 */	ori r0, r0, 0x10
/* 8052B260  38 C5 13 20 */	addi r6, r5, root_table@l /* 0x806A1320@l */
/* 8052B264  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8052B268  38 A4 13 24 */	addi r5, r4, proc_idx_table@l /* 0x806A1324@l */
/* 8052B26C  7F E4 FB 78 */	mr r4, r31
/* 8052B270  7C 06 38 AE */	lbzx r0, r6, r7
/* 8052B274  98 1E 09 A8 */	stb r0, 0x9a8(r30)
/* 8052B278  7C A5 38 AE */	lbzx r5, r5, r7
/* 8052B27C  48 00 07 CD */	bl aHN0_setup_think_proc
lbl_8052B280:
/* 8052B280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B288  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B28C  7C 08 03 A6 */	mtlr r0
/* 8052B290  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B294  4E 80 00 20 */	blr 
